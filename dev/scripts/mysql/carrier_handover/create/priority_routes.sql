CREATE TABLE `priority_routes` (
  `priority` tinyint(3) NOT NULL,
  `txn_route_id` varchar(6) NOT NULL,
  `promo_route_id` varchar(6) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
