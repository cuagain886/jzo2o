package com.jzo2o.foundations.handler;


import com.jzo2o.foundations.utils.CacheTtlJitterUtil;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.time.Duration;

@Component
public class CacheWriteHelper {
    @Resource
    private RedisTemplate<String, Object> redisTemplate;

    public void put(String cacheKey, Object value, Duration baseTtl,long maxJitterSeconds){
        Duration realTtl= CacheTtlJitterUtil.addJitter(baseTtl,maxJitterSeconds);
        redisTemplate.opsForValue().set(cacheKey, value,realTtl);
    }

    public void delete(String cacheKey){
        redisTemplate.delete(cacheKey);
    }
}
