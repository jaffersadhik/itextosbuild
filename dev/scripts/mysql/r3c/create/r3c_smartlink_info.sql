 CREATE TABLE `r3c_smartlink_info` (
  `smartlink_id` bigint(20) NOT NULL,
  `cli_id` bigint(16) NOT NULL,
  `redirect_url` text DEFAULT NULL,
  `domain_url` text DEFAULT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`smartlink_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
