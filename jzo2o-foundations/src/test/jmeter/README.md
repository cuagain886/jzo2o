# JMeter 压测测试资产说明（before 无缓存 / after 有缓存）

## 文件说明

- `foundations-stress-test-before-no-cache.jmx`：优化前基线（无缓存接口）
- `foundations-stress-test-after-cache.jmx`：优化后回归（缓存接口）
- `foundations-part1-cache-governance.jmx`：第1部分缓存治理专项压测
- `foundations-part2-sentinel-governance.jmx`：第2部分 Sentinel 限流/降级专项压测
- `jmeter-local.properties`：本地默认压测参数
- `jmeter-part1.properties`：第1部分专项压测默认参数
- `jmeter-part2.properties`：第2部分专项压测默认参数
- `run-jmeter.ps1`：`before/after` 两阶段一键执行脚本

## 覆盖接口

### before（无缓存版本）

- `GET /foundations/perf/nocache/customer/serve/firstPageServeList?regionId=${regionId}`
- `GET /foundations/perf/nocache/customer/serve/hotServeList?regionId=${regionId}`
- `GET /foundations/perf/nocache/customer/serve/serveTypeList?regionId=${regionId}`
- `GET /foundations/perf/nocache/consumer/region/activeRegionList`

### after（缓存版本）

- `GET /foundations/customer/serve/firstPageServeList?regionId=${regionId}`
- `GET /foundations/customer/serve/hotServeList?regionId=${regionId}`
- `GET /foundations/customer/serve/serveTypeList?regionId=${regionId}`
- `GET /foundations/consumer/region/activeRegionList`

### part1（缓存治理专项）

- `GET /foundations/customer/serve/firstPageServeList?regionId=${regionId}`
- `GET /foundations/customer/serve/hotServeList?regionId=${regionId}`
- `GET /foundations/customer/serve/serveTypeList?regionId=${regionId}`
- `GET /foundations/consumer/region/activeRegionList`
- `GET /foundations/customer/serve/${validServeId}`
- `GET /foundations/customer/serve/${invalidServeId}`

### part2（Sentinel 专项）

- `GET /foundations/customer/serve/hotServeList?regionId=${hotRegionId}`
- `GET /foundations/customer/serve/search?cityCode=${cityCode}&serveTypeId=${serveTypeId}&keyword=${keyword}`

## 当前注意事项

- `foundations-stress-test-before-no-cache.jmx` 依赖的 `NoCachePerfController` 目前在项目中处于注释状态，直接执行会得到 `404`。
- 如果要做真实的“优化前 / 优化后”对比，需要先恢复无缓存基线入口，或改用新的专项 `JMX` 脚本。

## 执行方式

```powershell
# 优化前基线压测
powershell -ExecutionPolicy Bypass -File src/test/jmeter/run-jmeter.ps1 -Stage before

# 优化后回归压测
powershell -ExecutionPolicy Bypass -File src/test/jmeter/run-jmeter.ps1 -Stage after
```

指定自定义参数文件：

```powershell
powershell -ExecutionPolicy Bypass -File src/test/jmeter/run-jmeter.ps1 -Stage before -Profile src/test/jmeter/jmeter-local.properties
```

指定自定义 JMX：

```powershell
powershell -ExecutionPolicy Bypass -File src/test/jmeter/run-jmeter.ps1 -Stage before -Jmx src/test/jmeter/foundations-stress-test-before-no-cache.jmx
```

执行第1部分专项压测：

```powershell
powershell -ExecutionPolicy Bypass -File src/test/jmeter/run-jmeter.ps1 -Stage after -Jmx src/test/jmeter/foundations-part1-cache-governance.jmx -Profile src/test/jmeter/jmeter-part1.properties
```

执行第2部分专项压测：

```powershell
powershell -ExecutionPolicy Bypass -File src/test/jmeter/run-jmeter.ps1 -Stage after -Jmx src/test/jmeter/foundations-part2-sentinel-governance.jmx -Profile src/test/jmeter/jmeter-part2.properties
```

## 输出结果

- `src/test/jmeter/before/result.jtl`
- `src/test/jmeter/before/report/index.html`
- `src/test/jmeter/after/result.jtl`
- `src/test/jmeter/after/report/index.html`

可在 HTML 报告中重点对比：

- 吞吐量（QPS）
- 平均响应时间（Average Response Time）
- 分位响应时间（P90/P95/P99）
- 错误率（Error %）
