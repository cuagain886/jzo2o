-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 192.168.101.68    Database: jzo2o-orders
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `jzo2o-orders`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `jzo2o-orders` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `jzo2o-orders`;

--
-- Table structure for table `biz_snapshot`
--

DROP TABLE IF EXISTS `biz_snapshot`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `biz_snapshot` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `state_machine_name` varchar(50) DEFAULT NULL COMMENT '状态机名称',
  `biz_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '业务id',
  `db_shard_id` bigint DEFAULT NULL COMMENT '分库键',
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态代码',
  `biz_data` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '业务数据',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1720003502429724673 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='业务数据快照';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `biz_snapshot`
--

LOCK TABLES `biz_snapshot` WRITE;
/*!40000 ALTER TABLE `biz_snapshot` DISABLE KEYS */;
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1705852652602122240,NULL,'test101',1,'NO_PAY','{}','2023-09-24 07:53:15','2023-09-24 07:53:15');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1705854135619817472,NULL,'101',1,'NO_PAY','{}','2023-09-24 07:59:08','2023-09-24 07:59:08');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1705857303472787456,NULL,'101',1,'DISPATCHING','{}','2023-09-24 08:11:44','2023-09-24 08:11:44');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1705863039749840896,NULL,'102',1,'NO_PAY','{}','2023-09-24 08:34:31','2023-09-24 08:34:31');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1705863040399958016,NULL,'102',1,'DISPATCHING','{}','2023-09-24 08:34:31','2023-09-24 08:34:31');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719546870495191040,'order','103',1,'NO_PAY','{\"ordersStatus\":0,\"id\":103}','2023-11-01 02:49:12','2023-11-01 02:49:12');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719556750190964736,'order','104',1,'NO_PAY','{\"ordersStatus\":0,\"id\":104}','2023-11-01 03:28:27','2023-11-01 03:28:27');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719556750425845760,'order','104',1,'DISPATCHING','{\"ordersStatus\":100,\"id\":104}','2023-11-01 03:28:27','2023-11-01 03:28:27');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719608234639110144,'order','2311010000000000012',1716346406098296832,'NO_PAY','{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698912000000,\"id\":2311010000000000012,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698792780000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698792780000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-01 06:53:02','2023-11-01 06:53:02');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719706855187431424,'order','2311010000000000013',1716346406098296832,'NO_PAY','{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698944400000,\"id\":2311010000000000013,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698816293000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698816293000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-01 13:24:55','2023-11-01 13:24:55');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719708224141258752,'order','2311010000000000014',1716346406098296832,'NO_PAY','{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698946200000,\"id\":2311010000000000014,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698816619000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698816619000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-01 13:30:22','2023-11-01 13:30:22');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719712036755095552,'order','2311010000000000015',1716346406098296832,'NO_PAY','{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698948000000,\"id\":2311010000000000015,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698817528000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698817528000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-01 13:45:31','2023-11-01 13:45:31');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719714496093671424,'order','2311010000000000015',1716346406098296832,'DISPATCHING','{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1698846855911,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"4200001991202311013890714230\",\"realPayAmount\":1,\"serveStartTime\":1698948000000,\"id\":2311010000000000015,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698817528000,\"userId\":1716346406098296832,\"tradingOrderNo\":1719712050370170881,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698817528000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-01 13:55:17','2023-11-01 13:55:17');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719716662040608768,'order','2311010000000000016',1716346406098296832,'NO_PAY','{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1699030800000,\"id\":2311010000000000016,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698818631000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698818631000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-01 14:03:53','2023-11-01 14:03:53');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719717256289599488,'order','2311010000000000017',1716346406098296832,'NO_PAY','{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698951600000,\"id\":2311010000000000017,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698818775000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698818775000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-01 14:06:15','2023-11-01 14:06:15');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719717761527070720,'order','2311010000000000018',1716346406098296832,'NO_PAY','{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698859800000,\"id\":2311010000000000018,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698818896000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698818896000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-01 14:08:16','2023-11-01 14:08:16');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719718371076882432,'order','2311010000000000019',1716346406098296832,'NO_PAY','{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1699029000000,\"id\":2311010000000000019,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698819041000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698819041000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-01 14:10:41','2023-11-01 14:10:41');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719887688292659200,'order','2311020000000000018',1716346406098296832,'NO_PAY','{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1699124400000,\"id\":2311020000000000018,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698888202000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698888202000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-02 09:23:25','2023-11-02 09:23:25');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719898030552936448,'order','2311020000000000019',1716346406098296832,'NO_PAY','{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698951600000,\"id\":2311020000000000019,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698890670000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698890670000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-02 10:04:30','2023-11-02 10:04:30');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1719898140426924032,'order','2311020000000000019',1716346406098296832,'DISPATCHING','{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1698890645475,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"4200001982202311024760791736\",\"realPayAmount\":1,\"serveStartTime\":1698951600000,\"id\":2311020000000000019,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698890670000,\"userId\":1716346406098296832,\"tradingOrderNo\":1719898040573366274,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698890670000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-02 10:04:57','2023-11-02 10:04:57');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1720002980352122880,'order','2311020000000000020',1,'NO_PAY','{\"ordersStatus\":0,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"realPayAmount\":1,\"serveStartTime\":1698942600000,\"id\":2311020000000000020,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698915693000,\"userId\":1716346406098296832,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698915693000,\"payStatus\":2,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-02 17:01:36','2023-11-02 17:01:36');
INSERT INTO `biz_snapshot` (`id`, `state_machine_name`, `biz_id`, `db_shard_id`, `state`, `biz_data`, `create_time`, `update_time`) VALUES (1720003502429724672,'order','2311020000000000020',1,'DISPATCHING','{\"tradingChannel\":\"WECHAT_PAY\",\"ordersStatus\":100,\"payTime\":1698915765729,\"cityCode\":\"010\",\"serveItemName\":\"日常保洁\",\"serveId\":1693815624114970626,\"discountAmount\":0,\"lon\":\"113.83892\",\"serveAddress\":\"河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦\",\"contactsName\":\"苗先生\",\"serveItemId\":1685894105234755585,\"price\":1,\"serveItemImg\":\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png\",\"thirdOrderId\":\"4200001993202311024603167035\",\"realPayAmount\":1,\"serveStartTime\":1698942600000,\"id\":2311020000000000020,\"lat\":\"34.57203\",\"serveTypeId\":1678649931106705409,\"updateTime\":1698915693000,\"userId\":1716346406098296832,\"tradingOrderNo\":1720003382166687746,\"totalAmount\":1,\"unit\":1,\"contactsPhone\":\"13333333333\",\"createTime\":1698915693000,\"payStatus\":4,\"purNum\":1,\"serveTypeName\":\"保洁清\"}','2023-11-02 17:03:40','2023-11-02 17:03:40');
/*!40000 ALTER TABLE `biz_snapshot` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `breach_record`
--

DROP TABLE IF EXISTS `breach_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `breach_record` (
  `id` bigint NOT NULL COMMENT '违约id',
  `serve_provider_id` bigint NOT NULL COMMENT '违约机构或师傅',
  `serve_provider_type` int NOT NULL COMMENT '类型，2：师傅、3：机构',
  `behavior_type` int NOT NULL COMMENT '行为类型，1：待分配时取消，2：待服务时取消，3：服务中取消，4：派单拒绝，5：派单超时',
  `breach_reason` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '违约原因',
  `serve_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务项名称',
  `serve_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务地址',
  `orders_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务编码',
  `served_user_id` bigint NOT NULL COMMENT '被服务人',
  `served_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '被服务人员手机号，脱敏',
  `breach_time` datetime NOT NULL COMMENT '违约时间',
  `breach_day` int NOT NULL COMMENT '违约日，格式例如20200512,2020年5月12日',
  `orders_id` bigint NOT NULL COMMENT '违约单订单id',
  `orders_serve_id` bigint DEFAULT NULL COMMENT '服务单id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='违约记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breach_record`
--

LOCK TABLES `breach_record` WRITE;
/*!40000 ALTER TABLE `breach_record` DISABLE KEYS */;
INSERT INTO `breach_record` (`id`, `serve_provider_id`, `serve_provider_type`, `behavior_type`, `breach_reason`, `serve_item_name`, `serve_address`, `orders_code`, `served_user_id`, `served_phone`, `breach_time`, `breach_day`, `orders_id`, `orders_serve_id`) VALUES (1704798076457275392,1696338624494202882,2,2,'服务地址有误','日常保洁','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼',NULL,1701074772546342912,'13333333333','2023-09-21 18:01:50',20230921,2309210000000000038,NULL);
INSERT INTO `breach_record` (`id`, `serve_provider_id`, `serve_provider_type`, `behavior_type`, `breach_reason`, `serve_item_name`, `serve_address`, `orders_code`, `served_user_id`, `served_phone`, `breach_time`, `breach_day`, `orders_id`, `orders_serve_id`) VALUES (1704850841762091008,1696338624494202882,2,2,'服务地址有误','日常保洁','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼',NULL,1701074772546342912,'13333333333','2023-09-21 21:31:30',20230921,2309210000000000042,NULL);
INSERT INTO `breach_record` (`id`, `serve_provider_id`, `serve_provider_type`, `behavior_type`, `breach_reason`, `serve_item_name`, `serve_address`, `orders_code`, `served_user_id`, `served_phone`, `breach_time`, `breach_day`, `orders_id`, `orders_serve_id`) VALUES (1704863326590238720,1696338624494202882,2,2,'服务地址有误','日常保洁','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼',NULL,1701074772546342912,'13333333333','2023-09-21 22:21:07',20230921,2309210000000000042,NULL);
INSERT INTO `breach_record` (`id`, `serve_provider_id`, `serve_provider_type`, `behavior_type`, `breach_reason`, `serve_item_name`, `serve_address`, `orders_code`, `served_user_id`, `served_phone`, `breach_time`, `breach_day`, `orders_id`, `orders_serve_id`) VALUES (1704864015693414400,1696338624494202882,2,2,'看错地址，无法服务','日常保洁','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼',NULL,1701074772546342912,'13333333333','2023-09-21 22:23:51',20230921,2309210000000000042,NULL);
INSERT INTO `breach_record` (`id`, `serve_provider_id`, `serve_provider_type`, `behavior_type`, `breach_reason`, `serve_item_name`, `serve_address`, `orders_code`, `served_user_id`, `served_phone`, `breach_time`, `breach_day`, `orders_id`, `orders_serve_id`) VALUES (1706554668584398848,1696338624494202882,2,2,'服务地址有误','日常保洁','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼',NULL,1701074772546342912,'13333333333','2023-09-26 14:21:54',20230926,2309260000000000061,NULL);
INSERT INTO `breach_record` (`id`, `serve_provider_id`, `serve_provider_type`, `behavior_type`, `breach_reason`, `serve_item_name`, `serve_address`, `orders_code`, `served_user_id`, `served_phone`, `breach_time`, `breach_day`, `orders_id`, `orders_serve_id`) VALUES (1706559218703790080,1696338624494202882,2,2,'服务地址有误','日常保洁','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼',NULL,1701074772546342912,'13333333333','2023-09-26 14:39:59',20230926,2309260000000000061,NULL);
INSERT INTO `breach_record` (`id`, `serve_provider_id`, `serve_provider_type`, `behavior_type`, `breach_reason`, `serve_item_name`, `serve_address`, `orders_code`, `served_user_id`, `served_phone`, `breach_time`, `breach_day`, `orders_id`, `orders_serve_id`) VALUES (1706563039525908480,1696338624494202882,2,2,'服务地址有误','日常保洁','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼',NULL,1701074772546342912,'13333333333','2023-09-26 14:55:10',20230926,2309260000000000061,NULL);
INSERT INTO `breach_record` (`id`, `serve_provider_id`, `serve_provider_type`, `behavior_type`, `breach_reason`, `serve_item_name`, `serve_address`, `orders_code`, `served_user_id`, `served_phone`, `breach_time`, `breach_day`, `orders_id`, `orders_serve_id`) VALUES (1714261707968258048,1696338624494202882,2,2,'服务地址有误','日常保洁','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼',NULL,1701074772546342912,'13333333333','2023-10-17 20:46:55',20231017,2310170000000000001,NULL);
/*!40000 ALTER TABLE `breach_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_orders_serve_sync`
--

DROP TABLE IF EXISTS `history_orders_serve_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history_orders_serve_sync` (
  `id` bigint NOT NULL COMMENT '服务单id，和',
  `serve_provider_id` bigint DEFAULT NULL COMMENT '服务人员或服务机构id',
  `serve_provider_type` int DEFAULT NULL COMMENT '服务者类型，2：服务端服务，3：机构端服务',
  `institution_staff_id` bigint DEFAULT NULL COMMENT '机构服务人员id',
  `institution_staff_name` varchar(50) DEFAULT NULL COMMENT '机构服务人员名称',
  `institution_name` varchar(100) DEFAULT NULL COMMENT '机构名称',
  `orders_origin_type` int DEFAULT NULL COMMENT '订单来源类型，1：抢单，2：派单',
  `contacts_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户姓名',
  `contacts_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '客户电话',
  `serve_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务地址',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '城市编码',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务分类id',
  `serve_type_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务分裂名称',
  `serve_start_time` datetime DEFAULT NULL COMMENT '预约时间',
  `serve_item_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项名称',
  `serve_item_id` bigint DEFAULT NULL COMMENT '服务项id',
  `serve_item_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务图片',
  `serve_status` int DEFAULT NULL COMMENT '服务单状态，3：服务完成，4：订单关闭',
  `serve_provider_staff_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务人姓名',
  `serve_provider_staff_phone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务人手机号',
  `canceler_name` varchar(50) DEFAULT NULL COMMENT '取消人姓名',
  `cancel_time` datetime DEFAULT NULL COMMENT '退款时间',
  `cancel_reason` varchar(50) DEFAULT NULL COMMENT '退款原因',
  `real_serve_start_time` datetime DEFAULT NULL COMMENT '实际服务开始时间',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务完结时间',
  `serve_before_imgs` json DEFAULT NULL COMMENT '服务前照片',
  `serve_after_imgs` json DEFAULT NULL COMMENT '服务后照片',
  `serve_before_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务前说明',
  `serve_after_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务后说明',
  `orders_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `pur_num` int DEFAULT NULL COMMENT '购买数量',
  `serve_num` int DEFAULT NULL COMMENT '服务数量',
  `unit` int DEFAULT NULL COMMENT '单位',
  `display` int DEFAULT '1' COMMENT '服务端/机构端是否展示，1：展示，0：隐藏',
  `is_deleted` int DEFAULT '0' COMMENT '是否是逻辑删除',
  `update_by` bigint DEFAULT NULL COMMENT '更新人',
  `sort_time` datetime DEFAULT NULL COMMENT '排序时间，服务单状态为服务完成，该字段是完成时间；服务单状态为订单关闭，该时间为退款时间',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`),
  KEY `list_query_index` (`serve_provider_id`,`sort_time`,`serve_status`,`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='服务单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_orders_serve_sync`
--

LOCK TABLES `history_orders_serve_sync` WRITE;
/*!40000 ALTER TABLE `history_orders_serve_sync` DISABLE KEYS */;
INSERT INTO `history_orders_serve_sync` (`id`, `serve_provider_id`, `serve_provider_type`, `institution_staff_id`, `institution_staff_name`, `institution_name`, `orders_origin_type`, `contacts_name`, `contacts_phone`, `serve_address`, `city_code`, `serve_type_id`, `serve_type_name`, `serve_start_time`, `serve_item_name`, `serve_item_id`, `serve_item_img`, `serve_status`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `canceler_name`, `cancel_time`, `cancel_reason`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_after_imgs`, `serve_before_illustrate`, `serve_after_illustrate`, `orders_amount`, `pur_num`, `serve_num`, `unit`, `display`, `is_deleted`, `update_by`, `sort_time`, `update_time`) VALUES (2309210000000000036,1696706462195150849,3,NULL,NULL,'机构03',2,'吕女士','13333333333','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','010',1678649931106705409,'保洁清','2023-09-21 22:00:00','日常保洁',1685894105234755585,'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',0,NULL,NULL,'萧炎','2023-09-23 17:30:51','测试取消订单',NULL,NULL,NULL,NULL,NULL,NULL,0.10,NULL,1,1,1,0,1674350264389750786,'2023-10-08 17:30:51','2023-09-21 08:57:04');
INSERT INTO `history_orders_serve_sync` (`id`, `serve_provider_id`, `serve_provider_type`, `institution_staff_id`, `institution_staff_name`, `institution_name`, `orders_origin_type`, `contacts_name`, `contacts_phone`, `serve_address`, `city_code`, `serve_type_id`, `serve_type_name`, `serve_start_time`, `serve_item_name`, `serve_item_id`, `serve_item_img`, `serve_status`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `canceler_name`, `cancel_time`, `cancel_reason`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_after_imgs`, `serve_before_illustrate`, `serve_after_illustrate`, `orders_amount`, `pur_num`, `serve_num`, `unit`, `display`, `is_deleted`, `update_by`, `sort_time`, `update_time`) VALUES (2309210000000000037,1696338624494202882,2,NULL,NULL,NULL,1,'吕女士','13333333333','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','010',1678649931106705409,'保洁清','2023-09-21 22:00:00','日常保洁',1685894105234755585,'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',3,'服务人员02','15066699132',NULL,NULL,NULL,'2023-09-21 17:38:41','2023-09-21 17:39:01','[]','[]','非常不错','FDFDS',0.10,NULL,NULL,1,1,0,1701074772546342912,'2023-10-08 15:36:31','2023-09-21 09:39:52');
INSERT INTO `history_orders_serve_sync` (`id`, `serve_provider_id`, `serve_provider_type`, `institution_staff_id`, `institution_staff_name`, `institution_name`, `orders_origin_type`, `contacts_name`, `contacts_phone`, `serve_address`, `city_code`, `serve_type_id`, `serve_type_name`, `serve_start_time`, `serve_item_name`, `serve_item_id`, `serve_item_img`, `serve_status`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `canceler_name`, `cancel_time`, `cancel_reason`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_after_imgs`, `serve_before_illustrate`, `serve_after_illustrate`, `orders_amount`, `pur_num`, `serve_num`, `unit`, `display`, `is_deleted`, `update_by`, `sort_time`, `update_time`) VALUES (2309210000000000039,1696338624494202882,2,NULL,NULL,NULL,2,'吕女士','13333333333','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','010',1678649931106705409,'保洁清','2023-09-21 23:30:00','日常保洁',1685894105234755585,'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',3,'服务人员02','15066699132',NULL,NULL,NULL,'2023-09-21 17:57:54','2023-09-21 21:02:26','[]','[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/9252302f-f3b5-498e-af48-c906f80e8e30.png\"]','霏霏','ffff',0.10,NULL,NULL,1,1,0,1701074772546342912,'2023-10-07 21:34:58','2023-09-21 13:03:18');
INSERT INTO `history_orders_serve_sync` (`id`, `serve_provider_id`, `serve_provider_type`, `institution_staff_id`, `institution_staff_name`, `institution_name`, `orders_origin_type`, `contacts_name`, `contacts_phone`, `serve_address`, `city_code`, `serve_type_id`, `serve_type_name`, `serve_start_time`, `serve_item_name`, `serve_item_id`, `serve_item_img`, `serve_status`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `canceler_name`, `cancel_time`, `cancel_reason`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_after_imgs`, `serve_before_illustrate`, `serve_after_illustrate`, `orders_amount`, `pur_num`, `serve_num`, `unit`, `display`, `is_deleted`, `update_by`, `sort_time`, `update_time`) VALUES (2309210000000000041,1696338624494202882,2,NULL,NULL,NULL,2,'吕女士','13333333333','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','010',1678649931106705409,'保洁清','2023-09-21 23:30:00','日常保洁',1685894105234755585,'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,'服务人员02','15066699132',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0.10,NULL,NULL,1,1,0,1674350264389750786,'2023-10-07 11:05:04','2023-09-21 13:30:55');
INSERT INTO `history_orders_serve_sync` (`id`, `serve_provider_id`, `serve_provider_type`, `institution_staff_id`, `institution_staff_name`, `institution_name`, `orders_origin_type`, `contacts_name`, `contacts_phone`, `serve_address`, `city_code`, `serve_type_id`, `serve_type_name`, `serve_start_time`, `serve_item_name`, `serve_item_id`, `serve_item_img`, `serve_status`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `canceler_name`, `cancel_time`, `cancel_reason`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_after_imgs`, `serve_before_illustrate`, `serve_after_illustrate`, `orders_amount`, `pur_num`, `serve_num`, `unit`, `display`, `is_deleted`, `update_by`, `sort_time`, `update_time`) VALUES (2309210000000000042,1696338624494202882,2,NULL,NULL,NULL,1,'吕女士','13333333333','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','010',1678649931106705409,'保洁清','2023-09-22 06:30:00','日常保洁',1685894105234755585,'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',3,'服务人员02','15066699132',NULL,NULL,NULL,'2023-09-21 22:24:48','2023-09-22 10:28:11','[]','[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/f8bb5160-b79e-4f4b-b0f3-3af515f0e026.png\"]','fds','aaaaaa',0.10,NULL,NULL,1,1,0,1701074772546342912,'2023-10-07 21:20:08','2023-09-22 02:29:04');
INSERT INTO `history_orders_serve_sync` (`id`, `serve_provider_id`, `serve_provider_type`, `institution_staff_id`, `institution_staff_name`, `institution_name`, `orders_origin_type`, `contacts_name`, `contacts_phone`, `serve_address`, `city_code`, `serve_type_id`, `serve_type_name`, `serve_start_time`, `serve_item_name`, `serve_item_id`, `serve_item_img`, `serve_status`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `canceler_name`, `cancel_time`, `cancel_reason`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_after_imgs`, `serve_before_illustrate`, `serve_after_illustrate`, `orders_amount`, `pur_num`, `serve_num`, `unit`, `display`, `is_deleted`, `update_by`, `sort_time`, `update_time`) VALUES (2309230000000000043,1696338624494202882,2,NULL,NULL,NULL,1,'吕女士','13333333333','北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','010',1678649931106705409,'保洁清','2023-09-23 22:00:00','日常保洁',1685894105234755585,'https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',3,'服务人员02','15066699132',NULL,NULL,NULL,'2023-09-23 16:31:23','2023-09-23 16:31:40','[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/c9641658-6d1f-418b-90d0-7913361cd7b3.jpg\"]','[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/8c46569e-e150-46fc-833d-cfb45d4ed501.jpg\"]','完成的非常不错','完成的非常不错11111',0.10,NULL,1,1,1,0,1701074772546342912,'2023-10-11 10:51:20','2023-09-23 08:32:31');
/*!40000 ALTER TABLE `history_orders_serve_sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `history_orders_sync`
--

DROP TABLE IF EXISTS `history_orders_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `history_orders_sync` (
  `id` bigint NOT NULL COMMENT '订单id',
  `user_id` bigint NOT NULL COMMENT '订单所属人',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务类型id',
  `serve_provider_id` bigint DEFAULT NULL COMMENT '服务人',
  `serve_provider_type` int DEFAULT NULL COMMENT '服务人类型，2：服务人员，3：机构',
  `serve_item_id` bigint NOT NULL COMMENT '服务项id',
  `serve_id` bigint NOT NULL COMMENT '服务id',
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市编码',
  `serve_type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务类型名称',
  `serve_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项名称',
  `serve_item_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项图片',
  `unit` int DEFAULT NULL COMMENT '服务单位',
  `orders_status` int NOT NULL COMMENT '订单状态，500：订单完成，600：已取消，700：已关闭',
  `pay_status` int DEFAULT NULL COMMENT '支付状态，1：支付成功，2：已关闭',
  `refund_status` int DEFAULT NULL COMMENT '退款状态',
  `trade_finish_time` datetime DEFAULT NULL COMMENT '订单完成时间',
  `trading_channel` varchar(255) DEFAULT NULL COMMENT '支付渠道，ALI_PAY：支付宝，WECHAT_PAY：微信',
  `third_order_id` varchar(50) DEFAULT NULL COMMENT '支付流水',
  `dispatch_time` datetime DEFAULT NULL COMMENT '派单时间',
  `price` decimal(10,2) NOT NULL COMMENT '单价',
  `pur_num` int NOT NULL DEFAULT '1' COMMENT '购买数量',
  `total_amount` decimal(10,2) NOT NULL COMMENT '订单总金额',
  `real_pay_amount` decimal(10,2) NOT NULL COMMENT '实际支付金额',
  `third_refund_order_id` varchar(50) DEFAULT NULL COMMENT '退款流水',
  `canceler_name` varchar(50) DEFAULT NULL COMMENT '取消人姓名',
  `discount_amount` decimal(10,2) NOT NULL COMMENT '优惠金额',
  `serve_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务详细地址',
  `contacts_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人手机号',
  `contacts_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人姓名',
  `serve_provider_staff_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务人姓名',
  `serve_provider_staff_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务人手机号',
  `institution_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '机构名称',
  `institution_phone` varchar(20) DEFAULT NULL COMMENT '机构电话',
  `place_order_time` datetime DEFAULT NULL COMMENT '下单时间',
  `serve_start_time` datetime NOT NULL COMMENT '服务开始时间',
  `serve_end_time` datetime DEFAULT NULL COMMENT '服务结束时间',
  `real_serve_start_time` datetime DEFAULT NULL COMMENT '实际服务开始时间',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务结束时间',
  `serve_before_imgs` json DEFAULT NULL COMMENT '服务开始图片',
  `serve_before_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务开始说明',
  `serve_after_imgs` json DEFAULT NULL COMMENT '服务完成图片',
  `serve_after_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务完成说明',
  `payment_timeout` datetime DEFAULT NULL COMMENT '支付超时时间，该时间只对待支付有意义',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消/被退单时间',
  `cancel_reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '取消/被退单原因',
  `year` int DEFAULT NULL COMMENT '下单年份,格式：yyyy',
  `month` int DEFAULT NULL COMMENT '下单月份,格式：yyyyMM',
  `day` int DEFAULT NULL COMMENT '下单所在日,格式：yyyyMMdd',
  `hour` int DEFAULT NULL COMMENT '下单所在小时，格式：yyyyMMddHH',
  `sort_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '排序时间字段',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `sync` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='历史订单完成15天后同步到历史订单同步表中，通过canal同步到历史订单库中；1天后删除（删除条件当天数据和历史订单库中的订单数据数量一致）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `history_orders_sync`
--

LOCK TABLES `history_orders_sync` WRITE;
/*!40000 ALTER TABLE `history_orders_sync` DISABLE KEYS */;
INSERT INTO `history_orders_sync` (`id`, `user_id`, `serve_type_id`, `serve_provider_id`, `serve_provider_type`, `serve_item_id`, `serve_id`, `city_code`, `serve_type_name`, `serve_item_name`, `serve_item_img`, `unit`, `orders_status`, `pay_status`, `refund_status`, `trade_finish_time`, `trading_channel`, `third_order_id`, `dispatch_time`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `third_refund_order_id`, `canceler_name`, `discount_amount`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `institution_name`, `institution_phone`, `place_order_time`, `serve_start_time`, `serve_end_time`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_before_illustrate`, `serve_after_imgs`, `serve_after_illustrate`, `payment_timeout`, `lon`, `lat`, `pay_time`, `cancel_time`, `cancel_reason`, `year`, `month`, `day`, `hour`, `sort_time`, `update_time`, `sync`) VALUES (2309210000000000036,1701074772546342912,1678649931106705409,1696706462195150849,3,1685894105234755585,1693815624114970626,'010','保洁清','日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,700,4,1,'2023-09-23 09:31:43','WECHAT_PAY',NULL,'2023-09-21 08:57:04',0.10,1,0.10,0.10,NULL,'萧炎',0.00,'北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','13333333333','吕女士',NULL,NULL,'机构03','15896123123','2023-09-21 08:57:04','2023-09-21 22:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,116.34395,40.06115,'2023-09-21 16:56:13','2023-09-23 17:30:51','测试取消订单',2023,202309,20230923,2023092309,'2023-10-08 17:30:51','2023-09-21 08:57:04',NULL);
INSERT INTO `history_orders_sync` (`id`, `user_id`, `serve_type_id`, `serve_provider_id`, `serve_provider_type`, `serve_item_id`, `serve_id`, `city_code`, `serve_type_name`, `serve_item_name`, `serve_item_img`, `unit`, `orders_status`, `pay_status`, `refund_status`, `trade_finish_time`, `trading_channel`, `third_order_id`, `dispatch_time`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `third_refund_order_id`, `canceler_name`, `discount_amount`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `institution_name`, `institution_phone`, `place_order_time`, `serve_start_time`, `serve_end_time`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_before_illustrate`, `serve_after_imgs`, `serve_after_illustrate`, `payment_timeout`, `lon`, `lat`, `pay_time`, `cancel_time`, `cancel_reason`, `year`, `month`, `day`, `hour`, `sort_time`, `update_time`, `sync`) VALUES (2309210000000000037,1701074772546342912,1678649931106705409,1696338624494202882,2,1685894105234755585,1693815624114970626,'010','保洁清','日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,500,4,NULL,'2023-09-23 07:37:19','WECHAT_PAY',NULL,'2023-09-21 08:58:15',0.10,1,0.10,0.10,NULL,NULL,0.00,'北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','13333333333','吕女士','服务人员02','15066699132',NULL,NULL,'2023-09-21 08:58:15','2023-09-21 22:00:00',NULL,'2023-09-21 17:38:41','2023-09-21 17:39:01','[]','非常不错','[]','FDFDS',NULL,116.34395,40.06115,'2023-09-21 16:57:23',NULL,NULL,2023,202309,20230921,2023092108,'2023-10-08 15:36:30','2023-09-21 09:39:52',NULL);
INSERT INTO `history_orders_sync` (`id`, `user_id`, `serve_type_id`, `serve_provider_id`, `serve_provider_type`, `serve_item_id`, `serve_id`, `city_code`, `serve_type_name`, `serve_item_name`, `serve_item_img`, `unit`, `orders_status`, `pay_status`, `refund_status`, `trade_finish_time`, `trading_channel`, `third_order_id`, `dispatch_time`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `third_refund_order_id`, `canceler_name`, `discount_amount`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `institution_name`, `institution_phone`, `place_order_time`, `serve_start_time`, `serve_end_time`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_before_illustrate`, `serve_after_imgs`, `serve_after_illustrate`, `payment_timeout`, `lon`, `lat`, `pay_time`, `cancel_time`, `cancel_reason`, `year`, `month`, `day`, `hour`, `sort_time`, `update_time`, `sync`) VALUES (2309210000000000039,1701074772546342912,1678649931106705409,1696338624494202882,2,1685894105234755585,1693815624114970626,'010','保洁清','日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,500,4,NULL,'2023-09-22 13:35:50','WECHAT_PAY',NULL,'2023-09-21 09:49:32',0.10,1,0.10,0.10,NULL,NULL,0.00,'北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','13333333333','吕女士','服务人员02','15066699132',NULL,NULL,'2023-09-21 09:49:32','2023-09-21 23:30:00',NULL,'2023-09-21 17:57:54','2023-09-21 21:02:26','[]','霏霏','[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/9252302f-f3b5-498e-af48-c906f80e8e30.png\"]','ffff',NULL,116.34395,40.06115,'2023-09-21 17:48:41',NULL,NULL,2023,202309,20230921,2023092109,'2023-10-07 21:34:58','2023-09-21 13:03:18',NULL);
INSERT INTO `history_orders_sync` (`id`, `user_id`, `serve_type_id`, `serve_provider_id`, `serve_provider_type`, `serve_item_id`, `serve_id`, `city_code`, `serve_type_name`, `serve_item_name`, `serve_item_img`, `unit`, `orders_status`, `pay_status`, `refund_status`, `trade_finish_time`, `trading_channel`, `third_order_id`, `dispatch_time`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `third_refund_order_id`, `canceler_name`, `discount_amount`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `institution_name`, `institution_phone`, `place_order_time`, `serve_start_time`, `serve_end_time`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_before_illustrate`, `serve_after_imgs`, `serve_after_illustrate`, `payment_timeout`, `lon`, `lat`, `pay_time`, `cancel_time`, `cancel_reason`, `year`, `month`, `day`, `hour`, `sort_time`, `update_time`, `sync`) VALUES (2309210000000000041,1701074772546342912,1678649931106705409,1696338624494202882,2,1685894105234755585,1693815624114970626,'010','保洁清','日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,700,4,1,'2023-09-22 03:05:56','WECHAT_PAY',NULL,'2023-09-21 09:57:53',0.10,1,0.10,0.10,NULL,NULL,0.00,'北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','13333333333','吕女士','服务人员02','15066699132',NULL,NULL,'2023-09-21 09:57:48','2023-09-21 23:30:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,116.34395,40.06115,'2023-09-21 17:57:01',NULL,NULL,2023,202309,20230921,2023092109,'2023-10-07 11:05:04','2023-09-21 13:30:55',NULL);
INSERT INTO `history_orders_sync` (`id`, `user_id`, `serve_type_id`, `serve_provider_id`, `serve_provider_type`, `serve_item_id`, `serve_id`, `city_code`, `serve_type_name`, `serve_item_name`, `serve_item_img`, `unit`, `orders_status`, `pay_status`, `refund_status`, `trade_finish_time`, `trading_channel`, `third_order_id`, `dispatch_time`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `third_refund_order_id`, `canceler_name`, `discount_amount`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `institution_name`, `institution_phone`, `place_order_time`, `serve_start_time`, `serve_end_time`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_before_illustrate`, `serve_after_imgs`, `serve_after_illustrate`, `payment_timeout`, `lon`, `lat`, `pay_time`, `cancel_time`, `cancel_reason`, `year`, `month`, `day`, `hour`, `sort_time`, `update_time`, `sync`) VALUES (2309210000000000042,1701074772546342912,1678649931106705409,1696338624494202882,2,1685894105234755585,1693815624114970626,'010','保洁清','日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,500,4,NULL,'2023-09-22 13:21:00','WECHAT_PAY',NULL,'2023-09-21 14:24:42',0.10,1,0.10,0.10,NULL,NULL,0.00,'北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','13333333333','吕女士','服务人员02','15066699132',NULL,NULL,'2023-09-21 13:00:09','2023-09-22 06:30:00',NULL,'2023-09-21 22:24:48','2023-09-22 10:28:11','[]','fds','[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/f8bb5160-b79e-4f4b-b0f3-3af515f0e026.png\"]','aaaaaa',NULL,116.34395,40.06115,'2023-09-21 20:59:17',NULL,NULL,2023,202309,20230921,2023092113,'2023-10-07 21:20:08','2023-09-22 02:29:04',NULL);
INSERT INTO `history_orders_sync` (`id`, `user_id`, `serve_type_id`, `serve_provider_id`, `serve_provider_type`, `serve_item_id`, `serve_id`, `city_code`, `serve_type_name`, `serve_item_name`, `serve_item_img`, `unit`, `orders_status`, `pay_status`, `refund_status`, `trade_finish_time`, `trading_channel`, `third_order_id`, `dispatch_time`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `third_refund_order_id`, `canceler_name`, `discount_amount`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `institution_name`, `institution_phone`, `place_order_time`, `serve_start_time`, `serve_end_time`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_before_illustrate`, `serve_after_imgs`, `serve_after_illustrate`, `payment_timeout`, `lon`, `lat`, `pay_time`, `cancel_time`, `cancel_reason`, `year`, `month`, `day`, `hour`, `sort_time`, `update_time`, `sync`) VALUES (2309230000000000043,1701074772546342912,1678649931106705409,1696338624494202882,2,1685894105234755585,1693815624114970626,'010','保洁清','日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,500,4,NULL,'2023-09-26 02:52:08','WECHAT_PAY',NULL,'2023-09-23 08:19:13',0.10,1,0.10,0.10,NULL,NULL,0.00,'北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','13333333333','吕女士','服务人员02','15066699132',NULL,NULL,'2023-09-23 08:19:08','2023-09-23 22:00:00',NULL,'2023-09-23 16:31:23','2023-09-23 16:31:40','[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/c9641658-6d1f-418b-90d0-7913361cd7b3.jpg\"]','完成的非常不错','[\"https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/8c46569e-e150-46fc-833d-cfb45d4ed501.jpg\"]','完成的非常不错11111',NULL,116.34395,40.06115,'2023-09-23 16:18:20',NULL,NULL,2023,202309,20230926,2023092602,'2023-10-11 10:51:19','2023-09-23 08:32:31',NULL);
INSERT INTO `history_orders_sync` (`id`, `user_id`, `serve_type_id`, `serve_provider_id`, `serve_provider_type`, `serve_item_id`, `serve_id`, `city_code`, `serve_type_name`, `serve_item_name`, `serve_item_img`, `unit`, `orders_status`, `pay_status`, `refund_status`, `trade_finish_time`, `trading_channel`, `third_order_id`, `dispatch_time`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `third_refund_order_id`, `canceler_name`, `discount_amount`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `institution_name`, `institution_phone`, `place_order_time`, `serve_start_time`, `serve_end_time`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_before_illustrate`, `serve_after_imgs`, `serve_after_illustrate`, `payment_timeout`, `lon`, `lat`, `pay_time`, `cancel_time`, `cancel_reason`, `year`, `month`, `day`, `hour`, `sort_time`, `update_time`, `sync`) VALUES (2309250000000000057,1701074772546342912,1678649931106705409,NULL,NULL,1685894105234755585,1693815624114970626,'010','保洁清','日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,700,4,1,'2023-09-26 05:38:06','WECHAT_PAY',NULL,NULL,0.10,1,0.10,0.10,NULL,'微信用户',0.00,'北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','13333333333','吕女士',NULL,NULL,NULL,NULL,'2023-09-25 06:14:39','2023-09-25 17:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,116.34395,40.06115,'2023-09-25 14:13:48','2023-09-26 13:37:14','下单地址有误',2023,202309,20230926,2023092605,'2023-10-11 13:37:14','2023-09-26 05:38:06',NULL);
INSERT INTO `history_orders_sync` (`id`, `user_id`, `serve_type_id`, `serve_provider_id`, `serve_provider_type`, `serve_item_id`, `serve_id`, `city_code`, `serve_type_name`, `serve_item_name`, `serve_item_img`, `unit`, `orders_status`, `pay_status`, `refund_status`, `trade_finish_time`, `trading_channel`, `third_order_id`, `dispatch_time`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `third_refund_order_id`, `canceler_name`, `discount_amount`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `institution_name`, `institution_phone`, `place_order_time`, `serve_start_time`, `serve_end_time`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_before_illustrate`, `serve_after_imgs`, `serve_after_illustrate`, `payment_timeout`, `lon`, `lat`, `pay_time`, `cancel_time`, `cancel_reason`, `year`, `month`, `day`, `hour`, `sort_time`, `update_time`, `sync`) VALUES (2309250000000000060,1701074772546342912,1678649931106705409,NULL,NULL,1685894105234755585,1693815624114970626,'010','保洁清','日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,700,4,1,'2023-09-26 05:37:52','WECHAT_PAY',NULL,NULL,0.10,1,0.10,0.10,NULL,'微信用户',0.00,'北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','13333333333','吕女士',NULL,NULL,NULL,NULL,'2023-09-25 06:34:18','2023-09-25 17:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,116.34395,40.06115,'2023-09-25 14:33:29','2023-09-26 13:37:01','下单地址有误',2023,202309,20230926,2023092605,'2023-10-11 13:37:01','2023-09-26 05:37:52',NULL);
INSERT INTO `history_orders_sync` (`id`, `user_id`, `serve_type_id`, `serve_provider_id`, `serve_provider_type`, `serve_item_id`, `serve_id`, `city_code`, `serve_type_name`, `serve_item_name`, `serve_item_img`, `unit`, `orders_status`, `pay_status`, `refund_status`, `trade_finish_time`, `trading_channel`, `third_order_id`, `dispatch_time`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `third_refund_order_id`, `canceler_name`, `discount_amount`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `institution_name`, `institution_phone`, `place_order_time`, `serve_start_time`, `serve_end_time`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_before_illustrate`, `serve_after_imgs`, `serve_after_illustrate`, `payment_timeout`, `lon`, `lat`, `pay_time`, `cancel_time`, `cancel_reason`, `year`, `month`, `day`, `hour`, `sort_time`, `update_time`, `sync`) VALUES (2309260000000000062,1701074772546342912,1678649931106705409,NULL,NULL,1685894105234755585,1693815624114970626,'010','保洁清','日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,700,4,1,'2023-09-26 07:35:59','WECHAT_PAY',NULL,NULL,1.00,1,1.00,0.50,NULL,'微信用户',0.50,'北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','13333333333','吕女士',NULL,NULL,NULL,NULL,'2023-09-26 07:35:33','2023-09-27 08:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,116.34395,40.06115,'2023-09-26 15:34:41','2023-09-26 15:35:07','问题已解决，不需要了',2023,202309,20230926,2023092607,'2023-10-11 15:35:07','2023-09-26 07:35:59',NULL);
INSERT INTO `history_orders_sync` (`id`, `user_id`, `serve_type_id`, `serve_provider_id`, `serve_provider_type`, `serve_item_id`, `serve_id`, `city_code`, `serve_type_name`, `serve_item_name`, `serve_item_img`, `unit`, `orders_status`, `pay_status`, `refund_status`, `trade_finish_time`, `trading_channel`, `third_order_id`, `dispatch_time`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `third_refund_order_id`, `canceler_name`, `discount_amount`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `institution_name`, `institution_phone`, `place_order_time`, `serve_start_time`, `serve_end_time`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_before_illustrate`, `serve_after_imgs`, `serve_after_illustrate`, `payment_timeout`, `lon`, `lat`, `pay_time`, `cancel_time`, `cancel_reason`, `year`, `month`, `day`, `hour`, `sort_time`, `update_time`, `sync`) VALUES (2309260000000000063,1701074772546342912,1678649931106705409,NULL,NULL,1685894105234755585,1693815624114970626,'010','保洁清','日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,700,4,1,'2023-09-26 07:46:12','WECHAT_PAY',NULL,NULL,1.00,1,1.00,0.80,NULL,'微信用户',0.20,'北京市北京市昌平区北京市昌平区回龙观街道金燕龙科研楼','13333333333','吕女士',NULL,NULL,NULL,NULL,'2023-09-26 07:44:54','2023-09-27 09:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,116.34395,40.06115,'2023-09-26 15:44:02','2023-09-26 15:45:20','下单地址有误',2023,202309,20230926,2023092607,'2023-10-11 15:45:20','2023-09-26 07:46:12',NULL);
INSERT INTO `history_orders_sync` (`id`, `user_id`, `serve_type_id`, `serve_provider_id`, `serve_provider_type`, `serve_item_id`, `serve_id`, `city_code`, `serve_type_name`, `serve_item_name`, `serve_item_img`, `unit`, `orders_status`, `pay_status`, `refund_status`, `trade_finish_time`, `trading_channel`, `third_order_id`, `dispatch_time`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `third_refund_order_id`, `canceler_name`, `discount_amount`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `institution_name`, `institution_phone`, `place_order_time`, `serve_start_time`, `serve_end_time`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_before_illustrate`, `serve_after_imgs`, `serve_after_illustrate`, `payment_timeout`, `lon`, `lat`, `pay_time`, `cancel_time`, `cancel_reason`, `year`, `month`, `day`, `hour`, `sort_time`, `update_time`, `sync`) VALUES (2310280000000000004,1716346406098296832,1678649931106705409,NULL,NULL,1685894105234755585,1693815624114970626,'010','保洁清','日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,700,4,2,'2023-10-28 09:40:35','WECHAT_PAY',NULL,NULL,1.00,1,1.00,1.00,NULL,'普通用户72135',0.00,'河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生',NULL,NULL,NULL,NULL,'2023-10-28 08:52:01','2023-10-29 10:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,113.83892,34.57203,'2023-10-28 17:03:25','2023-10-28 17:04:06','问题已解决，不需要了',2023,202310,20231028,2023102809,'2023-11-12 17:39:47','2023-10-28 09:40:35',NULL);
INSERT INTO `history_orders_sync` (`id`, `user_id`, `serve_type_id`, `serve_provider_id`, `serve_provider_type`, `serve_item_id`, `serve_id`, `city_code`, `serve_type_name`, `serve_item_name`, `serve_item_img`, `unit`, `orders_status`, `pay_status`, `refund_status`, `trade_finish_time`, `trading_channel`, `third_order_id`, `dispatch_time`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `third_refund_order_id`, `canceler_name`, `discount_amount`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_provider_staff_name`, `serve_provider_staff_phone`, `institution_name`, `institution_phone`, `place_order_time`, `serve_start_time`, `serve_end_time`, `real_serve_start_time`, `real_serve_end_time`, `serve_before_imgs`, `serve_before_illustrate`, `serve_after_imgs`, `serve_after_illustrate`, `payment_timeout`, `lon`, `lat`, `pay_time`, `cancel_time`, `cancel_reason`, `year`, `month`, `day`, `hour`, `sort_time`, `update_time`, `sync`) VALUES (2310280000000000005,1716346406098296832,1678649931106705409,NULL,NULL,1685894105234755585,1693815624114970626,'010','保洁清','日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,700,4,2,'2023-10-28 13:53:51','WECHAT_PAY',NULL,NULL,1.00,1,1.00,1.00,NULL,'普通用户72135',0.00,'河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生',NULL,NULL,NULL,NULL,'2023-10-28 13:52:37','2023-10-29 13:30:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,113.83892,34.57203,'2023-10-28 21:52:17','2023-10-28 21:52:33','问题已解决，不需要了',2023,202310,20231028,2023102813,'2023-11-12 21:52:59','2023-10-28 13:53:51',NULL);
/*!40000 ALTER TABLE `history_orders_sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint NOT NULL COMMENT '订单id',
  `user_id` bigint NOT NULL COMMENT '订单所属人',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务类型id',
  `serve_type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务类型名称',
  `serve_item_id` bigint NOT NULL COMMENT '服务项id',
  `serve_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项名称',
  `serve_item_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务项图片',
  `unit` int DEFAULT NULL COMMENT '服务单位',
  `serve_id` bigint NOT NULL COMMENT '服务id',
  `orders_status` int NOT NULL COMMENT '订单状态，0：待支付，100：派单中，200：待服务，300：服务中，500：订单完成，600：已取消，700：已关闭',
  `pay_status` int DEFAULT NULL COMMENT '支付状态，2：待支付，4：支付成功',
  `refund_status` int DEFAULT NULL COMMENT '退款状态 1退款中 2退款成功 3退款失败',
  `price` decimal(10,2) NOT NULL COMMENT '单价',
  `pur_num` int NOT NULL DEFAULT '1' COMMENT '购买数量',
  `total_amount` decimal(10,2) NOT NULL COMMENT '订单总金额',
  `real_pay_amount` decimal(10,2) NOT NULL COMMENT '实际支付金额',
  `discount_amount` decimal(10,2) NOT NULL COMMENT '优惠金额',
  `city_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市编码',
  `serve_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务详细地址',
  `contacts_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人手机号',
  `contacts_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '联系人姓名',
  `serve_start_time` datetime NOT NULL COMMENT '服务开始时间',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `pay_time` datetime DEFAULT NULL COMMENT '支付时间',
  `evaluation_time` datetime DEFAULT NULL COMMENT '评价时间',
  `evaluation_status` int NOT NULL DEFAULT '0' COMMENT '评价状态 0:未评价  1:已评价',
  `trading_order_no` bigint DEFAULT NULL COMMENT '支付服务交易单号',
  `transaction_id` varchar(50) DEFAULT NULL COMMENT '第三方支付的交易号',
  `refund_no` bigint DEFAULT NULL COMMENT '支付服务退款单号',
  `refund_id` varchar(50) DEFAULT NULL COMMENT '第三方支付的退款单号',
  `trading_channel` varchar(50) DEFAULT NULL COMMENT '支付渠道',
  `display` int DEFAULT '1' COMMENT '用户端是否展示，1：展示，0：隐藏',
  `sort_by` bigint DEFAULT NULL COMMENT '排序字段，serve_start_time秒级时间戳+订单id后六位',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务完成时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `over_time`           datetime                           null comment '支付超时时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='订单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2310290000000000006,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,0,2,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-10-30 09:00:00',113.83892,34.57203,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1698627600006,NULL,'2023-10-29 11:45:56','2023-10-29 11:45:56');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2310290000000000007,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,0,2,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-10-30 03:30:00',113.83892,34.57203,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1698607800007,NULL,'2023-10-29 12:45:36','2023-10-29 12:45:36');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2310290000000000008,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,0,2,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-10-30 03:30:00',113.83892,34.57203,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1698607800008,NULL,'2023-10-29 12:47:35','2023-10-29 12:47:35');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2310300000000000011,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,100,4,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-10-31 08:00:00',113.83892,34.57203,'2023-10-30 21:25:35',NULL,0,1718981758290255874,'4200001988202310308551503916',NULL,NULL,'WECHAT_PAY',1,1698710400011,NULL,'2023-10-30 13:23:25','2023-10-30 13:26:27');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2310300000000000012,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,0,2,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-10-31 04:00:00',113.83892,34.57203,NULL,NULL,0,1718983196756172802,NULL,NULL,NULL,'ALI_PAY',1,1698696000012,NULL,'2023-10-30 13:29:12','2023-10-30 13:38:04');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2310310000000000011,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,100,4,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-11-01 08:00:00',113.83892,34.57203,'2023-10-31 17:00:53',NULL,0,1719276609644908545,'4200001971202310316899459013',NULL,NULL,'WECHAT_PAY',1,1698796800011,NULL,'2023-10-31 08:49:18','2023-10-31 09:01:45');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2311010000000000012,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,600,2,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-11-02 16:00:00',113.83892,34.57203,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1698912000012,NULL,'2023-11-01 06:53:00','2023-11-01 13:13:11');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2311010000000000013,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,600,2,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-11-03 01:00:00',113.83892,34.57203,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1698944400013,NULL,'2023-11-01 13:24:53','2023-11-01 13:25:09');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2311010000000000014,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,600,2,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-11-03 01:30:00',113.83892,34.57203,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1698946200014,NULL,'2023-11-01 13:30:19','2023-11-01 13:30:35');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2311010000000000015,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,700,4,2,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-11-03 02:00:00',113.83892,34.57203,'2023-11-01 21:54:16',NULL,0,1719712050370170881,'4200001991202311013890714230',1719715740460109825,'50301507672023110132905200019','WECHAT_PAY',1,1698948000015,NULL,'2023-11-01 13:45:28','2023-11-01 14:00:35');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2311010000000000016,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,0,2,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-11-04 01:00:00',113.83892,34.57203,NULL,NULL,0,1719716830744268802,NULL,NULL,NULL,'WECHAT_PAY',1,1699030800016,NULL,'2023-11-01 14:03:51','2023-11-01 14:04:34');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2311010000000000017,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,0,2,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-11-03 03:00:00',113.83892,34.57203,NULL,NULL,0,1719717271708225538,NULL,NULL,NULL,'WECHAT_PAY',1,1698951600017,NULL,'2023-11-01 14:06:15','2023-11-01 14:06:19');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2311010000000000018,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,0,2,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-11-02 01:30:00',113.83892,34.57203,NULL,NULL,0,1719717777692282881,NULL,NULL,NULL,'WECHAT_PAY',1,1698859800018,NULL,'2023-11-01 14:08:16','2023-11-01 14:08:20');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2311010000000000019,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,0,2,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-11-04 00:30:00',113.83892,34.57203,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,1,1699029000019,NULL,'2023-11-01 14:10:41','2023-11-01 14:10:41');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2311020000000000018,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,600,2,NULL,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-11-05 03:00:00',113.83892,34.57203,NULL,NULL,0,1719888545902235649,NULL,NULL,NULL,'WECHAT_PAY',1,1699124400018,NULL,'2023-11-02 09:23:22','2023-11-02 10:02:52');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2311020000000000019,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,700,4,2,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-11-03 03:00:00',113.83892,34.57203,'2023-11-02 10:04:05',NULL,0,1719898040573366274,'4200001982202311024760791736',1719898405972742146,'50301307412023110220863640032','WECHAT_PAY',1,1698951600019,NULL,'2023-11-02 10:04:30','2023-11-02 10:08:40');
INSERT INTO `orders` (`id`, `user_id`, `serve_type_id`, `serve_type_name`, `serve_item_id`, `serve_item_name`, `serve_item_img`, `unit`, `serve_id`, `orders_status`, `pay_status`, `refund_status`, `price`, `pur_num`, `total_amount`, `real_pay_amount`, `discount_amount`, `city_code`, `serve_address`, `contacts_phone`, `contacts_name`, `serve_start_time`, `lon`, `lat`, `pay_time`, `evaluation_time`, `evaluation_status`, `trading_order_no`, `transaction_id`, `refund_no`, `refund_id`, `trading_channel`, `display`, `sort_by`, `real_serve_end_time`, `create_time`, `update_time`) VALUES (2311020000000000020,1716346406098296832,1678649931106705409,'保洁清',1685894105234755585,'日常保洁','https://yjy-xzbjzfw-oss.oss-cn-hangzhou.aliyuncs.com/aa6489e5-cd92-42f0-837a-952c99653b8b.png',1,1693815624114970626,700,4,2,1.00,1,1.00,1.00,0.00,'010','河南省郑州市新郑市河南省郑州市新郑市郑港街道黑马程序员航投大厦','13333333333','苗先生','2023-11-03 00:30:00',113.83892,34.57203,'2023-11-02 17:02:46',NULL,0,1720003382166687746,'4200001993202311024603167035',1720003611095994370,'50310107672023110203717204611','WECHAT_PAY',1,1698942600020,NULL,'2023-11-02 17:01:33','2023-11-02 17:04:25');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_canceled`
--

DROP TABLE IF EXISTS `orders_canceled`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_canceled` (
  `id` bigint NOT NULL COMMENT '订单id',
  `canceller_id` bigint DEFAULT NULL COMMENT '取消人',
  `canceler_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '取消人名称',
  `canceller_type` int DEFAULT NULL COMMENT '取消人类型，1：普通用户，4：运营人员',
  `cancel_reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '取消原因',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消时间',
  `create_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='订单取消表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_canceled`
--

LOCK TABLES `orders_canceled` WRITE;
/*!40000 ALTER TABLE `orders_canceled` DISABLE KEYS */;
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2309180000000000018,1701074772546342912,'微信用户',1,'问题已解决，不需要了','2023-09-20 16:33:51','2023-09-20 08:34:42','2023-09-20 08:34:42');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2309190000000000032,1701074772546342912,'微信用户',1,'问题已解决，不需要了','2023-09-20 16:21:51','2023-09-20 08:22:43','2023-09-20 08:22:43');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2309210000000000036,1674350264389750786,'萧炎',4,'测试取消订单','2023-09-23 17:30:51','2023-09-23 09:31:43','2023-09-23 09:31:43');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2309210000000000041,1674350264389750786,'萧炎',4,'aaaaaaaaaaaa','2023-09-22 11:05:04','2023-09-22 03:05:56','2023-09-22 03:05:56');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2309250000000000057,1701074772546342912,'微信用户',1,'下单地址有误','2023-09-26 13:37:14','2023-09-26 05:38:06','2023-09-26 05:38:06');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2309250000000000060,1701074772546342912,'微信用户',1,'下单地址有误','2023-09-26 13:37:01','2023-09-26 05:37:52','2023-09-26 05:37:52');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2309260000000000062,1701074772546342912,'微信用户',1,'问题已解决，不需要了','2023-09-26 15:35:07','2023-09-26 07:35:59','2023-09-26 07:35:59');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2309260000000000063,1701074772546342912,'微信用户',1,'下单地址有误','2023-09-26 15:45:20','2023-09-26 07:46:12','2023-09-26 07:46:12');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2310280000000000004,1716346406098296832,'普通用户72135',1,'问题已解决，不需要了','2023-10-28 17:04:06','2023-10-28 09:04:57','2023-10-28 09:04:57');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2310280000000000005,1716346406098296832,'普通用户72135',1,'问题已解决，不需要了','2023-10-28 21:52:33','2023-10-28 13:53:25','2023-10-28 13:53:25');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2311010000000000012,NULL,NULL,NULL,'问题已解决，不需要了',NULL,'2023-11-01 13:13:07','2023-11-01 13:13:07');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2311010000000000013,NULL,NULL,NULL,'下单地址有误',NULL,'2023-11-01 13:25:09','2023-11-01 13:25:09');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2311010000000000014,1716346406098296832,'普通用户72135',1,'下单时间错误','2023-11-01 21:29:39','2023-11-01 13:30:35','2023-11-01 13:30:35');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2311010000000000015,1716346406098296832,'普通用户72135',1,'商家联系不上','2023-11-01 21:59:18','2023-11-01 14:00:13','2023-11-01 14:00:13');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2311020000000000018,1716346406098296832,'普通用户72135',1,'下单时间错误','2023-11-02 10:02:01','2023-11-02 10:02:52','2023-11-02 10:02:52');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2311020000000000019,1716346406098296832,'普通用户72135',1,'下单时间错误','2023-11-02 10:05:09','2023-11-02 10:06:00','2023-11-02 10:06:00');
INSERT INTO `orders_canceled` (`id`, `canceller_id`, `canceler_name`, `canceller_type`, `cancel_reason`, `cancel_time`, `create_time`, `update_time`) VALUES (2311020000000000020,1716346406098296832,'普通用户72135',1,'下单时间错误','2023-11-02 17:03:12','2023-11-02 17:04:06','2023-11-02 17:04:06');
/*!40000 ALTER TABLE `orders_canceled` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_dispatch`
--

DROP TABLE IF EXISTS `orders_dispatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_dispatch` (
  `id` bigint NOT NULL COMMENT '订单id',
  `orders_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '订单id',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '城市编码',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务分类id',
  `serve_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务名称',
  `serve_type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务分类名称',
  `serve_item_id` bigint DEFAULT NULL COMMENT '服务项id',
  `serve_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务地址',
  `serve_item_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务项目图片',
  `orders_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `serve_start_time` datetime NOT NULL COMMENT '服务开始时间',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `pur_num` int NOT NULL COMMENT '服务数量',
  `is_transfer_manual` int DEFAULT '0' COMMENT '是否转人工',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='派单池';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_dispatch`
--

LOCK TABLES `orders_dispatch` WRITE;
/*!40000 ALTER TABLE `orders_dispatch` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_dispatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_refund`
--

DROP TABLE IF EXISTS `orders_refund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_refund` (
  `id` bigint NOT NULL COMMENT '订单id',
  `trading_order_no` bigint DEFAULT NULL COMMENT '支付服务交易单号',
  `real_pay_amount` decimal(10,2) DEFAULT NULL COMMENT '实付金额',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单退款表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_refund`
--

LOCK TABLES `orders_refund` WRITE;
/*!40000 ALTER TABLE `orders_refund` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_refund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_seize`
--

DROP TABLE IF EXISTS `orders_seize`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_seize` (
  `id` bigint NOT NULL COMMENT '订单id',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '城市编码',
  `serve_type_id` bigint DEFAULT NULL COMMENT '服务分类id',
  `serve_item_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务名称',
  `serve_type_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务分类名称',
  `serve_item_id` bigint DEFAULT NULL COMMENT '服务项id',
  `serve_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务地址',
  `serve_item_img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '服务项目图片',
  `orders_amount` decimal(10,2) DEFAULT NULL COMMENT '订单总金额',
  `serve_start_time` datetime NOT NULL COMMENT '服务开始时间',
  `pay_success_time` datetime DEFAULT NULL COMMENT '订单支付成功时间，用于计算是否进入派单',
  `lon` double(10,5) DEFAULT NULL COMMENT '经度',
  `lat` double(10,5) DEFAULT NULL COMMENT '纬度',
  `pur_num` int NOT NULL COMMENT '服务数量',
  `is_time_out` int DEFAULT '0' COMMENT '抢单是否超时',
  `sort_by` bigint DEFAULT NULL COMMENT '抢单列表排序字段',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `sort_by_index` (`sort_by`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='抢单池';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_seize`
--

LOCK TABLES `orders_seize` WRITE;
/*!40000 ALTER TABLE `orders_seize` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_seize` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_serve`
--

DROP TABLE IF EXISTS `orders_serve`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders_serve` (
  `id` bigint NOT NULL COMMENT '任务id',
  `user_id` bigint DEFAULT NULL COMMENT '属于哪个用户',
  `serve_provider_id` bigint NOT NULL COMMENT '服务人员或服务机构id',
  `serve_provider_type` int DEFAULT NULL COMMENT '服务者类型，2：服务端服务，3：机构端服务',
  `institution_staff_id` bigint DEFAULT NULL COMMENT '机构服务人员id',
  `orders_id` bigint NOT NULL COMMENT '订单id',
  `orders_origin_type` int NOT NULL COMMENT '订单来源类型，1：抢单，2：派单',
  `city_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '城市编码',
  `serve_type_id` bigint NOT NULL COMMENT '服务分类id',
  `serve_start_time` datetime DEFAULT NULL COMMENT '预约时间',
  `serve_item_id` bigint NOT NULL COMMENT '服务项id',
  `serve_status` int NOT NULL COMMENT '任务状态',
  `settlement_status` int NOT NULL DEFAULT '0' COMMENT '结算状态，0：不可结算，1：待结算，2：结算完成',
  `real_serve_start_time` datetime DEFAULT NULL COMMENT '实际服务开始时间',
  `real_serve_end_time` datetime DEFAULT NULL COMMENT '实际服务完结时间',
  `serve_before_imgs` json DEFAULT NULL COMMENT '服务前照片',
  `serve_after_imgs` json DEFAULT NULL COMMENT '服务后照片',
  `serve_item_img` varchar(255) DEFAULT NULL,
  `serve_before_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务前说明',
  `serve_after_illustrate` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '服务后说明',
  `cancel_time` datetime DEFAULT NULL COMMENT '取消时间,可以是退单，可以是取消时间',
  `orders_amount` decimal(10,2) DEFAULT NULL COMMENT '订单金额',
  `pur_num` int DEFAULT NULL COMMENT '购买数量',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `sort_by` bigint DEFAULT NULL COMMENT '排序字段（serve_start_time（秒级时间戳）+订单id（后6位））',
  `display` int DEFAULT '1' COMMENT '服务端/机构端是否展示，1：展示，0：隐藏',
  `update_by` bigint DEFAULT NULL COMMENT '更新人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='服务单表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_serve`
--

LOCK TABLES `orders_serve` WRITE;
/*!40000 ALTER TABLE `orders_serve` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders_serve` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `serve_provider_sync`
--

DROP TABLE IF EXISTS `serve_provider_sync`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `serve_provider_sync` (
  `id` bigint NOT NULL,
  `serve_times` json DEFAULT NULL COMMENT '服务时间段',
  `acceptance_num` int DEFAULT NULL COMMENT '接单数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='服务状态表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `serve_provider_sync`
--

LOCK TABLES `serve_provider_sync` WRITE;
/*!40000 ALTER TABLE `serve_provider_sync` DISABLE KEYS */;
INSERT INTO `serve_provider_sync` (`id`, `serve_times`, `acceptance_num`) VALUES (1696338624494202882,'[2023101723, 2023101722]',2);
INSERT INTO `serve_provider_sync` (`id`, `serve_times`, `acceptance_num`) VALUES (1696706462195150849,'[]',2);
/*!40000 ALTER TABLE `serve_provider_sync` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state_persister`
--

DROP TABLE IF EXISTS `state_persister`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state_persister` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `state_machine_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态机名称',
  `biz_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '业务id',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '状态',
  `create_time` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_time` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `唯一索引` (`state_machine_name`,`biz_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1720002969933725699 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='状态机持久化表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state_persister`
--

LOCK TABLES `state_persister` WRITE;
/*!40000 ALTER TABLE `state_persister` DISABLE KEYS */;
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1703597113423974402,'order','2309180000000000017','DISPATCHING','2023-09-18 02:30:29','2023-09-18 02:30:32');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1703614442400677890,'order','2309180000000000018','CANCELED','2023-09-18 03:39:21','2023-09-20 08:34:42');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1703614852641415169,'order','2309180000000000019','DISPATCHING','2023-09-18 03:40:58','2023-09-18 03:41:01');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1703717277117251586,'order','2309180000000000020','DISPATCHING','2023-09-18 10:27:58','2023-09-18 10:28:01');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704036781277843457,'order','2309190000000000021','DISPATCHING','2023-09-19 07:37:34','2023-09-19 07:37:36');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704037259042623490,'order','2309190000000000022','DISPATCHING','2023-09-19 07:39:28','2023-09-19 07:39:28');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704037987173797889,'order','2309190000000000023','DISPATCHING','2023-09-19 07:42:21','2023-09-19 07:42:21');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704038886696816642,'order','2309190000000000024','DISPATCHING','2023-09-19 07:45:56','2023-09-19 07:45:56');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704039201630326785,'order','2309190000000000025','DISPATCHING','2023-09-19 07:47:11','2023-09-19 07:47:11');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704039671891574786,'order','2309190000000000026','DISPATCHING','2023-09-19 07:49:03','2023-09-19 07:49:06');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704041100601462786,'order','2309190000000000027','DISPATCHING','2023-09-19 07:54:44','2023-09-19 07:54:46');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704064867142795265,'order','2309190000000000028','DISPATCHING','2023-09-19 09:29:10','2023-09-19 09:29:30');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704065848488341505,'order','2309190000000000029','DISPATCHING','2023-09-19 09:33:04','2023-09-19 09:33:14');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704066275527208961,'order','2309190000000000030','DISPATCHING','2023-09-19 09:34:46','2023-09-19 09:34:54');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704067124496281601,'order','2309190000000000031','DISPATCHING','2023-09-19 09:38:08','2023-09-19 09:38:55');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704069905735024641,'order','2309190000000000032','CLOSED','2023-09-19 09:49:11','2023-09-20 08:22:43');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704413690130087937,'order','2309200000000000033','DISPATCHING','2023-09-20 08:35:17','2023-09-20 08:35:17');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704764690116395009,'order','2309210000000000034','NO_SERVE','2023-09-21 07:50:01','2023-09-21 08:48:52');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704780558942617602,'order','2309210000000000035','NO_SERVE','2023-09-21 08:53:05','2023-09-21 08:53:20');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704781563553923073,'order','2309210000000000036','CLOSED','2023-09-21 08:57:04','2023-09-23 09:31:43');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704781858841313281,'order','2309210000000000037','FINISHED','2023-09-21 08:58:15','2023-09-23 07:37:19');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704794391111397377,'order','2309210000000000038','DISPATCHING','2023-09-21 09:48:03','2023-09-21 10:02:41');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704794766241558529,'order','2309210000000000039','FINISHED','2023-09-21 09:49:32','2023-09-22 13:35:50');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704796846855385089,'order','2309210000000000041','CLOSED','2023-09-21 09:57:48','2023-09-22 03:05:56');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1704842734885761026,'order','2309210000000000042','FINISHED','2023-09-21 13:00:09','2023-09-22 13:21:00');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1705496792029986818,'order','2309230000000000043','FINISHED','2023-09-23 08:19:08','2023-09-26 02:52:08');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1705852641625882625,'order','test101','NO_PAY','2023-09-24 07:53:12','2023-09-24 07:53:12');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1705854124530462721,'order','101','DISPATCHING','2023-09-24 07:59:06','2023-09-24 08:11:41');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1705863029281112066,'order','102','DISPATCHING','2023-09-24 08:34:29','2023-09-24 08:34:31');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1706149491759235074,'order','2309250000000000044','DISPATCHING','2023-09-25 03:32:43','2023-09-25 03:32:46');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1706184714437795841,'order','2309250000000000051','DISPATCHING','2023-09-25 05:52:41','2023-09-25 05:52:41');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1706190087186030594,'order','2309250000000000056','DISPATCHING','2023-09-25 06:14:02','2023-09-25 06:14:02');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1706190243935559681,'order','2309250000000000057','CLOSED','2023-09-25 06:14:39','2023-09-26 05:38:06');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1706195187010920449,'order','2309250000000000060','CLOSED','2023-09-25 06:34:18','2023-09-26 05:37:53');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1706554508697784321,'order','2309260000000000061','NO_EVALUATION','2023-09-26 06:22:08','2023-09-26 06:59:26');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1706572987001786370,'order','2309260000000000062','CLOSED','2023-09-26 07:35:33','2023-09-26 07:35:59');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1706575339490430978,'order','2309260000000000063','CLOSED','2023-09-26 07:44:54','2023-09-26 07:46:12');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1706575748061777922,'order','2309260000000000064','NO_EVALUATION','2023-09-26 07:46:31','2023-09-26 07:49:33');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1714219032242339841,'order','2310170000000000001','NO_SERVE','2023-10-17 09:58:12','2023-10-17 13:01:10');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1714256780227559426,'order','2310170000000000002','NO_EVALUATION','2023-10-17 12:28:12','2023-10-17 12:49:16');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1714264289302593537,'order','2310170000000000003','NO_SERVE','2023-10-17 12:58:02','2023-10-17 12:58:10');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1718188647226114050,'order','2310280000000000004','CLOSED','2023-10-28 08:52:02','2023-10-28 09:04:57');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1718264289591660545,'order','2310280000000000005','CLOSED','2023-10-28 13:52:37','2023-10-28 13:53:25');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1719546857350496258,'order','103','NO_PAY','2023-11-01 02:49:09','2023-11-01 02:49:09');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1719556737713164289,'order','104','DISPATCHING','2023-11-01 03:28:24','2023-11-01 03:28:27');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1719608226116538369,'order','2311010000000000012','NO_PAY','2023-11-01 06:53:00','2023-11-01 06:53:00');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1719706845020692482,'order','2311010000000000013','NO_PAY','2023-11-01 13:24:53','2023-11-01 13:24:53');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1719708214578499585,'order','2311010000000000014','NO_PAY','2023-11-01 13:30:19','2023-11-01 13:30:19');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1719712026588356610,'order','2311010000000000015','DISPATCHING','2023-11-01 13:45:28','2023-11-01 13:55:12');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1719716652444295170,'order','2311010000000000016','NO_PAY','2023-11-01 14:03:51','2023-11-01 14:03:51');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1719717256277270530,'order','2311010000000000017','NO_PAY','2023-11-01 14:06:15','2023-11-01 14:06:15');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1719717761518936065,'order','2311010000000000018','NO_PAY','2023-11-01 14:08:16','2023-11-01 14:08:16');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1719718371072942082,'order','2311010000000000019','NO_PAY','2023-11-01 14:10:41','2023-11-01 14:10:41');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1719887677958148098,'order','2311020000000000018','NO_PAY','2023-11-02 09:23:22','2023-11-02 09:23:22');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1719898030544801794,'order','2311020000000000019','DISPATCHING','2023-11-02 10:04:30','2023-11-02 10:04:57');
INSERT INTO `state_persister` (`id`, `state_machine_name`, `biz_id`, `state`, `create_time`, `update_time`) VALUES (1720002969933725698,'order','2311020000000000020','DISPATCHING','2023-11-02 17:01:33','2023-11-02 17:03:40');
/*!40000 ALTER TABLE `state_persister` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-03 10:59:36
