package com.jzo2o.foundations.handler;

import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.google.common.base.Charsets;
import com.google.common.hash.BloomFilter;
import com.google.common.hash.Funnels;
import com.jzo2o.foundations.enums.FoundationStatusEnum;
import com.jzo2o.foundations.mapper.RegionMapper;
import com.jzo2o.foundations.mapper.ServeItemMapper;
import com.jzo2o.foundations.mapper.ServeMapper;
import com.jzo2o.foundations.model.domain.Region;
import com.jzo2o.foundations.model.domain.Serve;
import com.jzo2o.foundations.model.domain.ServeItem;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import javax.annotation.PostConstruct;
import javax.annotation.Resource;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Component
public class HomeBloomFilterManager {
    //预估插入数量
    private static final long DEFAULT_EXPECTED_INSERTIONS=10000L;
    //误判率
    private static final double DEFAULT_FPP=0.01D;
    //regionId对应的布隆过滤器
    private volatile BloomFilter<CharSequence> regionIdBloomFilter=BloomFilter.create(
            Funnels.stringFunnel(Charsets.UTF_8),
            DEFAULT_EXPECTED_INSERTIONS,
            DEFAULT_FPP
    );
    //serveId对应布隆过滤器
    private volatile BloomFilter<CharSequence> serveIdBloomFilter=BloomFilter.create(
            Funnels.stringFunnel(Charsets.UTF_8),
            DEFAULT_EXPECTED_INSERTIONS,
            DEFAULT_FPP
    );
    //serveItemId对应布隆过滤器
    private volatile BloomFilter<CharSequence> serveItemIdBloomFilter=BloomFilter.create(
            Funnels.stringFunnel(Charsets.UTF_8),
            DEFAULT_EXPECTED_INSERTIONS,
            DEFAULT_FPP
    );

    @Resource
    private RegionMapper regionMapper;
    @Resource
    private ServeMapper serveMapper;
    @Resource
    private ServeItemMapper serveItemMapper;

    @PostConstruct
    public void init() {
        rebuild();
    }

    public synchronized void rebuild() {
        List<Long>activateRegionIds=regionMapper.selectList(
                Wrappers.<Region>lambdaQuery()
                        .eq(Region::getActiveStatus, FoundationStatusEnum.ENABLE.getStatus())
                        .select(Region::getId)).stream().map(Region::getId).collect(Collectors.toList());


        List<Long>onSaleServeIds=serveMapper.selectList(
                Wrappers.<Serve>lambdaQuery()
                        .eq(Serve::getSaleStatus,FoundationStatusEnum.ENABLE.getStatus())
                        .select(Serve::getId)).stream().map(Serve::getId).collect(Collectors.toList());

        List<Long>activeServeItemIds=serveItemMapper.selectList(
                Wrappers.<ServeItem>lambdaQuery()
                        .eq(ServeItem::getActiveStatus,FoundationStatusEnum.ENABLE.getStatus())
                        .select(ServeItem::getId)).stream().map(ServeItem::getId).collect(Collectors.toList());

        BloomFilter<CharSequence> newRegionIdBloomFilter=buildFilter(activateRegionIds);
        BloomFilter<CharSequence> newServeIdBloomFilter=buildFilter(onSaleServeIds);
        BloomFilter<CharSequence> newServeItemIdBloomFilter=buildFilter(activeServeItemIds);

        this.regionIdBloomFilter=newRegionIdBloomFilter;
        this.serveIdBloomFilter=newServeIdBloomFilter;
        this.serveItemIdBloomFilter=newServeItemIdBloomFilter;

        log.info("home bloom filters rebuild success,regionCount={},serveCount={},serveItemCount{}",activateRegionIds.size(),onSaleServeIds.size(),activeServeItemIds.size());

    }
    //判断是否存在regionId
    public boolean mightContainRegionId(Long regionId) {
        return regionId!=null&&regionIdBloomFilter.mightContain(String.valueOf(regionId));
    }

    /**
     * 判断某个服务 id 是否可能存在。
     */
    public boolean mightContainServeId(Long serveId) {
        return serveId != null && serveIdBloomFilter.mightContain(String.valueOf(serveId));
    }

    /**
     * 判断某个服务项 id 是否可能存在。
     */
    public boolean mightContainServeItemId(Long serveItemId) {
        return serveItemId != null && serveItemIdBloomFilter.mightContain(String.valueOf(serveItemId));
    }

    //增加regionId
    public synchronized void putRegionId(Long regionId) {
        if(regionId!=null){
            regionIdBloomFilter.put(String.valueOf(regionId));
        }
    }
    //增加serveId
    public synchronized void putServeId(Long serveId) {
        if(serveId!=null){
            serveIdBloomFilter.put(String.valueOf(serveId));
        }
    }
    //增加serveItemId
    public synchronized void putServeItemId(Long serveItemId) {
        if(serveItemId!=null){
            serveItemIdBloomFilter.put(String.valueOf(serveItemId));
        }
    }


    BloomFilter<CharSequence> buildFilter(List<Long>ids) {
        Long expectedInsertions=Math.max(DEFAULT_EXPECTED_INSERTIONS,ids.size());
        BloomFilter<CharSequence> bloomFilter=BloomFilter.create(
                Funnels.stringFunnel(Charsets.UTF_8),
                expectedInsertions,
                DEFAULT_FPP
        );

        ids.stream().map(String::valueOf).forEach(bloomFilter::put);
        return bloomFilter;
    }

    private static BloomFilter<CharSequence>newBloomFilter(long expectedInsertions) {
        return BloomFilter.create(
                Funnels.stringFunnel(StandardCharsets.UTF_8),
                expectedInsertions,
                DEFAULT_FPP
        );
    }

}
