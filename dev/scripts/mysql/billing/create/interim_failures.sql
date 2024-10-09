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
-- Table structure for table `interim_failures`
--

DROP TABLE IF EXISTS `interim_failures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interim_failures` (
  `cli_id` bigint(16) NOT NULL,
  `file_id` varchar(25) DEFAULT NULL,
  `msg_id` varchar(25) NOT NULL,
  `dest` bigint(15) DEFAULT NULL,
  `recv_date` date NOT NULL,
  `recv_time` datetime(3) NOT NULL,
  `retry_attempt` tinyint(1) DEFAULT NULL,
  `msg_type` tinyint(1) NOT NULL,
  `route_id` varchar(6) DEFAULT NULL,
  `retry_ori_route_id` varchar(6) DEFAULT NULL,
  `sms_priority` tinyint(1) NOT NULL,
  `carrier_rcvd_time` datetime(3) DEFAULT NULL,
  `carrier_ack_id` varchar(100) DEFAULT NULL,
  `carrier_sys_id` varchar(20) DEFAULT NULL,
  `carrier_full_dn` varchar(2000) DEFAULT NULL,
  `hdr` varchar(15) DEFAULT NULL,
  `msg_part_no` tinyint(3) DEFAULT NULL,
  `bill_type` tinyint(1) NOT NULL,
  `company` varchar(150) DEFAULT NULL,
  `msg_class` varchar(5) DEFAULT NULL,
  `circle` varchar(200) DEFAULT NULL,
  `carrier` varchar(200) DEFAULT NULL,
  `term_carrier` varchar(200) DEFAULT NULL,
  `term_circle` varchar(200) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `alpha` tinyint(4) DEFAULT NULL,
  `dn_ori_sts_code` varchar(5) NOT NULL,
  `dn_ori_sts_desc` varchar(100) NOT NULL,
  `car_ori_sts_code` varchar(5) DEFAULT NULL,
  `car_ori_sts_desc` varchar(100) DEFAULT NULL,
  `msg_credits` decimal(10,3) DEFAULT NULL,
  `dlt_credits` decimal(10,3) DEFAULT NULL,
  `delivery_status` varchar(10) DEFAULT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  KEY `msg_id` (`msg_id`),
  KEY `dest` (`dest`),
  KEY `cli_id` (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interim_failures`
--

LOCK TABLES `interim_failures` WRITE;
/*!40000 ALTER TABLE `interim_failures` DISABLE KEYS */;
/*!40000 ALTER TABLE `interim_failures` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-09 15:37:32
