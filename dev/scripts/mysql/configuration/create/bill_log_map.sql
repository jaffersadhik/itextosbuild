REATE TABLE `bill_log_map` (
  `cli_id` bigint(16) NOT NULL,
  `jndi_info_id` int(5) NOT NULL DEFAULT 0,
  `suffix` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
