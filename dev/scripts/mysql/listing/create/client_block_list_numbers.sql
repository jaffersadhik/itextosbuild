CREATE TABLE `client_block_list_numbers` (
  `cli_id` bigint(20) NOT NULL,
  `mnumber` bigint(19) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`cli_id`,`mnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
