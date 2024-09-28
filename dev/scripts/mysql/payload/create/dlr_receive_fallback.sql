CREATE TABLE `dlr_receive_fallback` (
  `sno` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `messageid` varchar(25) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `cluster` varchar(50) NOT NULL,
  `input_req` mediumtext NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=5989 DEFAULT CHARSET=latin1
