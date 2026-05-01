package com.jzo2o.foundations.utils;

import org.junit.jupiter.api.Test;

import java.time.Duration;
import java.util.HashSet;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;

class CacheTtlJitterUtilTest {

    @Test
    void shouldReturnBaseTtlWhenJitterIsDisabled() {
        Duration baseTtl = Duration.ofMinutes(10);

        assertEquals(baseTtl, CacheTtlJitterUtil.addJitter(baseTtl, 0));
        assertEquals(baseTtl, CacheTtlJitterUtil.addJitter(baseTtl, -1));
    }

    @Test
    void shouldKeepTtlWithinExpectedRange() {
        Duration baseTtl = Duration.ofMinutes(10);
        long maxJitterSeconds = 120L;
        Set<Duration> durations = new HashSet<>();

        for (int i = 0; i < 200; i++) {
            Duration result = CacheTtlJitterUtil.addJitter(baseTtl, maxJitterSeconds);
            durations.add(result);
            assertTrue(!result.minus(baseTtl).isNegative());
            assertTrue(result.compareTo(baseTtl.plusSeconds(maxJitterSeconds)) <= 0);
        }

        assertTrue(durations.size() > 1);
    }
}
