-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: 192.168.1.136    Database: configuration
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
-- Current Database: `configuration`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `configuration` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `configuration`;

--
-- Table structure for table `app_config_values`
--

DROP TABLE IF EXISTS `app_config_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_config_values` (
  `param_key` varchar(100) NOT NULL,
  `key_value` varchar(500) NOT NULL,
  `desc` varchar(200) NOT NULL,
  PRIMARY KEY (`param_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `app_config_values_bk`
--

DROP TABLE IF EXISTS `app_config_values_bk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_config_values_bk` (
  `param_key` varchar(100) CHARACTER SET latin1 NOT NULL,
  `key_value` varchar(500) CHARACTER SET latin1 NOT NULL,
  `desc` varchar(200) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bill_log_map`
--

DROP TABLE IF EXISTS `bill_log_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_log_map` (
  `cli_id` bigint(16) NOT NULL,
  `jndi_info_id` int(5) NOT NULL DEFAULT 0,
  `suffix` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `bill_log_map_default`
--

DROP TABLE IF EXISTS `bill_log_map_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bill_log_map_default` (
  `jndi_info_id` int(5) NOT NULL,
  PRIMARY KEY (`jndi_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `billing_currency_master`
--

DROP TABLE IF EXISTS `billing_currency_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing_currency_master` (
  `currency_code` varchar(4) NOT NULL COMMENT 'unique currency code',
  `desc` varchar(100) DEFAULT NULL COMMENT 'desc of the currency code',
  PRIMARY KEY (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `calendar_info`
--

DROP TABLE IF EXISTS `calendar_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `calendar_info` (
  `date_key` int(8) NOT NULL,
  `date_value` date NOT NULL,
  `date_key_str` char(8) NOT NULL,
  `ISO_date_str` char(10) NOT NULL,
  `year` int(4) NOT NULL,
  `year_yy` int(2) NOT NULL,
  `year_str` char(4) NOT NULL,
  `year_yy_str` char(2) NOT NULL,
  `year_start_date` date NOT NULL,
  `year_end_date` date NOT NULL,
  `month` int(2) NOT NULL,
  `month_str` varchar(2) NOT NULL,
  `month_name` varchar(15) NOT NULL,
  `month_sname` char(3) NOT NULL,
  `month_start_date` date NOT NULL,
  `month_end_date` date NOT NULL,
  `dayof_month` int(2) NOT NULL,
  `dayof_year` int(3) NOT NULL,
  `dayof_month_str` varchar(2) NOT NULL,
  `dayof_year_str` varchar(3) NOT NULL,
  `days_in_month` int(2) DEFAULT NULL,
  `days_in_month_str` varchar(2) NOT NULL,
  `days_in_year` int(3) NOT NULL,
  `days_in_year_str` varchar(3) NOT NULL,
  `weekday_sun1` int(1) NOT NULL,
  `weekday_mon1` int(1) NOT NULL,
  `weekday_name` varchar(10) NOT NULL,
  `weekday_sname` char(3) NOT NULL,
  `weekno_year` int(2) NOT NULL,
  `ISO_weekno` int(2) NOT NULL,
  `weekno_year_sun1` int(2) NOT NULL,
  `weekno_year_mon1` int(2) NOT NULL,
  `weekno_year_str` varchar(2) NOT NULL,
  `ISO_weekno_str` varchar(2) NOT NULL,
  `weekno_year_sun1_str` varchar(2) NOT NULL,
  `weekno_year_mon1_str` varchar(2) NOT NULL,
  `week_sun1_start_date` date NOT NULL,
  `week_sun1_end_date` date NOT NULL,
  `week_mon1_start_date` date NOT NULL,
  `week_mon1_end_date` date NOT NULL,
  `weekno_month` int(1) NOT NULL,
  `weekno_month_sun1` int(1) NOT NULL,
  `weekno_month_mon1` int(1) NOT NULL,
  `weekno_month_str` varchar(2) NOT NULL,
  `weekno_month_sun1_str` varchar(2) NOT NULL,
  `weekno_month_mon1_str` varchar(2) NOT NULL,
  `half_year_no` int(1) NOT NULL,
  `quarter` int(1) NOT NULL,
  `quarter_start_date` date NOT NULL,
  `quarter_end_date` date NOT NULL,
  `dayof_quarter` int(2) NOT NULL,
  `dayof_quarter_str` varchar(2) NOT NULL,
  `month_quarter` int(1) NOT NULL,
  `weekno_quarter` int(2) NOT NULL,
  `weekno_quarter_str` varchar(2) NOT NULL,
  `weekno_quarter_sun1` int(2) NOT NULL,
  `weekno_quarter_mon1` int(2) NOT NULL,
  `weekno_quarter_sun1_str` varchar(2) NOT NULL,
  `weekno_quarter_mon1_str` varchar(2) NOT NULL,
  `remaining_days_month` int(2) NOT NULL,
  `remaining_days_year` int(3) NOT NULL,
  `remaining_days_quarter` int(2) NOT NULL,
  `dayof_finance_year` int(3) NOT NULL,
  `dayof_finance_year_str` varchar(3) NOT NULL,
  `finance_year_start_date` date NOT NULL,
  `finance_year_end_date` date NOT NULL,
  `finance_month` int(2) NOT NULL,
  `finance_month_str` varchar(2) NOT NULL,
  `finance_quarter` int(1) NOT NULL,
  `finance_from_to_yyyy` char(9) NOT NULL,
  `finance_from_to_yy` char(5) NOT NULL,
  `finance_half_year_no` int(1) NOT NULL,
  `is_year_start` int(1) NOT NULL,
  `is_year_end` int(1) NOT NULL,
  `is_month_end` int(1) NOT NULL,
  `is_week_end` int(1) NOT NULL,
  `is_quarter_start` int(1) NOT NULL,
  `is_quarter_end` int(1) NOT NULL,
  `is_year_1half_end` int(1) NOT NULL,
  `is_year_2half_start` int(1) NOT NULL,
  `is_finance_year_start` int(1) NOT NULL,
  `is_finance_year_end` int(1) NOT NULL,
  `is_finance_1half_end` int(1) NOT NULL,
  `is_finance_2half_start` int(1) NOT NULL,
  `is_leap_year` int(1) NOT NULL,
  PRIMARY KEY (`date_key`),
  KEY `date_value` (`date_value`),
  KEY `year` (`year`,`month`,`dayof_month`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carrier_error_code`
--

DROP TABLE IF EXISTS `carrier_error_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrier_error_code` (
  `route_id` varchar(6) NOT NULL,
  `error_code` varchar(5) NOT NULL,
  `error_desc` varchar(200) DEFAULT NULL,
  `error_status` varchar(10) NOT NULL,
  `failure_type` tinyint(1) NOT NULL COMMENT '2, Parmanant, 3- temporary',
  `platform_error_code` varchar(5) NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `Column9` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`route_id`,`error_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carrier_error_code_02022023`
--

DROP TABLE IF EXISTS `carrier_error_code_02022023`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrier_error_code_02022023` (
  `route_id` varchar(6) NOT NULL,
  `error_code` varchar(5) NOT NULL,
  `error_desc` varchar(200) DEFAULT NULL,
  `error_status` varchar(10) NOT NULL,
  `failure_type` tinyint(1) NOT NULL COMMENT '2, Parmanant, 3- temporary',
  `platform_error_code` varchar(5) NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  PRIMARY KEY (`route_id`,`error_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carrier_error_code_20211215`
--

DROP TABLE IF EXISTS `carrier_error_code_20211215`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrier_error_code_20211215` (
  `route_id` varchar(6) CHARACTER SET latin1 NOT NULL,
  `error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `error_desc` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `error_status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `failure_type` tinyint(1) NOT NULL COMMENT '2, Parmanant, 3- temporary',
  `platform_error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carrier_error_code_20220117`
--

DROP TABLE IF EXISTS `carrier_error_code_20220117`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrier_error_code_20220117` (
  `route_id` varchar(6) CHARACTER SET latin1 NOT NULL,
  `error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `error_desc` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `error_status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `failure_type` tinyint(1) NOT NULL COMMENT '2, Parmanant, 3- temporary',
  `platform_error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carrier_error_code_20220205`
--

DROP TABLE IF EXISTS `carrier_error_code_20220205`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrier_error_code_20220205` (
  `route_id` varchar(6) CHARACTER SET latin1 NOT NULL,
  `error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `error_desc` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `error_status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `failure_type` tinyint(1) NOT NULL COMMENT '2, Parmanant, 3- temporary',
  `platform_error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carrier_error_code_20220207`
--

DROP TABLE IF EXISTS `carrier_error_code_20220207`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrier_error_code_20220207` (
  `route_id` varchar(6) CHARACTER SET latin1 NOT NULL,
  `error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `error_desc` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `error_status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `failure_type` tinyint(1) NOT NULL COMMENT '2, Parmanant, 3- temporary',
  `platform_error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carrier_error_code_20220207_2`
--

DROP TABLE IF EXISTS `carrier_error_code_20220207_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrier_error_code_20220207_2` (
  `route_id` varchar(6) CHARACTER SET latin1 NOT NULL,
  `error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `error_desc` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `error_status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `failure_type` tinyint(1) NOT NULL COMMENT '2, Parmanant, 3- temporary',
  `platform_error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carrier_error_code_20220208`
--

DROP TABLE IF EXISTS `carrier_error_code_20220208`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrier_error_code_20220208` (
  `route_id` varchar(6) CHARACTER SET latin1 NOT NULL,
  `error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `error_desc` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `error_status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `failure_type` tinyint(1) NOT NULL COMMENT '2, Parmanant, 3- temporary',
  `platform_error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carrier_error_code_20220303`
--

DROP TABLE IF EXISTS `carrier_error_code_20220303`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrier_error_code_20220303` (
  `route_id` varchar(6) CHARACTER SET latin1 NOT NULL,
  `error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `error_desc` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `error_status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `failure_type` tinyint(1) NOT NULL COMMENT '2, Parmanant, 3- temporary',
  `platform_error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carrier_error_code_20220307`
--

DROP TABLE IF EXISTS `carrier_error_code_20220307`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrier_error_code_20220307` (
  `route_id` varchar(6) CHARACTER SET latin1 NOT NULL,
  `error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `error_desc` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `error_status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `failure_type` tinyint(1) NOT NULL COMMENT '2, Parmanant, 3- temporary',
  `platform_error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `carrier_error_code_30NOV2021`
--

DROP TABLE IF EXISTS `carrier_error_code_30NOV2021`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrier_error_code_30NOV2021` (
  `route_id` varchar(6) CHARACTER SET latin1 NOT NULL,
  `error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `error_desc` varchar(200) CHARACTER SET latin1 DEFAULT NULL,
  `error_status` varchar(10) CHARACTER SET latin1 NOT NULL,
  `failure_type` tinyint(1) NOT NULL COMMENT '2, Parmanant, 3- temporary',
  `platform_error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `circle_exclude_config`
--

DROP TABLE IF EXISTS `circle_exclude_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `circle_exclude_config` (
  `cli_id` bigint(16) NOT NULL,
  `circle` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_crypto_info`
--

DROP TABLE IF EXISTS `client_crypto_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_crypto_info` (
  `seq_no` bigint(9) NOT NULL AUTO_INCREMENT,
  `cli_id` bigint(16) NOT NULL,
  `incoming_crypto_type` tinyint(1) DEFAULT NULL COMMENT '0-none,1-Encoded, 2-Encrypted, other than 0,1, 2 all others are not useful',
  `incoming_crypto_alogrithm` varchar(50) DEFAULT NULL COMMENT 'Type of Crypting algorithm',
  `billing_crypto_type` tinyint(1) DEFAULT NULL COMMENT '0-none, 1-Encoded, 2- Encrypted, 3-Hashed, 4-Blank',
  `billing_crypto_algorithm` varchar(50) DEFAULT NULL COMMENT 'Type of Crypting algorithm',
  `billing_crypto_columns` tinyint(1) DEFAULT NULL COMMENT '1-Mobile only, 2-Message only, 3- Mobile and Message. This is applicable for submission, deliveries and full_message tables',
  `handover_crypto_type` tinyint(1) DEFAULT NULL COMMENT '0-none,1-Encoded, 2-Encrypted, other than 0,1, 2 all others are not useful',
  `handover_crypto_algorithm` varchar(50) DEFAULT NULL COMMENT 'Type of Crypting algorithm',
  `incoming_crypto_param_1` varchar(100) DEFAULT NULL,
  `incoming_crypto_param_2` varchar(100) DEFAULT NULL,
  `incoming_crypto_param_3` varchar(100) DEFAULT NULL,
  `incoming_crypto_param_4` varchar(100) DEFAULT NULL,
  `incoming_crypto_param_5` varchar(100) DEFAULT NULL,
  `billing_crypto_param_1` varchar(100) DEFAULT NULL,
  `billing_crypto_param_2` varchar(100) DEFAULT NULL,
  `billing_crypto_param_3` varchar(100) DEFAULT NULL,
  `billing_crypto_param_4` varchar(100) DEFAULT NULL,
  `billing_crypto_param_5` varchar(100) DEFAULT NULL,
  `handover_crypto_param_1` varchar(100) DEFAULT NULL,
  `handover_crypto_param_2` varchar(100) DEFAULT NULL,
  `handover_crypto_param_3` varchar(100) DEFAULT NULL,
  `handover_crypto_param_4` varchar(100) DEFAULT NULL,
  `handover_crypto_param_5` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`seq_no`),
  UNIQUE KEY `client_crypto_info_UN_1` (`cli_id`,`incoming_crypto_type`),
  UNIQUE KEY `client_crypto_info_UN_2` (`cli_id`,`billing_crypto_type`),
  UNIQUE KEY `client_crypto_info_UN_3` (`cli_id`,`billing_crypto_columns`),
  UNIQUE KEY `client_crypto_info_UN_4` (`cli_id`,`handover_crypto_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_error_code`
--

DROP TABLE IF EXISTS `client_error_code`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_error_code` (
  `cli_id` bigint(16) NOT NULL,
  `platform_error_code` varchar(5) NOT NULL,
  `client_error_code` varchar(10) NOT NULL,
  `client_error_desc` varchar(200) NOT NULL,
  `dlr_status` varchar(10) NOT NULL,
  `active_flag` tinyint(1) NOT NULL DEFAULT 1,
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`cli_id`,`platform_error_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_intl_credits`
--

DROP TABLE IF EXISTS `client_intl_credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_intl_credits` (
  `cli_id` bigint(16) NOT NULL,
  `country` varchar(50) NOT NULL COMMENT 'RoW - means rest of world.',
  `credits` decimal(10,4) NOT NULL,
  PRIMARY KEY (`cli_id`,`country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_intl_rates`
--

DROP TABLE IF EXISTS `client_intl_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_intl_rates` (
  `cli_id` bigint(16) NOT NULL,
  `country` varchar(50) NOT NULL COMMENT 'ROW - means rest of world.',
  `base_sms_rate` decimal(16,12) NOT NULL,
  `base_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000,
  PRIMARY KEY (`cli_id`,`country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_msg_prefix_suffix`
--

DROP TABLE IF EXISTS `client_msg_prefix_suffix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_msg_prefix_suffix` (
  `cli_id` bigint(16) NOT NULL,
  `country` varchar(150) NOT NULL,
  `header` varchar(9) NOT NULL DEFAULT 'ALL',
  `msg_prefix` varchar(100) DEFAULT NULL,
  `msg_suffix` varchar(100) DEFAULT NULL,
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_specific_component`
--

DROP TABLE IF EXISTS `client_specific_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_specific_component` (
  `component_name` varchar(50) NOT NULL,
  `cli_id` bigint(16) NOT NULL COMMENT 'it can be 10, 12, 16 char length for SuperUser, AdminUser and User',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`component_name`,`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `client_throttle`
--

DROP TABLE IF EXISTS `client_throttle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_throttle` (
  `cli_id` bigint(20) NOT NULL,
  `msg_per_sec` int(11) NOT NULL DEFAULT 500,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cluster_component_datasource_map_detail`
--

DROP TABLE IF EXISTS `cluster_component_datasource_map_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cluster_component_datasource_map_detail` (
  `datasource_map_id` int(11) NOT NULL,
  `datasource_type` varchar(10) NOT NULL,
  `datasource_id` varchar(100) NOT NULL,
  `seq_no` int(11) NOT NULL,
  `max_pool_size` int(11) NOT NULL DEFAULT 10,
  `max_idle_count` int(11) NOT NULL DEFAULT 10,
  `min_idle_count` int(11) NOT NULL DEFAULT 1,
  `debug_enabled` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`datasource_map_id`,`datasource_type`,`datasource_id`,`seq_no`),
  CONSTRAINT `cluster_component_datasource_map_detail_FK` FOREIGN KEY (`datasource_map_id`) REFERENCES `cluster_component_datasource_map_master` (`datasource_map_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cluster_component_datasource_map_master`
--

DROP TABLE IF EXISTS `cluster_component_datasource_map_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cluster_component_datasource_map_master` (
  `datasource_map_id` int(11) NOT NULL,
  `cluster_name` varchar(50) DEFAULT NULL,
  `component_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`datasource_map_id`),
  UNIQUE KEY `cluster_component_datasource_map_master_UN` (`cluster_name`,`component_name`),
  KEY `fk_ccrmm_cluster_idx` (`cluster_name`) USING BTREE,
  KEY `fk_ccrmm_component_idx` (`component_name`) USING BTREE,
  CONSTRAINT `fk_ccrmm_cluster_copy` FOREIGN KEY (`cluster_name`) REFERENCES `cluster_type` (`cluster_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cluster_type`
--

DROP TABLE IF EXISTS `cluster_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cluster_type` (
  `cluster_name` varchar(50) NOT NULL,
  `description` varchar(50) NOT NULL,
  `is_specific_instance` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`cluster_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `component`
--

DROP TABLE IF EXISTS `component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `component` (
  `component_name` varchar(50) NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`component_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `country_info`
--

DROP TABLE IF EXISTS `country_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country_info` (
  `country_code_iso_3` varchar(5) NOT NULL,
  `country` varchar(200) NOT NULL,
  `country_short_name` varchar(500) NOT NULL,
  `country_code_iso_2` varchar(5) NOT NULL,
  `country_code_iso_numeric` int(11) NOT NULL,
  `dial_in_code` int(11) DEFAULT NULL,
  `dial_in_code_full` varchar(30) DEFAULT NULL,
  `default_mobile_length` tinyint(4) NOT NULL DEFAULT 10,
  `other_mobile_length` varchar(25) DEFAULT NULL,
  `min_mobile_length` tinyint(4) NOT NULL DEFAULT 7,
  `max_mobile_length` tinyint(4) NOT NULL DEFAULT 15,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp(),
  `country_currency` varchar(4) DEFAULT NULL,
  PRIMARY KEY (`country_code_iso_3`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `currency_rates_daily`
--

DROP TABLE IF EXISTS `currency_rates_daily`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency_rates_daily` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `base_currency` varchar(4) NOT NULL,
  `quote_currency` varchar(4) NOT NULL,
  `rate` decimal(16,12) NOT NULL COMMENT 'conversion rate between base and quote',
  `mts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `currency_rates_daily_UN` (`base_currency`,`quote_currency`),
  KEY `currency_rates_daily_FK_1` (`quote_currency`),
  CONSTRAINT `currency_rates_daily_FK` FOREIGN KEY (`base_currency`) REFERENCES `billing_currency_master` (`currency_code`),
  CONSTRAINT `currency_rates_daily_FK_1` FOREIGN KEY (`quote_currency`) REFERENCES `billing_currency_master` (`currency_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9672 DEFAULT CHARSET=utf8mb4 COMMENT='Holds currency rates on a daily basis';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `currency_rates_date_history`
--

DROP TABLE IF EXISTS `currency_rates_date_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency_rates_date_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_utc` date DEFAULT NULL COMMENT 'rate for the date',
  `ts_utc` datetime DEFAULT NULL COMMENT 'the date time of the rates',
  `base_currency` varchar(4) NOT NULL,
  `quote_currency` varchar(4) NOT NULL,
  `rate` decimal(16,12) NOT NULL COMMENT 'conversion rate between base and quote',
  `cts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `currency_rates_date_history_UN` (`dt_utc`,`base_currency`,`quote_currency`),
  KEY `currency_rates_date_history_FK` (`base_currency`),
  KEY `currency_rates_date_history_FK_1` (`quote_currency`),
  CONSTRAINT `currency_rates_date_history_FK` FOREIGN KEY (`base_currency`) REFERENCES `billing_currency_master` (`currency_code`),
  CONSTRAINT `currency_rates_date_history_FK_1` FOREIGN KEY (`quote_currency`) REFERENCES `billing_currency_master` (`currency_code`)
) ENGINE=InnoDB AUTO_INCREMENT=9886 DEFAULT CHARSET=utf8mb4 COMMENT='Holds currency rates on a daily basis';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `currency_rates_monthly`
--

DROP TABLE IF EXISTS `currency_rates_monthly`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `currency_rates_monthly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `base_currency` varchar(4) NOT NULL,
  `quote_currency` varchar(4) NOT NULL,
  `rate` decimal(16,12) NOT NULL COMMENT 'conversion rate between base and quote',
  `mts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `currency_rates_monthly_UN` (`base_currency`,`quote_currency`),
  KEY `currency_rates_monthly_FK_1` (`quote_currency`),
  CONSTRAINT `currency_rates_monthly_FK` FOREIGN KEY (`base_currency`) REFERENCES `billing_currency_master` (`currency_code`),
  CONSTRAINT `currency_rates_monthly_FK_1` FOREIGN KEY (`quote_currency`) REFERENCES `billing_currency_master` (`currency_code`)
) ENGINE=InnoDB AUTO_INCREMENT=947 DEFAULT CHARSET=utf8mb4 COMMENT='Holds currency rates on a monthly basis';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_event_log`
--

DROP TABLE IF EXISTS `data_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_event_log` (
  `seq_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) NOT NULL,
  `primary_column_value` varchar(100) NOT NULL,
  `record_status` int(1) NOT NULL COMMENT '1->Insert; 2->Update; 3->Delete',
  `is_processed` int(1) NOT NULL DEFAULT 0 COMMENT '0->Yet to process; 1->Processed',
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`seq_no`)
) ENGINE=InnoDB AUTO_INCREMENT=15443 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `data_refresher`
--

DROP TABLE IF EXISTS `data_refresher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_refresher` (
  `table_name` varchar(100) NOT NULL,
  `primary_column_name` varchar(100) NOT NULL,
  `record_processor_handler` varchar(1000) NOT NULL,
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  PRIMARY KEY (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dn_adjustment_child`
--

DROP TABLE IF EXISTS `dn_adjustment_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dn_adjustment_child` (
  `parent_id` int(10) NOT NULL,
  `child_id` int(10) NOT NULL,
  `start_in_sec` int(10) NOT NULL,
  `end_in_sec` int(10) NOT NULL,
  `percentage` int(10) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dn_adjustment_parent`
--

DROP TABLE IF EXISTS `dn_adjustment_parent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dn_adjustment_parent` (
  `parent_id` int(10) NOT NULL,
  `cli_id` bigint(16) NOT NULL,
  `start_in_sec` int(10) NOT NULL,
  `end_in_sec` int(10) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dn_receiver_info`
--

DROP TABLE IF EXISTS `dn_receiver_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dn_receiver_info` (
  `cluster` varchar(50) NOT NULL,
  `dn_receiver_id` int(10) NOT NULL,
  PRIMARY KEY (`cluster`,`dn_receiver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `dn_receiver_master`
--

DROP TABLE IF EXISTS `dn_receiver_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dn_receiver_master` (
  `dn_receiver_id` int(10) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` decimal(6,0) NOT NULL,
  `desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`dn_receiver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `error_code_mapping`
--

DROP TABLE IF EXISTS `error_code_mapping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_code_mapping` (
  `error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `error_desc` varchar(75) CHARACTER SET latin1 NOT NULL,
  `category` varchar(15) CHARACTER SET latin1 NOT NULL COMMENT 'PLATFORM, INTERFACE, OPERATOR',
  `display_error` varchar(75) CHARACTER SET latin1 NOT NULL,
  `status_flag` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT 'Rejected',
  `ui_grouping` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `main_category` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sub_category` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `is_dom_sms_rate_refundable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - No Refund, 1 - Refund',
  `is_dom_dlt_rate_refundable` tinyint(1) DEFAULT 0 COMMENT '0 - No Refund, 1 - Refund',
  `handover_all_parts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Single Part, 1 - All Parts (Non -SMPP Interfaces)',
  PRIMARY KEY (`error_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `error_code_mapping_20211215`
--

DROP TABLE IF EXISTS `error_code_mapping_20211215`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_code_mapping_20211215` (
  `error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `error_desc` varchar(75) CHARACTER SET latin1 NOT NULL,
  `category` varchar(15) CHARACTER SET latin1 NOT NULL COMMENT 'PLATFORM, INTERFACE, OPERATOR',
  `display_error` varchar(75) CHARACTER SET latin1 NOT NULL,
  `status_flag` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT 'Rejected',
  `ui_grouping` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `main_category` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sub_category` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `is_dom_sms_rate_refundable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - No Refund, 1 - Refund',
  `is_dom_dlt_rate_refundable` tinyint(1) DEFAULT 0 COMMENT '0 - No Refund, 1 - Refund',
  `handover_all_parts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Single Part, 1 - All Parts (Non -SMPP Interfaces)',
  PRIMARY KEY (`error_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `error_code_mapping_20220117`
--

DROP TABLE IF EXISTS `error_code_mapping_20220117`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `error_code_mapping_20220117` (
  `error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `error_desc` varchar(75) CHARACTER SET latin1 NOT NULL,
  `category` varchar(15) CHARACTER SET latin1 NOT NULL COMMENT 'PLATFORM, INTERFACE, OPERATOR',
  `display_error` varchar(75) CHARACTER SET latin1 NOT NULL,
  `status_flag` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT 'Rejected',
  `ui_grouping` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `main_category` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sub_category` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `is_dom_sms_rate_refundable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - No Refund, 1 - Refund',
  `is_dom_dlt_rate_refundable` tinyint(1) DEFAULT 0 COMMENT '0 - No Refund, 1 - Refund',
  `handover_all_parts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Single Part, 1 - All Parts (Non -SMPP Interfaces)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `es_sub_del_t2_col_map`
--

DROP TABLE IF EXISTS `es_sub_del_t2_col_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `es_sub_del_t2_col_map` (
  `index_type` varchar(20) NOT NULL,
  `column_name` varchar(50) NOT NULL,
  `mapped_name` varchar(50) NOT NULL,
  `column_type` varchar(50) NOT NULL,
  `default_value` varchar(50) NOT NULL,
  `ci_column_required` smallint(1) NOT NULL,
  PRIMARY KEY (`index_type`,`column_name`),
  UNIQUE KEY `index_type` (`index_type`,`mapped_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `fmsg_log_download_col_map`
--

DROP TABLE IF EXISTS `fmsg_log_download_col_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fmsg_log_download_col_map` (
  `column_name` varchar(50) NOT NULL,
  `mapped_name` varchar(50) NOT NULL,
  `data_type` varchar(50) NOT NULL,
  PRIMARY KEY (`column_name`),
  UNIQUE KEY `mapped_name` (`mapped_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `inmemory_loader_config`
--

DROP TABLE IF EXISTS `inmemory_loader_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inmemory_loader_config` (
  `inmemory_id` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `jndiinfo_id` int(11) NOT NULL,
  `sql` varchar(4000) NOT NULL,
  `auto_refresh_req` tinyint(4) DEFAULT 1,
  `sleep_time_in_sec` int(11) NOT NULL DEFAULT 30,
  `inmemory_process_class_name` varchar(500) NOT NULL,
  PRIMARY KEY (`inmemory_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `interface_group_master`
--

DROP TABLE IF EXISTS `interface_group_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interface_group_master` (
  `interface_group_name` varchar(10) NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`interface_group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `interface_master`
--

DROP TABLE IF EXISTS `interface_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interface_master` (
  `interface_group_name` varchar(10) NOT NULL,
  `interface_type` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`interface_type`),
  KEY `interface_master_FK` (`interface_group_name`),
  CONSTRAINT `interface_master_FK` FOREIGN KEY (`interface_group_name`) REFERENCES `interface_group_master` (`interface_group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `interface_parameter_config`
--

DROP TABLE IF EXISTS `interface_parameter_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interface_parameter_config` (
  `interface_type` varchar(20) NOT NULL,
  `parameter_name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `default_key` varchar(50) NOT NULL,
  `is_finite_list` int(11) DEFAULT 0,
  PRIMARY KEY (`interface_type`,`parameter_name`),
  KEY `IPC_PM_Ref_idx` (`parameter_name`),
  CONSTRAINT `IPC_IM_IT_Ref` FOREIGN KEY (`interface_type`) REFERENCES `interface_master` (`interface_type`),
  CONSTRAINT `interface_parameter_config_FK` FOREIGN KEY (`parameter_name`) REFERENCES `interface_parameter_master` (`parameter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `interface_parameter_customer_key`
--

DROP TABLE IF EXISTS `interface_parameter_customer_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interface_parameter_customer_key` (
  `interface_type` varchar(50) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `parameter_name` varchar(50) NOT NULL,
  `key_name` varchar(50) NOT NULL,
  PRIMARY KEY (`interface_type`,`customer_id`,`parameter_name`),
  KEY `IPCK_PM_PN_Ref_idx` (`parameter_name`),
  CONSTRAINT `interface_parameter_customer_key_FK` FOREIGN KEY (`interface_type`) REFERENCES `interface_master` (`interface_type`),
  CONSTRAINT `interface_parameter_customer_key_FK_1` FOREIGN KEY (`parameter_name`) REFERENCES `interface_parameter_master` (`parameter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `interface_parameter_key_list`
--

DROP TABLE IF EXISTS `interface_parameter_key_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interface_parameter_key_list` (
  `interface_type` varchar(20) NOT NULL,
  `parameter_name` varchar(50) NOT NULL,
  `seq_no` int(11) NOT NULL,
  `key_name` varchar(50) NOT NULL,
  PRIMARY KEY (`interface_type`,`parameter_name`,`seq_no`),
  KEY `parameter_name_ref_idx` (`parameter_name`),
  CONSTRAINT `IPKL_IM_IT_REF` FOREIGN KEY (`interface_type`) REFERENCES `interface_master` (`interface_type`),
  CONSTRAINT `IPKL_IPC_PK_REF` FOREIGN KEY (`parameter_name`) REFERENCES `interface_parameter_config` (`parameter_name`),
  CONSTRAINT `interface_parameter_key_list_FK` FOREIGN KEY (`parameter_name`) REFERENCES `interface_parameter_master` (`parameter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `interface_parameter_master`
--

DROP TABLE IF EXISTS `interface_parameter_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interface_parameter_master` (
  `parameter_name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `is_customizable` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`parameter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `intl_credits`
--

DROP TABLE IF EXISTS `intl_credits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intl_credits` (
  `country` varchar(50) NOT NULL,
  `credits` decimal(10,4) NOT NULL,
  `geography` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `intl_rates`
--

DROP TABLE IF EXISTS `intl_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `intl_rates` (
  `country` varchar(50) NOT NULL COMMENT 'ROW - means rest of world.',
  `base_sms_rate` decimal(16,12) NOT NULL,
  `base_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000,
  `geography` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jndi_info`
--

DROP TABLE IF EXISTS `jndi_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jndi_info` (
  `id` int(5) NOT NULL AUTO_INCREMENT COMMENT '[PropertyKey=id] ID for the connection Pool',
  `description` varchar(30) NOT NULL,
  `url` varchar(200) NOT NULL COMMENT '[PropertyKey=url] JDBC URL for the database connection',
  `driver_class_name` varchar(100) NOT NULL COMMENT '[PropertyKey=driverClassName] Driver class to be used',
  `username` varchar(50) NOT NULL COMMENT '[PropertyKey=username] User Name for the connection creation',
  `password` varchar(50) NOT NULL COMMENT '[PropertyKey=password] Password for the connecton creation',
  `initial_size` int(3) DEFAULT 1 COMMENT '[PropertyKey=initialSize] The initial number of connections that are created when the pool is started',
  `max_active` int(3) DEFAULT 3 COMMENT '[PropertyKey=maxActive] Old Property. Maximum connection to be available in the connection pool',
  `max_total` int(3) DEFAULT 10 COMMENT '[PropertyKey=maxTotal] Maximum connection to be available in the connection pool',
  `max_idle` int(3) DEFAULT 5 COMMENT '[PropertyKey=maxIdle] The maximum number of connections that can remain idle in the pool',
  `min_idle` int(3) DEFAULT 2 COMMENT '[PropertyKey=minIdle] The minimum number of connections that can remain idle in the pool',
  `max_wait` int(9) DEFAULT -1 COMMENT '[PropertyKey=maxWait] Old Property. The maximum number of milliseconds that the pool will wait (when there are no available connections) for a connection to be returned before throwing an exception',
  `max_wait_millis` int(9) DEFAULT -1 COMMENT '[PropertyKey=maxWaitMillis] The maximum number of milliseconds that the pool will wait (when there are no available connections) for a connection to be returned before throwing an exception',
  `time_between_eviction_runs_millis` int(9) DEFAULT -1 COMMENT '[PropertyKey=timeBetweenEvictionRunsMillis] The number of milliseconds to sleep between runs of the idle object evictor thread',
  `num_tests_per_eviction_run` int(3) DEFAULT 3 COMMENT '[PropertyKey=numTestsPerEvictionRun] The number of objects to examine during each run of the idle object evictor thread',
  `min_evictable_idle_time_millis` int(9) DEFAULT 1800000 COMMENT '[PropertyKey=minEvictableIdleTimeMillis] The minimum amount of time an object may sit idle in the pool before it is eligable for eviction by the idle object evictor',
  `validation_query` varchar(100) DEFAULT 'select 1' COMMENT '[PropertyKey=validationQuery] Query to fire to check the connection''s status',
  `test_on_borrow` int(1) DEFAULT 1 COMMENT '[PropertyKey=testOnBorrow] The indication of whether objects will be validated before being borrowed from the pool',
  `remove_abandoned` int(1) DEFAULT 1 COMMENT '[PropertyKey=removeAbandoned] Old Property.',
  `remove_abandoned_on_maintenance` int(1) DEFAULT 1 COMMENT '[PropertyKey=removeAbandonedOnMaintenance] Flags to remove abandoned connections if they exceed the removeAbandonedTimout',
  `remove_abandoned_on_borrow` int(1) DEFAULT 1 COMMENT '[PropertyKey=removeAbandonedOnBorrow] Flags to remove abandoned connections if they exceed the removeAbandonedTimout',
  `remove_abandoned_timeout_seconds` int(4) DEFAULT 300 COMMENT '[PropertyKey=removeAbandonedTimeout] Timeout in seconds before an abandoned connection can be removed.',
  `log_abandoned` int(1) DEFAULT 0 COMMENT '[PropertyKey=logAbandoned] Flag to log stack traces for application code which abandoned a Statement or Connection',
  `abandoned_usage_tracking` int(1) DEFAULT 0 COMMENT '[PropertyKey=abandonedUsageTracking] The connection pool records a stack trace every time a method is called on a pooled connection and retains the most recent stack trace to aid debugging of abandoned connection',
  `other_connection_properties` varchar(2000) DEFAULT ' ' COMMENT '[PropertyKey=connectionProperties] \n1. Other mislaneous properties to be used.\n2. Every property will be '';'' separated.\n3. Property should be specified as <propertyName=propertyValue>',
  `pin` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unq_desc` (`description`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`appuser`@`localhost`*/ /*!50003 TRIGGER t_jndi_info_id_ins
  BEFORE INSERT 
  ON configuration.jndi_info  FOR EACH ROW
      BEGIN
        IF new.id = 1 THEN
          SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 31001, MESSAGE_TEXT = 'ID value 1 is not allowed';
        END IF;
      END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`appuser`@`localhost`*/ /*!50003 TRIGGER t_jndi_info_id_upd
  BEFORE UPDATE 
  ON configuration.jndi_info  FOR EACH ROW
      BEGIN
        IF old.id = 1 THEN
          SIGNAL SQLSTATE '45000' SET MYSQL_ERRNO = 31001, MESSAGE_TEXT = 'ID value 1 is not allowed';
        END IF;
      END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `kafka_cluster`
--

DROP TABLE IF EXISTS `kafka_cluster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kafka_cluster` (
  `kafka_cluster_name` varchar(20) NOT NULL,
  `producer_properties_file_path` varchar(300) NOT NULL,
  `consumer_properties_file_path` varchar(300) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kafka_cluster_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kafka_component`
--

DROP TABLE IF EXISTS `kafka_component`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kafka_component` (
  `component_name` varchar(50) NOT NULL,
  `processor_class_name` varchar(500) NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`component_name`),
  CONSTRAINT `kafka_component_FK_copy` FOREIGN KEY (`component_name`) REFERENCES `component` (`component_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kafka_consumer_group`
--

DROP TABLE IF EXISTS `kafka_consumer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kafka_consumer_group` (
  `kafka_consumer_group` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kafka_consumer_group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `kafka_topic`
--

DROP TABLE IF EXISTS `kafka_topic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kafka_topic` (
  `kafka_topic_prefix` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kafka_topic_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `log_download_col_map`
--

DROP TABLE IF EXISTS `log_download_col_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_download_col_map` (
  `column_name` varchar(50) NOT NULL,
  `mapped_name` varchar(50) NOT NULL,
  `data_type` varchar(50) NOT NULL,
  PRIMARY KEY (`column_name`),
  UNIQUE KEY `mapped_name` (`mapped_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mcc_mnc_rates`
--

DROP TABLE IF EXISTS `mcc_mnc_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mcc_mnc_rates` (
  `cli_id` bigint(16) DEFAULT NULL,
  `country` varchar(50) NOT NULL COMMENT 'ROW - means rest of world.',
  `mcc` varchar(50) DEFAULT NULL,
  `mnc` varchar(50) DEFAULT NULL,
  `base_sms_rate` decimal(16,12) NOT NULL,
  `base_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `mdb_to_pg_log_col_map`
--

DROP TABLE IF EXISTS `mdb_to_pg_log_col_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mdb_to_pg_log_col_map` (
  `mdb_table_name` varchar(20) NOT NULL,
  `mdb_column_name` varchar(50) NOT NULL,
  `pg_column_name` varchar(50) NOT NULL,
  `data_type` varchar(50) NOT NULL,
  `is_fmsg_info_col` smallint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mdb_table_name`,`mdb_column_name`),
  UNIQUE KEY `pg_column_name` (`pg_column_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `msc_code_map`
--

DROP TABLE IF EXISTS `msc_code_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `msc_code_map` (
  `msc` int(11) NOT NULL,
  `carrier` varchar(200) NOT NULL,
  `circle` varchar(200) NOT NULL,
  `category` varchar(10) DEFAULT NULL,
  `is_shutdown` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`msc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='https://en.wikipedia.org/wiki/Template:India_state_abbreviations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pg_bill_log_map`
--

DROP TABLE IF EXISTS `pg_bill_log_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_bill_log_map` (
  `cli_id` bigint(16) NOT NULL,
  `jndi_info_id` int(5) NOT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pg_bill_log_map_default`
--

DROP TABLE IF EXISTS `pg_bill_log_map_default`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pg_bill_log_map_default` (
  `jndi_info_id` int(5) NOT NULL,
  PRIMARY KEY (`jndi_info_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `platform_cluster_component_kafka_cluster_map`
--

DROP TABLE IF EXISTS `platform_cluster_component_kafka_cluster_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platform_cluster_component_kafka_cluster_map` (
  `seq_no` int(10) NOT NULL AUTO_INCREMENT,
  `component_name` varchar(50) NOT NULL,
  `platform_cluster_name` varchar(10) DEFAULT NULL,
  `kafka_cluster_producer` varchar(20) NOT NULL,
  `kafka_cluster_consumer` varchar(20) NOT NULL,
  `consumer_group_name` varchar(50) NOT NULL,
  `kafka_client_consumer_count` tinyint(2) NOT NULL DEFAULT 2,
  `sleep_time_in_millis` int(6) NOT NULL DEFAULT 500,
  `threads_count` tinyint(2) NOT NULL DEFAULT 2,
  `intl_threads_count` tinyint(2) NOT NULL DEFAULT 1,
  `max_producers_per_topic` tinyint(2) DEFAULT 2,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`seq_no`),
  UNIQUE KEY `platform_cluster_component_kafka_cluster_map_UN` (`component_name`,`platform_cluster_name`),
  KEY `platform_cluster_component_kafka_cluster_map_FK` (`kafka_cluster_producer`) USING BTREE,
  KEY `platform_cluster_component_kafka_cluster_map_FK_1` (`kafka_cluster_consumer`) USING BTREE,
  KEY `platform_cluster_component_kafka_cluster_map_FK_2` (`consumer_group_name`),
  CONSTRAINT `platform_cluster_component_kafka_cluster_map_FK` FOREIGN KEY (`component_name`) REFERENCES `kafka_component` (`component_name`),
  CONSTRAINT `platform_cluster_component_kafka_cluster_map_FK_2` FOREIGN KEY (`consumer_group_name`) REFERENCES `kafka_consumer_group` (`kafka_consumer_group`)
) ENGINE=InnoDB AUTO_INCREMENT=187 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `platform_cluster_kafka_topic_map`
--

DROP TABLE IF EXISTS `platform_cluster_kafka_topic_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `platform_cluster_kafka_topic_map` (
  `seq_no` int(10) NOT NULL AUTO_INCREMENT,
  `platform_cluster_name` varchar(100) DEFAULT NULL,
  `interface_group_name` varchar(100) DEFAULT NULL,
  `msg_type` tinyint(1) DEFAULT NULL,
  `priority` varchar(20) DEFAULT NULL,
  `kafka_topic_prefix` varchar(100) NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`seq_no`),
  UNIQUE KEY `platform_cluster_kafka_topic_map_UN` (`platform_cluster_name`,`interface_group_name`,`msg_type`,`priority`),
  KEY `platform_cluster_kafka_topic_map_FK` (`kafka_topic_prefix`) USING BTREE,
  CONSTRAINT `platform_cluster_kafka_topic_map_FK` FOREIGN KEY (`kafka_topic_prefix`) REFERENCES `kafka_topic` (`kafka_topic_prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `query_async_queue`
--

DROP TABLE IF EXISTS `query_async_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `query_async_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `queue_id` char(36) NOT NULL,
  `query_type` varchar(100) NOT NULL,
  `requested_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `started_ts` datetime DEFAULT NULL,
  `completed_ts` datetime DEFAULT NULL,
  `current_status` varchar(15) NOT NULL,
  `completed_status` varchar(15) DEFAULT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_ts` datetime DEFAULT NULL,
  `record_count` int(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `queue_id` (`queue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1426 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `query_async_queue_exec_log`
--

DROP TABLE IF EXISTS `query_async_queue_exec_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `query_async_queue_exec_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `queue_id` char(36) NOT NULL,
  `log_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `log_message` varchar(2000) DEFAULT NULL,
  `log_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `queue_id` (`queue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=40227 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `query_async_queue_req_info`
--

DROP TABLE IF EXISTS `query_async_queue_req_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `query_async_queue_req_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `queue_id` char(36) NOT NULL,
  `query_parameters` blob DEFAULT NULL,
  `requested_app` varchar(100) DEFAULT NULL,
  `requested_app_version` varchar(100) DEFAULT NULL,
  `requested_username` varchar(100) DEFAULT NULL,
  `requested_host` varchar(100) DEFAULT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_ts` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `queue_id` (`queue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1426 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `redis_config`
--

DROP TABLE IF EXISTS `redis_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `redis_config` (
  `redis_id` varchar(100) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `port` int(11) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `db` int(11) NOT NULL,
  `con_timeout_sec` int(11) NOT NULL DEFAULT 30,
  `read_timout_sec` int(11) NOT NULL DEFAULT 30,
  `max_wait_sec` int(11) NOT NULL DEFAULT 30,
  PRIMARY KEY (`redis_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sales_master`
--

DROP TABLE IF EXISTS `sales_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_master` (
  `id` int(10) NOT NULL COMMENT 'Sales Id',
  `name` varchar(100) NOT NULL COMMENT 'Sales Name',
  `email` varchar(100) DEFAULT NULL COMMENT 'Sales Email Id',
  `mobile` varchar(15) DEFAULT NULL COMMENT 'Sales Mobile Number',
  `location` varchar(50) DEFAULT NULL COMMENT 'Sales Location',
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `short_code_data_info`
--

DROP TABLE IF EXISTS `short_code_data_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `short_code_data_info` (
  `seq_no` bigint(10) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(200) NOT NULL,
  `category` tinyint(1) NOT NULL DEFAULT 5,
  `redis_loaded_date` datetime DEFAULT NULL,
  PRIMARY KEY (`seq_no`),
  UNIQUE KEY `short_code_data_info_UN` (`file_name`,`category`)
) ENGINE=InnoDB AUTO_INCREMENT=90096 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `topic2table_config`
--

DROP TABLE IF EXISTS `topic2table_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `topic2table_config` (
  `table_inserter_id` varchar(75) NOT NULL,
  `jndi_info_name` tinyint(2) NOT NULL,
  `database_name` varchar(25) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `table_name_finder_class` varchar(500) DEFAULT NULL,
  `table_name_finder_keys` varchar(250) DEFAULT NULL,
  `replace_ignore_columns` varchar(500) DEFAULT NULL,
  `sleep_time_sec` tinyint(3) NOT NULL DEFAULT 1 COMMENT 'Sleep for some time when there is no records in the topic',
  `batch_size` int(5) NOT NULL DEFAULT 1000 COMMENT 'Max batch size to process at a single time',
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`table_inserter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table configuration for topic 2 table API';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `zz_pg_sub_del_columns`
--

DROP TABLE IF EXISTS `zz_pg_sub_del_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zz_pg_sub_del_columns` (
  `column_name` varchar(50) DEFAULT NULL,
  `data_type` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-08 19:07:22
