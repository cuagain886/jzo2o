package com.jzo2o.foundations.handler;

import com.jzo2o.foundations.model.domain.Serve;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.ArgumentCaptor;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.test.util.ReflectionTestUtils;

import java.time.Duration;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertSame;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.anyLong;
import static org.mockito.ArgumentMatchers.anyString;
import static org.mockito.ArgumentMatchers.eq;
import static org.mockito.Mockito.never;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class CacheRebuildHelperTest {

    @Mock
    private RedisTemplate<String, Object> redisTemplate;

    @Mock
    private ValueOperations<String, Object> valueOperations;

    private CacheRebuildHelper cacheRebuildHelper;

    @BeforeEach
    void setUp() {
        cacheRebuildHelper = new CacheRebuildHelper();
        ReflectionTestUtils.setField(cacheRebuildHelper, "redisTemplate", redisTemplate);
        when(redisTemplate.opsForValue()).thenReturn(valueOperations);
    }

    @Test
    void shouldReturnCachedValueWithoutLoadingDb() {
        Serve cachedServe = new Serve();
        cachedServe.setId(1L);
        AtomicInteger dbLoadCounter = new AtomicInteger();

        when(valueOperations.get("cache")).thenReturn(cachedServe);

        Serve result = cacheRebuildHelper.queryWithMutex(
                "cache",
                "lock",
                Duration.ofDays(1),
                7200L,
                Duration.ofSeconds(10),
                () -> {
                    dbLoadCounter.incrementAndGet();
                    return new Serve();
                },
                Serve::new,
                true,
                Duration.ofMinutes(10),
                120L
        );

        assertSame(cachedServe, result);
        assertEquals(0, dbLoadCounter.get());
        verify(valueOperations, never()).setIfAbsent(anyString(), anyString(), anyLong(), any(TimeUnit.class));
    }

    @Test
    void shouldLoadDbAndWriteCacheWithJitteredTtlWhenLockAcquired() {
        AtomicReference<String> lockValueRef = new AtomicReference<>();
        Serve dbServe = new Serve();
        dbServe.setId(2L);

        when(valueOperations.get("cache")).thenReturn(null, null);
        when(valueOperations.setIfAbsent(eq("lock"), anyString(), eq(10L), eq(TimeUnit.SECONDS)))
                .thenAnswer(invocation -> {
                    lockValueRef.set(invocation.getArgument(1));
                    return true;
                });
        when(valueOperations.get("lock")).thenAnswer(invocation -> lockValueRef.get());

        Serve result = cacheRebuildHelper.queryWithMutex(
                "cache",
                "lock",
                Duration.ofDays(1),
                TimeUnit.HOURS.toSeconds(2),
                Duration.ofSeconds(10),
                () -> dbServe,
                Serve::new,
                true,
                Duration.ofMinutes(10),
                120L
        );

        ArgumentCaptor<Duration> ttlCaptor = ArgumentCaptor.forClass(Duration.class);
        verify(valueOperations).set(eq("cache"), eq(dbServe), ttlCaptor.capture());
        verify(redisTemplate).delete("lock");

        Duration realTtl = ttlCaptor.getValue();
        assertSame(dbServe, result);
        assertTrue(realTtl.compareTo(Duration.ofDays(1)) >= 0);
        assertTrue(realTtl.compareTo(Duration.ofDays(1).plusHours(2)) <= 0);
    }

    @Test
    void shouldRetryCacheWhenLockNotAcquiredWithoutLoadingDb() {
        Serve cachedAfterRetry = new Serve();
        cachedAfterRetry.setId(3L);
        AtomicInteger dbLoadCounter = new AtomicInteger();

        when(valueOperations.get("cache")).thenReturn(null, cachedAfterRetry);
        when(valueOperations.setIfAbsent(eq("lock"), anyString(), eq(10L), eq(TimeUnit.SECONDS))).thenReturn(false);

        Serve result = cacheRebuildHelper.queryWithMutex(
                "cache",
                "lock",
                Duration.ofDays(1),
                7200L,
                Duration.ofSeconds(10),
                () -> {
                    dbLoadCounter.incrementAndGet();
                    return new Serve();
                },
                Serve::new,
                true,
                Duration.ofMinutes(10),
                120L
        );

        assertSame(cachedAfterRetry, result);
        assertEquals(0, dbLoadCounter.get());
        verify(valueOperations, never()).set(eq("cache"), any(), any(Duration.class));
    }

    @Test
    void shouldCacheEmptyValueWithShortJitteredTtlWhenDbReturnsNull() {
        AtomicReference<String> lockValueRef = new AtomicReference<>();
        Serve emptyPlaceholder = new Serve();

        when(valueOperations.get("cache")).thenReturn(null, null);
        when(valueOperations.setIfAbsent(eq("lock"), anyString(), eq(10L), eq(TimeUnit.SECONDS)))
                .thenAnswer(invocation -> {
                    lockValueRef.set(invocation.getArgument(1));
                    return true;
                });
        when(valueOperations.get("lock")).thenAnswer(invocation -> lockValueRef.get());

        Serve result = cacheRebuildHelper.queryWithMutex(
                "cache",
                "lock",
                Duration.ofDays(1),
                7200L,
                Duration.ofSeconds(10),
                () -> null,
                () -> emptyPlaceholder,
                true,
                Duration.ofMinutes(10),
                120L
        );

        ArgumentCaptor<Duration> ttlCaptor = ArgumentCaptor.forClass(Duration.class);
        verify(valueOperations).set(eq("cache"), eq(emptyPlaceholder), ttlCaptor.capture());

        Duration realTtl = ttlCaptor.getValue();
        assertSame(emptyPlaceholder, result);
        assertTrue(realTtl.compareTo(Duration.ofMinutes(10)) >= 0);
        assertTrue(realTtl.compareTo(Duration.ofMinutes(12)) <= 0);
    }
}
