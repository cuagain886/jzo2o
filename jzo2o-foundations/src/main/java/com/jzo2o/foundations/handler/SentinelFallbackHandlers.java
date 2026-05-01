package com.jzo2o.foundations.handler;

import com.alibaba.csp.sentinel.slots.block.BlockException;
import com.jzo2o.foundations.model.dto.response.ServeSimpleResDTO;

import java.util.Collections;
import java.util.List;

public class SentinelFallbackHandlers {
    public static List<ServeSimpleResDTO> handleServeSearchBlock(String cityCode, Long serveTypeId, String keyword, BlockException ex) {
        SentinelResponseHelper.markBlock(
                "es:serveSearch",
                "cityCode=" + cityCode + ",serveTypeId=" + serveTypeId + ",keyword=" + keyword
        );
        return Collections.singletonList(buildMarker(
                SentinelResponseHelper.BLOCK_MARKER,
                "es:serveSearch"
        ));
    }

    public static List<ServeSimpleResDTO> serveSearchFallback(String cityCode, Long serveTypeId, String keyword, Throwable ex) {
        String detail = ex == null ? "unknown" : ex.getClass().getSimpleName();
        SentinelResponseHelper.markFallback("es:serveSearch", detail);
        return Collections.singletonList(buildMarker(
                SentinelResponseHelper.FALLBACK_MARKER,
                "es:serveSearch"
        ));
    }

    private static ServeSimpleResDTO buildMarker(String marker, String resource) {
        ServeSimpleResDTO dto = new ServeSimpleResDTO();
        dto.setId(-1L);
        dto.setServeItemId(-1L);
        dto.setServeItemName(marker);
        dto.setServeItemIcon("resource=" + resource);
        dto.setServeItemSortNum(-1);
        return dto;
    }
}
