package com.jzo2o.foundations.handler;

import com.alibaba.csp.sentinel.slots.block.BlockException;
import com.jzo2o.foundations.model.dto.response.ServeAggregationSimpleResDTO;
import com.jzo2o.foundations.model.dto.response.ServeAggregationTypeSimpleResDTO;
import com.jzo2o.foundations.model.dto.response.ServeCategoryResDTO;
import com.jzo2o.foundations.model.dto.response.ServeSimpleResDTO;

import java.util.Collections;
import java.util.List;

public class SentinelBlockHandlers {
    public static List<ServeCategoryResDTO>handleServeCategoryBlock(Long regionId, BlockException ex) {
        SentinelResponseHelper.markBlock("home:firstPageServeList", "regionId=" + regionId);
        ServeSimpleResDTO markerItem = buildMarkerServeSimple(
                "home:firstPageServeList",
                "regionId=" + regionId,
                SentinelResponseHelper.BLOCK_MARKER
        );
        return Collections.singletonList(new ServeCategoryResDTO(
                -1L,
                SentinelResponseHelper.BLOCK_MARKER,
                "resource=home:firstPageServeList",
                "regionId=" + regionId,
                -1,
                Collections.singletonList(markerItem)
        ));
    }
    public static List<ServeAggregationSimpleResDTO> handleHotServeBlock(Long regionId, BlockException ex) {
        SentinelResponseHelper.markBlock("home:hotServeList", "regionId=" + regionId);
        return Collections.singletonList(ServeAggregationSimpleResDTO.builder()
                .id(-1L)
                .serveItemId(-1L)
                .serveItemName(SentinelResponseHelper.BLOCK_MARKER)
                .serveItemImg("resource=home:hotServeList")
                .detailImg("regionId=" + regionId)
                .unit(-1)
                .cityCode("sentinel")
                .build());
    }

    public static List<ServeAggregationTypeSimpleResDTO> handleServeTypeBlock(Long regionId, BlockException ex) {
        SentinelResponseHelper.markBlock("home:serveTypeList", "regionId=" + regionId);
        return Collections.singletonList(ServeAggregationTypeSimpleResDTO.builder()
                .serveTypeId(-1L)
                .serveTypeName(SentinelResponseHelper.BLOCK_MARKER)
                .serveTypeImg("resource=home:serveTypeList")
                .serveTypeSortNum(-1)
                .build());
    }

    public static List<ServeSimpleResDTO> handleServeSearchBlock(String cityCode, Long serveTypeId, String keyword, BlockException ex) {
        SentinelResponseHelper.markBlock(
                "search:serveList",
                "cityCode=" + cityCode + ",serveTypeId=" + serveTypeId + ",keyword=" + keyword
        );
        return Collections.singletonList(buildMarkerServeSimple(
                "search:serveList",
                "cityCode=" + cityCode + ",serveTypeId=" + serveTypeId + ",keyword=" + keyword,
                SentinelResponseHelper.BLOCK_MARKER
        ));
    }

    private static ServeSimpleResDTO buildMarkerServeSimple(String resource, String detail, String marker) {
        ServeSimpleResDTO dto = new ServeSimpleResDTO();
        dto.setId(-1L);
        dto.setServeItemId(-1L);
        dto.setServeItemName(marker);
        dto.setServeItemIcon("resource=" + resource);
        dto.setServeItemSortNum(-1);
        return dto;
    }
}
