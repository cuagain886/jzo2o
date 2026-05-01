# JMeter 压测结果分析报告（1000 并发）

## 1. 数据来源

- `src/test/jmeter/before/report/statistics.json`（无缓存基线）
- `src/test/jmeter/after/report/statistics.json`（缓存版本）
- `src/test/jmeter/before/result.jtl`
- `src/test/jmeter/after/result.jtl`

## 2. 测试概况

- 并发线程：`1000`
- 持续时间：约 `180s`
- before（无缓存）：`2026-03-04 23:54:43 ~ 23:57:43`
- after（缓存）：`2026-03-04 23:59:08 ~ 2026-03-05 00:02:08`

## 3. 核心结果

### 3.1 聚合指标（Total）

- before：`sample=493806`，`error=492525`，`errorPct=99.7406%`，`mean=249.25ms`，`p95=416ms`，`throughput=2702.57`
- after：`sample=142649`，`error=365`，`errorPct=0.2559%`，`mean=1168.54ms`，`p95=2198ms`，`throughput=779.35`

### 3.2 成功请求口径（更有参考意义）

- before 成功请求数：`1281`，成功 QPS 约 `7.11`
- after 成功请求数：`142284`，成功 QPS 约 `790.31`

说明：before 的高“throughput”主要由大量快速失败请求组成，不能代表系统真实处理能力；应优先看成功请求口径。

## 4. 分接口指标（before vs after）

| 场景 | before 错误率 | after 错误率 | before Avg(ms) | after Avg(ms) | before P95(ms) | after P95(ms) |
|---|---:|---:|---:|---:|---:|---:|
| firstPageServeList | 99.6414% | 0.2248% | 257.77 | 1155.22 | 352.00 | 2153.00 |
| hotServeList | 99.7265% | 0.2208% | 251.14 | 1167.95 | 349.00 | 2139.00 |
| serveTypeList | 99.7819% | 0.2532% | 248.04 | 1173.47 | 351.00 | 2157.00 |
| activeRegionList | 99.8131% | 0.3259% | 240.00 | 1177.76 | 344.00 | 2161.00 |

## 5. 为什么优化前错误率这么高

before（无缓存）错误类型分布：

- `398,778`：`org.apache.http.conn.HttpHostConnectException`（连接目标服务失败）
- `67,317`：`java.net.BindException: Address already in use: getsockopt`（本机端口资源耗尽）
- `26,430`：`java.net.SocketTimeoutException: Read timed out`（读超时）

结论：

1. 这不是单纯“业务接口慢”导致，而是 1000 并发下出现了明显的连接层/系统层瓶颈。  
2. `BindException` 表明压测机自身端口（或连接复用）已成为瓶颈，属于压测侧资源问题。  
3. `HttpHostConnectException` 说明目标服务在该压强下无法稳定接受新连接（服务端 accept/backlog/线程池或下游阻塞引发）。  
4. 无缓存路径会把数据库与下游压力放大，进一步触发连接失败和超时。  

## 6. 本轮结果如何解读

- 这轮 1000 并发数据可以证明：**缓存版本在高压下稳定性远高于无缓存版本**（错误率 99.74% -> 0.26%）。  
- 但它不适合直接用于“纯性能优化百分比”宣传，因为 before 已严重失稳。  
- 如果要做严谨性能对比，建议追加 `200/400/600/800/1000` 梯度，每档 3 次取中位数，并将压测机与服务机分离。

## 7. 简历描述建议（可直接使用）

### 7.1 一句话版

- 设计并落地 JMeter 高并发压测方案（无缓存基线 vs 缓存版本），在 1000 并发场景下将接口错误率从 99.74% 降至 0.26%，显著提升系统在高压下的可用性与稳定性。

### 7.2 项目经历版（2-3 行）

- 负责核心查询链路性能压测与优化验证，搭建 JMeter 非 GUI 自动化方案，支持 before（无缓存）/after（缓存）双场景回归。  
- 在 1000 并发下定位到连接层瓶颈（`HttpHostConnectException`、`BindException`、`Read timed out`），并通过缓存化改造显著降低失败率（99.74% -> 0.26%）。  
- 沉淀标准化压测资产（JMX、参数模板、执行脚本、分析报告），提升性能问题复现与验证效率。  

### 7.3 面试展开（STAR）

- S：核心接口在高并发场景下存在大量请求失败，缺少可复现的压测与对比体系。  
- T：建立优化前后可量化评估机制，并识别高错误率的真实根因。  
- A：构建 1000 并发 JMeter 压测，拆解错误类型并区分成功/失败口径，定位连接层与无缓存链路瓶颈。  
- R：将高压场景错误率由 99.74% 降至 0.26%，形成可复用压测流程与报告模板。  

### 7.4 关键词

- JMeter
- 性能测试
- 压测
- 高并发
- Redis 缓存
- 错误率治理
- QPS / P95 / P99
