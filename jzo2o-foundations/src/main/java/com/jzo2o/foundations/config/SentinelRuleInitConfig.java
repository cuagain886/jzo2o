package com.jzo2o.foundations.config;

import com.alibaba.csp.sentinel.slots.block.RuleConstant;
import com.alibaba.csp.sentinel.slots.block.degrade.DegradeRule;
import com.alibaba.csp.sentinel.slots.block.degrade.DegradeRuleManager;
import com.alibaba.csp.sentinel.slots.block.flow.FlowRule;
import com.alibaba.csp.sentinel.slots.block.flow.FlowRuleManager;
import org.springframework.context.annotation.Configuration;

import javax.annotation.PostConstruct;
import java.util.ArrayList;
import java.util.List;

@Configuration
public class SentinelRuleInitConfig {

    @PostConstruct
    public void initRules() {
        initFlowRules();
        initDegradeRules();
    }

    private void initFlowRules() {
        List<FlowRule> rules = new ArrayList<>();
        rules.add(buildQpsRule("home:firstPageServeList", 80));
        rules.add(buildQpsRule("home:hotServeList", 60));
        rules.add(buildQpsRule("home:serveTypeList", 60));
        rules.add(buildQpsRule("search:serveList", 40));
        rules.add(buildQpsRule("es:serveSearch", 30));
        FlowRuleManager.loadRules(rules);
    }

    private void initDegradeRules() {
        List<DegradeRule> rules = new ArrayList<>();

        DegradeRule esSearchDegradeRule = new DegradeRule("es:serveSearch");
        esSearchDegradeRule.setGrade(RuleConstant.DEGRADE_GRADE_EXCEPTION_RATIO);
        esSearchDegradeRule.setCount(0.3);
        esSearchDegradeRule.setMinRequestAmount(20);
        esSearchDegradeRule.setStatIntervalMs(60000);
        esSearchDegradeRule.setTimeWindow(10);
        rules.add(esSearchDegradeRule);

        DegradeRule searchRtDegradeRule = new DegradeRule("search:serveList");
        searchRtDegradeRule.setGrade(RuleConstant.DEGRADE_GRADE_RT);
        searchRtDegradeRule.setCount(200);
        searchRtDegradeRule.setMinRequestAmount(30);
        searchRtDegradeRule.setStatIntervalMs(60000);
        searchRtDegradeRule.setTimeWindow(10);
        rules.add(searchRtDegradeRule);

        DegradeRuleManager.loadRules(rules);
    }

    private FlowRule buildQpsRule(String resource, double count) {
        FlowRule rule = new FlowRule();
        rule.setResource(resource);
        rule.setGrade(RuleConstant.FLOW_GRADE_QPS);
        rule.setCount(count);
        rule.setLimitApp("default");
        return rule;
    }
}