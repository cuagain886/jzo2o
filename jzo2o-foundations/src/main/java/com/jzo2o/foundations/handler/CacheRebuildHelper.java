package com.jzo2o.foundations.handler;


import com.jzo2o.foundations.utils.CacheTtlJitterUtil;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import java.util.UUID;
import java.util.concurrent.TimeUnit;
import java.util.function.Supplier;

import javax.annotation.Resource;
import java.time.Duration;

@Component
public class CacheRebuildHelper {
    /**
     * 抢不到锁时，线程每次等待的时间。
     */
    private static final long RETRY_SLEEP_MILLIS = 50L;

    /**
     * 抢不到锁时，最多重试次数。
     */
    private static final int MAX_RETRY_TIMES = 5;

    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    public <T>T queryWithMutex(
            String cacheKey,
            String lockKey,
            Duration cacheTtl,
            long cacheJitterSeconds,
            Duration lockTtl,
            Supplier<T> dbLoader,
            Supplier<T>emptyValueSupplier,
            boolean cacheEmptyValue,
            Duration emptyValueTtl,
            long emptyValueJitterSeconds
    ){
        // 1. 先查缓存，命中直接返回
        Object cacheValue = redisTemplate.opsForValue().get(cacheKey);
        if(cacheValue != null){
            return (T)cacheValue;
        }
        // 2. 缓存没命中，尝试抢锁
        String lockValue= UUID.randomUUID().toString();
        boolean locked=tryLock(lockKey,lockValue,lockTtl);

        if(locked){
            try{
                // 3. 抢到锁后再查一次缓存，避免重复重建
                Object secondCahceValue = redisTemplate.opsForValue().get(cacheKey);
                if(secondCahceValue != null){
                    return (T)secondCahceValue;
                }

                // 4. 只有一个线程真正回源数据库
                T dbValue=dbLoader.get();

                // 5. 数据库没数据时，可选写入短 TTL 负缓存
                if(dbValue == null){
                    if(cacheEmptyValue){
                        T emptyValue=emptyValueSupplier.get();
                        Duration realEmptyTtl= CacheTtlJitterUtil.addJitter(emptyValueTtl, emptyValueJitterSeconds);
                        redisTemplate.opsForValue().set(cacheKey, emptyValue,realEmptyTtl);
                        return emptyValue;
                    }
                    return null;
                }

                // 6. 查到正常数据后写入缓存
                Duration realCacheTtl = CacheTtlJitterUtil.addJitter(cacheTtl, cacheJitterSeconds);
                redisTemplate.opsForValue().set(cacheKey, dbValue,realCacheTtl);
                return dbValue;
            }finally{
                unLock(lockKey,lockValue);
            }
        }

        for(int i=0;i<MAX_RETRY_TIMES;i++){
            sleep(RETRY_SLEEP_MILLIS);
            Object retryCacheValue=redisTemplate.opsForValue().get(cacheKey);
            if(retryCacheValue != null){
                return (T)retryCacheValue;
            }
        }

        return emptyValueSupplier.get();
    }

    private boolean tryLock(String lockKey, String lockValue, Duration lockTtl) {
        Boolean success=redisTemplate.opsForValue().setIfAbsent(lockKey, lockValue, lockTtl.getSeconds(), TimeUnit.SECONDS);
        return Boolean.TRUE.equals(success);
    }

    private void unLock(String lockKey,String lockValue) {
        Object currentLockValue=redisTemplate.opsForValue().get(lockKey);
        if(lockValue.equals(currentLockValue)){
            redisTemplate.delete(lockKey);
        }
    }

    private void sleep(long millis) {
        try{
            Thread.sleep(millis);
        }catch(InterruptedException e){
            Thread.currentThread().interrupt();
        }
    }
}
