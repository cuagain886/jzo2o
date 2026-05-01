package com.jzo2o.foundations.handler;

import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletResponse;

final class SentinelResponseHelper {
    private static final int HTTP_TOO_MANY_REQUESTS = 429;
    static final String BLOCK_MARKER = "SENTINEL_BLOCK";
    static final String FALLBACK_MARKER = "SENTINEL_FALLBACK";

    private SentinelResponseHelper() {
    }

    static void markBlock(String resource, String detail) {
        apply(HTTP_TOO_MANY_REQUESTS, BLOCK_MARKER, resource, detail);
    }

    static void markFallback(String resource, String detail) {
        apply(HttpServletResponse.SC_SERVICE_UNAVAILABLE, FALLBACK_MARKER, resource, detail);
    }

    private static void apply(int status, String result, String resource, String detail) {
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        if (attributes == null) {
            return;
        }
        HttpServletResponse response = attributes.getResponse();
        if (response == null) {
            return;
        }
        response.setStatus(status);
        response.setHeader("X-Sentinel-Result", result);
        response.setHeader("X-Sentinel-Resource", resource);
        response.setHeader("X-Sentinel-Detail", detail);
    }
}
