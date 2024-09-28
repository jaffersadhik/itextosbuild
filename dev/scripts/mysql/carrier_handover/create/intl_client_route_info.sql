CREATE TABLE `intl_client_route_info` (
  `cli_id` bigint(16) NOT NULL,
  `country` varchar(50) NOT NULL,
  `carrier_network` varchar(100) NOT NULL DEFAULT 'rest',
  `route_id` varchar(6) DEFAULT NULL,
  `default_header` varchar(15) DEFAULT NULL,
  `header` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

