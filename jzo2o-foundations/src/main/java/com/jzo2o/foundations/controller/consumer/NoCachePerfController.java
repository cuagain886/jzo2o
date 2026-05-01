//package com.jzo2o.foundations.controller.consumer;
//
//import com.jzo2o.foundations.model.dto.response.ServeAggregationSimpleResDTO;
//import com.jzo2o.foundations.model.dto.response.ServeCategoryResDTO;
//import com.jzo2o.foundations.model.dto.response.RegionSimpleResDTO;
//import com.jzo2o.foundations.model.dto.response.ServeTypeResDTO;
//import com.jzo2o.foundations.service.impl.NoCachePerfService;
//import io.swagger.annotations.Api;
//import io.swagger.annotations.ApiImplicitParam;
//import io.swagger.annotations.ApiImplicitParams;
//import io.swagger.annotations.ApiOperation;
//import org.springframework.web.bind.annotation.GetMapping;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.bind.annotation.RestController;
//
//import javax.annotation.Resource;
//import java.util.List;
//
///**
// * Baseline performance endpoints that bypass Spring Cache.
// */
//@RestController
//@RequestMapping("/perf/nocache")
//@Api(tags = "Performance baseline endpoints (no cache)")
//public class NoCachePerfController {
//    @Resource
//    private NoCachePerfService noCachePerfService;
//
//    @GetMapping("/customer/serve/firstPageServeList")
//    @ApiOperation("No-cache first page serve list")
//    @ApiImplicitParams({
//            @ApiImplicitParam(name = "regionId", value = "region id", required = true, dataTypeClass = Long.class)
//    })
//    public List<ServeCategoryResDTO> firstPageServeList(@RequestParam("regionId") Long regionId) {
//        return noCachePerfService.queryServeIconCategoryByRegionIdNoCache(regionId);
//    }
//
//    @GetMapping("/customer/serve/hotServeList")
//    @ApiOperation("No-cache hot serve list")
//    @ApiImplicitParams({
//            @ApiImplicitParam(name = "regionId", value = "region id", required = true, dataTypeClass = Long.class)
//    })
//    public List<ServeAggregationSimpleResDTO> hotServeList(@RequestParam("regionId") Long regionId) {
//        return noCachePerfService.queryHotServeByRegionIdNoCache(regionId);
//    }
//
//    @GetMapping("/customer/serve/serveTypeList")
//    @ApiOperation("No-cache serve type list")
//    @ApiImplicitParams({
//            @ApiImplicitParam(name = "regionId", value = "region id", required = true, dataTypeClass = Long.class)
//    })
//    public List<ServeTypeResDTO> serveTypeList(@RequestParam("regionId") Long regionId) {
//        return noCachePerfService.queryServeTypeByRegionIdNoCache(regionId);
//    }
//
//    @GetMapping("/consumer/region/activeRegionList")
//    @ApiOperation("No-cache active region list")
//    public List<RegionSimpleResDTO> activeRegionList() {
//        return noCachePerfService.queryActiveRegionListNoCache();
//    }
//}
