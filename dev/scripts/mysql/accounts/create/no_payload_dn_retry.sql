CREATE TABLE `no_payload_dn_retry` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `payload_rid` int(2) NOT NULL,
  `expiry_count` int(10) NOT NULL DEFAULT 0 COMMENT 'Expiry the record max config count reaches',
  `cluster` varchar(10) DEFAULT NULL,
  `dn_payload` mediumtext DEFAULT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1
