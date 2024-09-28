CREATE TABLE `interface_fallback` (
  `sno` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `messageid` varchar(25) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `input_req` mediumtext NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=50876 DEFAULT CHARSET=utf8mb4
