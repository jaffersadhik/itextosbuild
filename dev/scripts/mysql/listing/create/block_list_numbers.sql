CREATE TABLE `block_list_numbers` (
  `mnumber` bigint(19) NOT NULL,
  `is_active` tinyint(1) DEFAULT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`mnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
