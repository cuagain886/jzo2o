# JMeter 压测使用说明

本文档说明本项目如何使用 JMeter 进行压力测试，包含资产位置、参数含义、执行方式与结果产物。

## 1. 压测资产位置

目录：`src/test/jmeter`

- `foundations-stress-test-before-no-cache.jmx`：优化前基线（无缓存接口）
- `foundations-stress-test-after-cache.jmx`：优化后回归（缓存接口）
- `jmeter-local.properties`：本地默认压测参数
- `run-jmeter.ps1`：非 GUI 一键执行脚本（before/after 两阶段）
- `before/`、`after/`：执行输出目录（脚本运行后生成）

## 2. 测试场景说明

JMX 内置两套场景（同一线程组模板，不同接口路径）：

- before（无缓存接口）：
  - `/foundations/perf/nocache/customer/serve/firstPageServeList`
  - `/foundations/perf/nocache/customer/serve/hotServeList`
  - `/foundations/perf/nocache/customer/serve/serveTypeList`
  - `/foundations/perf/nocache/consumer/region/activeRegionList`
- after（缓存接口）：
  - `/foundations/customer/serve/firstPageServeList`
  - `/foundations/customer/serve/hotServeList`
  - `/foundations/customer/serve/serveTypeList`
  - `/foundations/consumer/region/activeRegionList`

## 3. 参数与变量

JMX 中通过 `__P` 读取外部参数，默认值来自 `jmeter-local.properties`。

### 3.1 服务地址

- `host`：服务域名/地址（默认 `127.0.0.1`）
- `port`：服务端口（默认 `11509`）
- `protocol`：协议（默认 `http`）

### 3.2 业务参数

- `regionId`：区域 ID（作为 query 参数注入）

### 3.3 负载模型

- `threads`：并发线程数（默认 `1000`）
- `rampUp`：启动时间（秒，默认 `30`）
- `duration`：持续时间（秒，默认 `180`）
- `delay`：延迟启动（秒，默认 `0`）
- `thinkTimeMs`：思考时间（毫秒，默认 `0`）

### 3.4 超时设置

- `connectTimeout`：连接超时（毫秒，默认 `3000`）
- `readTimeout`：读取超时（毫秒，默认 `3000`）

## 4. 执行方式

前置条件：已安装 JMeter，并确保 `jmeter` 命令在 `PATH` 中可用。

### 4.1 一键执行（推荐）

```powershell
# 优化前基线压测
powershell -ExecutionPolicy Bypass -File src/test/jmeter/run-jmeter.ps1 -Stage before

# 优化后回归压测
powershell -ExecutionPolicy Bypass -File src/test/jmeter/run-jmeter.ps1 -Stage after
```

### 4.2 指定参数文件

```powershell
powershell -ExecutionPolicy Bypass -File src/test/jmeter/run-jmeter.ps1 `
  -Stage before `
  -Profile src/test/jmeter/jmeter-local.properties
```

### 4.3 指定自定义 JMX

```powershell
powershell -ExecutionPolicy Bypass -File src/test/jmeter/run-jmeter.ps1 `
  -Stage before `
  -Jmx src/test/jmeter/foundations-stress-test-before-no-cache.jmx
```

## 5. 输出结果

脚本会清理并重建输出目录，生成以下结果：

- `src/test/jmeter/before/result.jtl`
- `src/test/jmeter/before/report/index.html`
- `src/test/jmeter/after/result.jtl`
- `src/test/jmeter/after/report/index.html`

推荐在 HTML 报告中重点关注：

- 吞吐量（QPS）
- 平均响应时间（Average Response Time）
- 分位响应时间（P90/P95/P99）
- 错误率（Error %）

## 6. 常见调整点

- 修改 `jmeter-local.properties` 以快速调整并发、持续时间、超时等参数。
- 若需要对比不同环境，建议用多个 profile 文件分场景维护，并通过 `-Profile` 指定。
