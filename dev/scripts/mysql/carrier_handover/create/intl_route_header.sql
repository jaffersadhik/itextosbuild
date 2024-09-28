CREATE TABLE `intl_route_header` (
  `country` varchar(50) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  `header_type` tinyint(1) NOT NULL COMMENT '1 - Static, 2- List , 3 - Dynamic',
  `default_header` varchar(15) DEFAULT NULL,
  `header_sub_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Not Applicable, 1 - Numaric, 2 - Alphabet, 3 - Alphanumaric, 4- Alphanumaric with special char',
  PRIMARY KEY (`country`,`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

