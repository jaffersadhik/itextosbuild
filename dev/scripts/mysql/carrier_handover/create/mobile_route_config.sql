CREATE TABLE `mobile_route_config` (
  `mnumber` bigint(19) NOT NULL,
  `txn_route_id` varchar(6) NOT NULL,
  `promo_route_id` varchar(6) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`mnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

