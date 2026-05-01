package com.jzo2o.foundations.utils;

import java.time.Duration;
import java.util.concurrent.ThreadLocalRandom;

public class CacheTtlJitterUtil {
    public static Duration addJitter(Duration baseTtl, long maxJitterSeconds) {
        if(baseTtl == null || baseTtl.isZero() || baseTtl.isNegative() || maxJitterSeconds <= 0){
            return baseTtl;
        }
        long jitterSeconds= ThreadLocalRandom.current().nextLong(maxJitterSeconds+1);
        return baseTtl.plusSeconds(jitterSeconds);
    }
}
