CREATE TABLE `client_dn_gen_percentage_map` (
  `cli_id` bigint(16) DEFAULT NULL,
  `route_id` varchar(6) DEFAULT NULL,
  `error_code` varchar(10) NOT NULL,
  `masked_route_id` varchar(6) NOT NULL,
  `success_percentage` tinyint(3) NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

