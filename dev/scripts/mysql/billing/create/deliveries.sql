-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.1.136    Database: billing
-- ------------------------------------------------------
-- Server version	10.5.12-MariaDB-1:10.5.12+maria~bionic-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deliveries` (
  `cli_id` bigint(16) NOT NULL,
  `platform_cluster` varchar(10) NOT NULL,
  `sms_priority` tinyint(1) NOT NULL,
  `dn_hdr` varchar(15) DEFAULT NULL,
  `dest` bigint(15) DEFAULT NULL,
  `base_msg_id` varchar(25) DEFAULT NULL,
  `msg_id` varchar(25) NOT NULL,
  `file_id` varchar(25) DEFAULT NULL,
  `recv_time` datetime(3) NOT NULL,
  `recv_date` date NOT NULL,
  `act_recv_time` datetime(3) NOT NULL,
  `act_recv_date` date NOT NULL,
  `carrier_datetime_format` varchar(15) DEFAULT NULL,
  `msg_part_no` tinyint(3) DEFAULT NULL,
  `total_msg_parts` tinyint(3) DEFAULT NULL,
  `retry_attempt` tinyint(1) DEFAULT NULL,
  `act_route_id` varchar(6) DEFAULT NULL,
  `route_id` varchar(6) DEFAULT NULL,
  `dlr_from_internal` tinyint(1) DEFAULT NULL,
  `route_logic_id` varchar(3) DEFAULT NULL,
  `smsc_id` varchar(20) DEFAULT NULL,
  `carrier_full_dn` varchar(2000) DEFAULT NULL,
  `dly_time` datetime(3) DEFAULT NULL,
  `act_dly_time` datetime(3) DEFAULT NULL,
  `carrier_rcvd_time` datetime(3) DEFAULT NULL,
  `carrier_ack_id` varchar(100) DEFAULT NULL,
  `carrier_sys_id` varchar(20) DEFAULT NULL,
  `term_carrier` varchar(200) DEFAULT NULL,
  `term_circle` varchar(200) DEFAULT NULL,
  `delv_lat_ori_in_millis` bigint(10) DEFAULT NULL,
  `delv_lat_sla_in_millis` bigint(10) DEFAULT NULL,
  `overall_lat_in_millis` bigint(10) DEFAULT NULL,
  `dlr_type` tinyint(1) DEFAULT NULL,
  `dn_ori_sts_code` varchar(5) NOT NULL,
  `dn_cli_sts_code` varchar(5) NOT NULL,
  `dn_ori_sts_desc` varchar(100) NOT NULL,
  `dn_cli_sts_desc` varchar(100) NOT NULL,
  `car_ori_sts_code` varchar(5) DEFAULT NULL,
  `car_ori_sts_desc` varchar(10) DEFAULT NULL,
  `car_sts_code` varchar(100) DEFAULT NULL,
  `car_sts_desc` varchar(100) DEFAULT NULL,
  `retry_ori_route_id` varchar(6) DEFAULT NULL,
  `retry_alt_route_id` varchar(6) DEFAULT NULL,
  `delivery_status` varchar(10) DEFAULT NULL,
  `car_delivery_status` varchar(10) DEFAULT NULL COMMENT 'Carrier Delivery Status',
  `sms_rate` decimal(10,4) NOT NULL DEFAULT 0.0000 COMMENT 'Sms rate per message',
  `dlt_rate` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `billing_sms_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000,
  `billing_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000 COMMENT 'Billing Additional Fixed Rate',
  `base_sms_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000 COMMENT 'Base SMS Rate',
  `base_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000 COMMENT 'Base Additional Fixed Rate',
  `ref_sms_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000 COMMENT 'Refrence SMS Rate',
  `ref_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000 COMMENT 'Refrence Additional Fixed Rate',
  KEY `del_file_id` (`file_id`),
  KEY `deliveries_idx` (`msg_id`),
  KEY `base_msg_id` (`base_msg_id`),
  KEY `cli_id` (`cli_id`),
  KEY `recv_date` (`recv_date`),
  KEY `recv_time` (`recv_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deliveries`
--

LOCK TABLES `deliveries` WRITE;
/*!40000 ALTER TABLE `deliveries` DISABLE KEYS */;
INSERT INTO `deliveries` VALUES (6000000200000000,'bulk',2,'BRAINT',919999999999,NULL,'2732109151930190001400','2732109151930190001300','2021-09-15 19:30:19.000','2021-09-15','2021-09-15 19:30:19.000','2021-09-15','yyMMddHHmm',1,1,0,NULL,NULL,0,NULL,'smpp','ID:1 SUB:001 DLVRD:001 SUBMITDATE:2109151930 DONEDATE:2109151930 STAT:DELIVRD ERR:000 TEXT:NULL','2021-09-15 19:30:31.000','2021-09-15 19:30:21.000','2021-09-15 19:30:21.000','1','smpp','Others','Others',0,0,0,0,'608','608','DELIVRD','Failed','000',NULL,'000',NULL,NULL,NULL,'DELIVRD',NULL,0.0000,0.0000,'2021-09-15 19:29:59',0.000000000000,0.000000000000,0.000000000000,0.000000000000,0.000000000000,0.000000000000),(6000000200000000,'bulk',2,'BRAINT',919999999999,NULL,'2732109151930190000200','2732109151930190000100','2021-09-15 19:30:18.000','2021-09-15','2021-09-15 19:30:18.000','2021-09-15','yyMMddHHmm',1,1,0,NULL,NULL,0,NULL,'smpp','ID:1 SUB:001 DLVRD:001 SUBMITDATE:2109151930 DONEDATE:2109151930 STAT:DELIVRD ERR:000 TEXT:NULL','2021-09-15 19:30:27.000','2021-09-15 19:30:21.000','2021-09-15 19:30:21.000','1','smpp','Others','Others',0,0,0,0,'608','608','DELIVRD','Failed','000',NULL,'000',NULL,NULL,NULL,'DELIVRD',NULL,0.0000,0.0000,'2021-09-15 19:30:00',0.000000000000,0.000000000000,0.000000000000,0.000000000000,0.000000000000,0.000000000000);
/*!40000 ALTER TABLE `deliveries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-09 15:38:17
