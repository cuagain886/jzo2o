package com.jzo2o.foundations.config;

import com.alibaba.csp.sentinel.slots.block.RuleConstant;
import com.alibaba.csp.sentinel.slots.block.degrade.DegradeRule;
import com.alibaba.csp.sentinel.slots.block.degrade.DegradeRuleManager;
import com.alibaba.csp.sentinel.slots.block.flow.FlowRule;
import com.alibaba.csp.sentinel.slots.block.flow.FlowRuleManager;
import com.alibaba.csp.sentinel.slots.block.flow.param.ParamFlowItem;
import com.alibaba.csp.sentinel.slots.block.flow.param.ParamFlowRule;
import com.alibaba.csp.sentinel.slots.block.flow.param.ParamFlowRuleManager;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.Test;

import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.function.Function;
import java.util.stream.Collectors;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotNull;

class SentinelRuleConfigTest {

    @AfterEach
    void tearDown() {
        FlowRuleManager.loadRules(Collections.emptyList());
        DegradeRuleManager.loadRules(Collections.emptyList());
        ParamFlowRuleManager.loadRules(Collections.emptyList());
    }

    @Test
    void shouldLoadExpectedFlowAndDegradeRules() {
        SentinelRuleInitConfig config = new SentinelRuleInitConfig();
        config.initRules();

        Map<String, FlowRule> flowRuleMap = FlowRuleManager.getRules()
                .stream()
                .collect(Collectors.toMap(FlowRule::getResource, Function.identity()));

        assertEquals(5, flowRuleMap.size());
        assertEquals(80.0d, flowRuleMap.get("home:firstPageServeList").getCount(), 0.0001d);
        assertEquals(60.0d, flowRuleMap.get("home:hotServeList").getCount(), 0.0001d);
        assertEquals(60.0d, flowRuleMap.get("home:serveTypeList").getCount(), 0.0001d);
        assertEquals(40.0d, flowRuleMap.get("search:serveList").getCount(), 0.0001d);
        assertEquals(30.0d, flowRuleMap.get("es:serveSearch").getCount(), 0.0001d);

        Map<String, DegradeRule> degradeRuleMap = DegradeRuleManager.getRules()
                .stream()
                .collect(Collectors.toMap(DegradeRule::getResource, Function.identity()));

        assertEquals(2, degradeRuleMap.size());
        assertEquals(RuleConstant.DEGRADE_GRADE_EXCEPTION_RATIO, degradeRuleMap.get("es:serveSearch").getGrade());
        assertEquals(0.3d, degradeRuleMap.get("es:serveSearch").getCount(), 0.0001d);
        assertEquals(RuleConstant.DEGRADE_GRADE_RT, degradeRuleMap.get("search:serveList").getGrade());
        assertEquals(200.0d, degradeRuleMap.get("search:serveList").getCount(), 0.0001d);
    }

    @Test
    void shouldLoadExpectedHotParamRule() {
        SentinelParamRuleConfig config = new SentinelParamRuleConfig();
        config.initParamRules();

        List<ParamFlowRule> rules = ParamFlowRuleManager.getRulesOfResource("home:hotServeList");
        assertNotNull(rules);
        assertEquals(1, rules.size());

        ParamFlowRule rule = rules.get(0);
        assertEquals(0, rule.getParamIdx());
        assertEquals(RuleConstant.FLOW_GRADE_QPS, rule.getGrade());
        assertEquals(30.0d, rule.getCount(), 0.0001d);

        List<ParamFlowItem> items = rule.getParamFlowItemList();
        assertNotNull(items);
        assertFalse(items.isEmpty());
        assertEquals("1686303222843662337", items.get(0).getObject());
        assertEquals("java.lang.Long", items.get(0).getClassType());
        assertEquals(10.0d, items.get(0).getCount(), 0.0001d);
    }
}
