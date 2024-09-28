CREATE TABLE `client_route_config` (
  `cli_id` bigint(16) NOT NULL,
  `carrier` varchar(100) DEFAULT NULL,
  `circle` varchar(100) DEFAULT NULL,
  `txn_route_id` varchar(6) NOT NULL,
  `promo_route_id` varchar(6) NOT NULL,
  `reason` tinyint(3) DEFAULT 0 COMMENT '0 - Custom, 1 - Exclude',
  `description` varchar(1000) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

