CREATE TABLE `dn_gen_percentage_map` (
  `msg_type` tinyint(3) NOT NULL,
  `priority` tinyint(3) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  `error_code` varchar(10) NOT NULL,
  `masked_route_id` varchar(6) NOT NULL,
  `success_percentage` tinyint(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

