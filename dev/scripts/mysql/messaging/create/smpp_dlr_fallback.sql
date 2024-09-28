 CREATE TABLE `smpp_dlr_fallback` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `cli_id` bigint(16) DEFAULT NULL COMMENT 'Client Id',
  `msg_id` varchar(25) DEFAULT NULL COMMENT 'Message Id',
  `cluster` varchar(10) DEFAULT NULL COMMENT 'Cluster Type',
  `paylod_dlr` mediumtext DEFAULT NULL,
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=376725 DEFAULT CHARSET=utf8mb4 
