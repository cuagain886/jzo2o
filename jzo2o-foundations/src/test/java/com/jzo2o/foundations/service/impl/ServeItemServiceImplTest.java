package com.jzo2o.foundations.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.metadata.TableInfoHelper;
import com.jzo2o.foundations.constants.RedisConstants;
import com.jzo2o.foundations.enums.FoundationStatusEnum;
import com.jzo2o.foundations.handler.CacheWriteHelper;
import com.jzo2o.foundations.mapper.ServeItemMapper;
import com.jzo2o.foundations.model.domain.ServeItem;
import com.jzo2o.foundations.service.IServeService;
import org.apache.ibatis.builder.MapperBuilderAssistant;
import org.apache.ibatis.session.Configuration;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.test.util.ReflectionTestUtils;

import static org.mockito.ArgumentMatchers.any;
import static org.mockito.ArgumentMatchers.isNull;
import static org.mockito.Mockito.verify;
import static org.mockito.Mockito.when;

@ExtendWith(MockitoExtension.class)
class ServeItemServiceImplTest {

    @Mock
    private ServeItemMapper serveItemMapper;

    @Mock
    private IServeService serveService;

    @Mock
    private CacheWriteHelper cacheWriteHelper;

    private ServeItemServiceImpl serveItemService;

    @BeforeEach
    void setUp() {
        TableInfoHelper.initTableInfo(new MapperBuilderAssistant(new Configuration(), "test"), ServeItem.class);
        serveItemService = new ServeItemServiceImpl();
        ReflectionTestUtils.setField(serveItemService, "baseMapper", serveItemMapper);
        ReflectionTestUtils.setField(serveItemService, "serveService", serveService);
        ReflectionTestUtils.setField(serveItemService, "cacheWriteHelper", cacheWriteHelper);
    }

    @Test
    void shouldDeleteTheExactCacheKeyWhenDeactivatingServeItem() {
        Long id = 123L;
        ServeItem serveItem = new ServeItem();
        serveItem.setId(id);
        serveItem.setActiveStatus(FoundationStatusEnum.ENABLE.getStatus());

        when(serveItemMapper.selectById(id)).thenReturn(serveItem);
        when(serveService.queryServeCountByServeItemIdAndSaleStatus(id, FoundationStatusEnum.ENABLE.getStatus())).thenReturn(0L);
        when(serveItemMapper.update(isNull(), any(Wrapper.class))).thenReturn(1);

        serveItemService.deactivate(id);

        verify(cacheWriteHelper).delete(RedisConstants.CacheName.SERVE_ITEM + "::" + id);
    }

    @Test
    void shouldDeleteTheExactCacheKeyWhenDeletingServeItem() {
        Long id = 456L;
        ServeItem serveItem = new ServeItem();
        serveItem.setId(id);
        serveItem.setActiveStatus(FoundationStatusEnum.INIT.getStatus());

        when(serveItemMapper.selectById(id)).thenReturn(serveItem);
        when(serveItemMapper.deleteById(id)).thenReturn(1);

        serveItemService.deleteById(id);

        verify(cacheWriteHelper).delete(RedisConstants.CacheName.SERVE_ITEM + "::" + id);
    }
}
