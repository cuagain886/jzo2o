package com.jzo2o.foundations.handler;

import com.baomidou.mybatisplus.core.MybatisConfiguration;
import com.baomidou.mybatisplus.core.metadata.TableInfoHelper;
import com.jzo2o.foundations.mapper.RegionMapper;
import com.jzo2o.foundations.mapper.ServeItemMapper;
import com.jzo2o.foundations.mapper.ServeMapper;
import com.jzo2o.foundations.model.domain.Region;
import com.jzo2o.foundations.model.domain.Serve;
import com.jzo2o.foundations.model.domain.ServeItem;
import org.apache.ibatis.builder.MapperBuilderAssistant;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.util.ReflectionTestUtils;

import java.util.Collections;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.ArgumentMatchers.any;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class HomeBloomFilterManagerTest {

    @BeforeAll
    static void initMybatisPlusTableInfo() {
        MybatisConfiguration configuration = new MybatisConfiguration();
        MapperBuilderAssistant assistant = new MapperBuilderAssistant(configuration, "");
        TableInfoHelper.initTableInfo(assistant, Region.class);
        TableInfoHelper.initTableInfo(assistant, Serve.class);
        TableInfoHelper.initTableInfo(assistant, ServeItem.class);
    }

    @Mock
    private RegionMapper regionMapper;

    @Mock
    private ServeMapper serveMapper;

    @Mock
    private ServeItemMapper serveItemMapper;

    private HomeBloomFilterManager homeBloomFilterManager;

    @BeforeEach
    void setUp() {
        homeBloomFilterManager = new HomeBloomFilterManager();
        ReflectionTestUtils.setField(homeBloomFilterManager, "regionMapper", regionMapper);
        ReflectionTestUtils.setField(homeBloomFilterManager, "serveMapper", serveMapper);
        ReflectionTestUtils.setField(homeBloomFilterManager, "serveItemMapper", serveItemMapper);
    }

    @Test
    void rebuild_should_load_ids_from_mappers() {
        when(regionMapper.selectList(any())).thenReturn(List.of(region(101L), region(102L)));
        when(serveMapper.selectList(any())).thenReturn(List.of(serve(201L), serve(202L)));
        when(serveItemMapper.selectList(any())).thenReturn(List.of(serveItem(301L), serveItem(302L)));

        homeBloomFilterManager.rebuild();

        assertTrue(homeBloomFilterManager.mightContainRegionId(101L));
        assertTrue(homeBloomFilterManager.mightContainRegionId(102L));
        assertTrue(homeBloomFilterManager.mightContainServeId(201L));
        assertTrue(homeBloomFilterManager.mightContainServeId(202L));
        assertTrue(homeBloomFilterManager.mightContainServeItemId(301L));
        assertTrue(homeBloomFilterManager.mightContainServeItemId(302L));
    }

    @Test
    void rebuild_should_replace_old_filter_snapshot() {
        when(regionMapper.selectList(any()))
                .thenReturn(List.of(region(1001L)))
                .thenReturn(List.of(region(1002L)));
        when(serveMapper.selectList(any()))
                .thenReturn(List.of(serve(2001L)))
                .thenReturn(List.of(serve(2002L)));
        when(serveItemMapper.selectList(any()))
                .thenReturn(List.of(serveItem(3001L)))
                .thenReturn(List.of(serveItem(3002L)));

        homeBloomFilterManager.rebuild();
        assertTrue(homeBloomFilterManager.mightContainRegionId(1001L));
        assertTrue(homeBloomFilterManager.mightContainServeId(2001L));
        assertTrue(homeBloomFilterManager.mightContainServeItemId(3001L));

        homeBloomFilterManager.rebuild();

        assertFalse(homeBloomFilterManager.mightContainRegionId(1001L));
        assertFalse(homeBloomFilterManager.mightContainServeId(2001L));
        assertFalse(homeBloomFilterManager.mightContainServeItemId(3001L));
        assertTrue(homeBloomFilterManager.mightContainRegionId(1002L));
        assertTrue(homeBloomFilterManager.mightContainServeId(2002L));
        assertTrue(homeBloomFilterManager.mightContainServeItemId(3002L));
    }

    @Test
    void put_methods_should_add_new_ids_incrementally() {
        when(regionMapper.selectList(any())).thenReturn(Collections.emptyList());
        when(serveMapper.selectList(any())).thenReturn(Collections.emptyList());
        when(serveItemMapper.selectList(any())).thenReturn(Collections.emptyList());

        homeBloomFilterManager.rebuild();

        assertFalse(homeBloomFilterManager.mightContainRegionId(11L));
        assertFalse(homeBloomFilterManager.mightContainServeId(22L));
        assertFalse(homeBloomFilterManager.mightContainServeItemId(33L));

        homeBloomFilterManager.putRegionId(11L);
        homeBloomFilterManager.putServeId(22L);
        homeBloomFilterManager.putServeItemId(33L);

        assertTrue(homeBloomFilterManager.mightContainRegionId(11L));
        assertTrue(homeBloomFilterManager.mightContainServeId(22L));
        assertTrue(homeBloomFilterManager.mightContainServeItemId(33L));
    }

    @Test
    void mightContain_should_return_false_for_null_values() {
        when(regionMapper.selectList(any())).thenReturn(Collections.emptyList());
        when(serveMapper.selectList(any())).thenReturn(Collections.emptyList());
        when(serveItemMapper.selectList(any())).thenReturn(Collections.emptyList());

        homeBloomFilterManager.rebuild();

        assertFalse(homeBloomFilterManager.mightContainRegionId(null));
        assertFalse(homeBloomFilterManager.mightContainServeId(null));
        assertFalse(homeBloomFilterManager.mightContainServeItemId(null));
    }

    private Region region(Long id) {
        Region region = new Region();
        region.setId(id);
        return region;
    }

    private Serve serve(Long id) {
        Serve serve = new Serve();
        serve.setId(id);
        return serve;
    }

    private ServeItem serveItem(Long id) {
        ServeItem serveItem = new ServeItem();
        serveItem.setId(id);
        return serveItem;
    }
}
