//package com.jzo2o.foundations.service.impl;
//
//import cn.hutool.core.bean.BeanUtil;
//import cn.hutool.core.util.ObjectUtil;
//import com.baomidou.mybatisplus.core.toolkit.Wrappers;
//import com.jzo2o.foundations.enums.FoundationStatusEnum;
//import com.jzo2o.foundations.mapper.RegionMapper;
//import com.jzo2o.foundations.mapper.ServeMapper;
//import com.jzo2o.foundations.mapper.ServeTypeMapper;
//import com.jzo2o.foundations.model.domain.Region;
//import com.jzo2o.foundations.model.dto.response.RegionSimpleResDTO;
//import com.jzo2o.foundations.model.dto.response.ServeAggregationSimpleResDTO;
//import com.jzo2o.foundations.model.dto.response.ServeCategoryResDTO;
//import com.jzo2o.foundations.model.dto.response.ServeSimpleResDTO;
//import com.jzo2o.foundations.model.dto.response.ServeTypeResDTO;
//import org.springframework.stereotype.Service;
//
//import javax.annotation.Resource;
//import java.util.ArrayList;
//import java.util.Collections;
//import java.util.List;
//
///**
// * Dedicated no-cache query service for baseline load testing.
// */
//@Service
//public class NoCachePerfService {
//    @Resource
//    private ServeMapper serveMapper;
//    @Resource
//    private ServeTypeMapper serveTypeMapper;
//    @Resource
//    private RegionMapper regionMapper;
//
//    public List<ServeCategoryResDTO> queryServeIconCategoryByRegionIdNoCache(Long regionId) {
//        Region region = regionMapper.selectById(regionId);
//        if (ObjectUtil.isEmpty(region) || ObjectUtil.equal(FoundationStatusEnum.DISABLE.getStatus(), region.getActiveStatus())) {
//            return Collections.emptyList();
//        }
//
//        List<ServeCategoryResDTO> rawList = serveMapper.findServeIconCategoryByRegionId(regionId);
//        if (ObjectUtil.isEmpty(rawList)) {
//            return Collections.emptyList();
//        }
//
//        List<ServeCategoryResDTO> topCategories = new ArrayList<>(rawList.size() >= 2 ? rawList.subList(0, 2) : rawList);
//        topCategories.forEach(category -> {
//            List<ServeSimpleResDTO> serveList = category.getServeResDTOList();
//            if (serveList == null) {
//                category.setServeResDTOList(Collections.emptyList());
//                return;
//            }
//            if (serveList.size() > 4) {
//                category.setServeResDTOList(new ArrayList<>(serveList.subList(0, 4)));
//            }
//        });
//        return topCategories;
//    }
//
//    public List<ServeTypeResDTO> queryServeTypeByRegionIdNoCache(Long regionId) {
//        Region region = regionMapper.selectById(regionId);
//        if (ObjectUtil.isEmpty(region) || ObjectUtil.equal(FoundationStatusEnum.DISABLE.getStatus(), region.getActiveStatus())) {
//            return Collections.emptyList();
//        }
//        return serveTypeMapper.queryServeTypeByRegionId(regionId);
//    }
//
//    public List<ServeAggregationSimpleResDTO> queryHotServeByRegionIdNoCache(Long regionId) {
//        Region region = regionMapper.selectById(regionId);
//        if (ObjectUtil.isEmpty(region) || ObjectUtil.equal(FoundationStatusEnum.DISABLE.getStatus(), region.getActiveStatus())) {
//            return Collections.emptyList();
//        }
//        return serveMapper.queryHotServeByRegionId(regionId);
//    }
//
//    public List<RegionSimpleResDTO> queryActiveRegionListNoCache() {
//        List<Region> regionList = regionMapper.selectList(
//                Wrappers.<Region>lambdaQuery()
//                        .eq(Region::getActiveStatus, FoundationStatusEnum.ENABLE.getStatus())
//                        .orderByAsc(Region::getSortNum)
//        );
//        return BeanUtil.copyToList(regionList, RegionSimpleResDTO.class);
//    }
//}
