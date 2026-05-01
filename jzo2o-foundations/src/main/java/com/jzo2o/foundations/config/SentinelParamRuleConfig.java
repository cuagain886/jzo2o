package com.jzo2o.foundations.config;

import com.alibaba.csp.sentinel.slots.block.RuleConstant;
import com.alibaba.csp.sentinel.slots.block.flow.param.ParamFlowItem;
import com.alibaba.csp.sentinel.slots.block.flow.param.ParamFlowRule;
import com.alibaba.csp.sentinel.slots.block.flow.param.ParamFlowRuleManager;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;
import java.util.Collections;

@Configuration
public class SentinelParamRuleConfig {

    @PostConstruct
    public void initParamRules() {
        ParamFlowRule hotServeRule = new ParamFlowRule("home:hotServeList")
                .setParamIdx(0)
                .setGrade(RuleConstant.FLOW_GRADE_QPS)
                .setCount(30);

        ParamFlowItem hotRegionItem = new ParamFlowItem();
        hotRegionItem.setObject("1686303222843662337");
        hotRegionItem.setClassType(Long.class.getName());
        hotRegionItem.setCount(10);

        hotServeRule.setParamFlowItemList(Collections.singletonList(hotRegionItem));
        ParamFlowRuleManager.loadRules(Collections.singletonList(hotServeRule));
    }
}