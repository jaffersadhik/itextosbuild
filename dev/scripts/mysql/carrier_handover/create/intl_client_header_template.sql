 CREATE TABLE `intl_client_header_template` (
  `cli_id` bigint(16) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `keywords` varchar(4000) DEFAULT NULL,
  `header` varchar(15) DEFAULT NULL,
  `route_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1
