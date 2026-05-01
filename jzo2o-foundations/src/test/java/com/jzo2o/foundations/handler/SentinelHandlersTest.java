package com.jzo2o.foundations.handler;

import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.assertNotNull;
import static org.junit.jupiter.api.Assertions.assertEquals;

class SentinelHandlersTest {

    @Test
    void blockHandlersShouldReturnSentinelMarkers() {
        List<?> serveCategory = SentinelBlockHandlers.handleServeCategoryBlock(1L, null);
        List<?> hotServe = SentinelBlockHandlers.handleHotServeBlock(1L, null);
        List<?> serveType = SentinelBlockHandlers.handleServeTypeBlock(1L, null);
        List<?> search = SentinelBlockHandlers.handleServeSearchBlock("010", null, "keyword", null);

        assertNotNull(serveCategory);
        assertNotNull(hotServe);
        assertNotNull(serveType);
        assertNotNull(search);
        assertEquals(1, serveCategory.size());
        assertEquals(1, hotServe.size());
        assertEquals(1, serveType.size());
        assertEquals(1, search.size());
    }

    @Test
    void fallbackHandlersShouldReturnSentinelMarkers() {
        List<?> blocked = SentinelFallbackHandlers.handleServeSearchBlock("010", null, "keyword", null);
        List<?> fallback = SentinelFallbackHandlers.serveSearchFallback("010", null, "keyword", new RuntimeException("es fail"));

        assertNotNull(blocked);
        assertNotNull(fallback);
        assertEquals(1, blocked.size());
        assertEquals(1, fallback.size());
    }
}
