package com.jzo2o.foundations.controller.consumer;

import com.alibaba.csp.sentinel.annotation.SentinelResource;
import com.jzo2o.foundations.handler.SentinelBlockHandlers;
import com.jzo2o.foundations.handler.SentinelFallbackHandlers;
import com.jzo2o.foundations.service.impl.ServeAggregationServiceImpl;
import org.junit.jupiter.api.Test;

import java.lang.reflect.Method;

import static org.junit.jupiter.api.Assertions.assertArrayEquals;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

class SentinelResourceAnnotationTest {

    @Test
    void controllerEndpointsShouldDeclareExpectedSentinelResources() throws Exception {
        assertControllerResource("serveCategory", "home:firstPageServeList", "handleServeCategoryBlock");
        assertControllerResource("listHotServe", "home:hotServeList", "handleHotServeBlock");
        assertControllerResource("serveTypeList", "home:serveTypeList", "handleServeTypeBlock");
        assertControllerResource("findServeList", "search:serveList", "handleServeSearchBlock");
    }

    @Test
    void searchServiceShouldDeclareExpectedSentinelFallbackAndBlockHandler() throws Exception {
        Method method = ServeAggregationServiceImpl.class.getMethod("findServeList", String.class, Long.class, String.class);
        SentinelResource resource = method.getAnnotation(SentinelResource.class);

        assertNotNull(resource);
        assertEquals("es:serveSearch", resource.value());
        assertEquals("handleServeSearchBlock", resource.blockHandler());
        assertEquals("serveSearchFallback", resource.fallback());
        assertArrayEquals(new Class<?>[]{SentinelFallbackHandlers.class}, resource.blockHandlerClass());
        assertArrayEquals(new Class<?>[]{SentinelFallbackHandlers.class}, resource.fallbackClass());
    }

    private void assertControllerResource(String methodName, String resourceName, String blockHandler) throws Exception {
        Method method;
        switch (methodName) {
            case "serveCategory":
            case "listHotServe":
            case "serveTypeList":
                method = FirstPageServeController.class.getMethod(methodName, Long.class);
                break;
            case "findServeList":
                method = FirstPageServeController.class.getMethod(methodName, String.class, Long.class, String.class);
                break;
            default:
                throw new IllegalArgumentException("Unsupported method: " + methodName);
        }

        SentinelResource resource = method.getAnnotation(SentinelResource.class);
        assertNotNull(resource);
        assertEquals(resourceName, resource.value());
        assertEquals(blockHandler, resource.blockHandler());
        assertArrayEquals(new Class<?>[]{SentinelBlockHandlers.class}, resource.blockHandlerClass());
    }
}
