# JZ020 - 家政服务平台

基于 Spring Cloud 的家政服务微服务系统，提供服务预约、订单管理、用户管理等功能。

## 项目简介

JZ020 是一个完整的家政服务平台后端系统，采用微服务架构设计，支持高并发场景下的服务查询、订单处理等业务。

## 技术栈

### 后端框架
- **Spring Boot** 2.7.x
- **Spring Cloud** 微服务框架
- **Spring Cloud Alibaba** 阿里巴巴微服务组件

### 数据存储
- **MySQL 8.0** 关系型数据库
- **Redis 7.x** 缓存数据库
- **Elasticsearch** 搜索引擎

### 微服务组件
- **Nacos** 服务注册与配置中心
- **Sentinel** 流量控制和服务降级
- **RabbitMQ** 消息队列
- **XXL-Job** 分布式任务调度
- **Seata** 分布式事务

### 其他
- **MyBatis Plus** ORM框架
- **Knife4j** API文档
- **JWT** 身份认证
- **Bloom Filter** 缓存穿透防护

## 项目结构

```
jz020/
├── jzo2o-api/                  # API接口模块
├── jzo2o-foundations/          # 基础服务模块
│   ├── src/main/java/          # 业务代码
│   ├── src/main/resources/     # 配置文件
│   └── src/test/jmeter/        # JMeter压测脚本
├── jzo2o-gateway/              # 网关服务模块
├── jzo2o-market/               # 营销服务模块
└── docker-compose-original.yml # Docker环境配置
```

## 模块说明

| 模块 | 说明 | 端口 |
|------|------|------|
| jzo2o-api | API接口定义 | - |
| jzo2o-foundations | 基础服务（服务、区域、首页） | 11509 |
| jzo2o-gateway | API网关 | - |
| jzo2o-market | 营销服务（优惠券、活动） | - |

## 核心接口

### 首页接口

| 接口 | 路径 | 说明 |
|------|------|------|
| 首页服务列表 | `GET /customer/serve/firstPageServeList` | 获取首页服务分类 |
| 热门服务列表 | `GET /customer/serve/hotServeList` | 获取热门服务 |
| 服务分类列表 | `GET /customer/serve/serveTypeList` | 获取服务分类 |
| 首页服务搜索 | `GET /customer/serve/search` | 搜索服务 |
| 服务详情 | `GET /customer/serve/{id}` | 获取服务详情 |
| 活跃区域列表 | `GET /consumer/region/activeRegionList` | 获取活跃区域 |

## 开发指南

### 代码规范

- 遵循阿里巴巴 Java 开发手册
- 使用 Lombok 简化代码
- 使用 MyBatis Plus 简化数据库操作

### 接口文档

启动项目后访问 Knife4j 文档：
```
http://127.0.0.1:11509/foundations/doc.html
```

## 部署说明

### Docker 部署

```bash
# 构建镜像
docker build -t jzo2o-foundations .

# 运行容器
docker run -d -p 11509:11509 jzo2o-foundations
```

### 传统部署

```bash
# 打包
mvn clean package -DskipTests

# 运行
java -jar jzo2o-foundations/target/jzo2o-foundations.jar --spring.profiles.active=prod
```
