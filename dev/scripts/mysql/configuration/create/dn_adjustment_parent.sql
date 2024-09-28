CREATE TABLE `dn_adjustment_parent` (
  `parent_id` int(10) NOT NULL,
  `cli_id` bigint(16) NOT NULL,
  `start_in_sec` int(10) NOT NULL,
  `end_in_sec` int(10) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
