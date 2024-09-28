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
) ENGINE=InnoDB DEFAULT CHARSET=latin1
