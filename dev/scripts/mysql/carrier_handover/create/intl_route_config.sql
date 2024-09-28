CREATE TABLE `intl_route_config` (
  `carrier_network` int(10) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  `economy_route_id` varchar(6) NOT NULL DEFAULT 'AI',
  `country` varchar(50) NOT NULL,
  `carrier` varchar(100) NOT NULL DEFAULT 'Other',
  `header_type` tinyint(1) NOT NULL DEFAULT 3 COMMENT '1 - Static, 2- List , 3 - Dynamic',
  `default_header` varchar(15) DEFAULT NULL,
  `mnumber_length_max` tinyint(3) NOT NULL DEFAULT 0,
  `mnumber_length_min` tinyint(3) NOT NULL DEFAULT 0,
  `ussd_route_id` varchar(6) NOT NULL DEFAULT 'LF',
  `header_sub_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Not Applicable, 1 - Numaric, 2 - Alphabet, 3 - Alphanumaric, 4 - Alphanumaric with special char',
  PRIMARY KEY (`carrier_network`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

