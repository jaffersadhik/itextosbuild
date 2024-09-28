CREATE TABLE `template_based_routing` (
  `sno` bigint(19) NOT NULL,
  `cli_id` bigint(16) NOT NULL,
  `template` varchar(2000) NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `route_id` varchar(6) NOT NULL,
  `most_used_template` tinyint(3) DEFAULT 0,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
