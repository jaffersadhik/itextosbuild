CREATE TABLE `user_headers_intl` (
  `cli_id` bigint(16) NOT NULL,
  `header` varchar(15) NOT NULL,
  `created_user` varchar(20) DEFAULT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `erp_created_user` varchar(20) DEFAULT NULL,
  `erp_created_ts` datetime DEFAULT current_timestamp(),
  `status` varchar(100) DEFAULT NULL,
  `status_date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`cli_id`,`header`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
