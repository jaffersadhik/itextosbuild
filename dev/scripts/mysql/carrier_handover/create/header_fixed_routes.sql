CREATE TABLE `header_fixed_routes` (
  `header` varchar(15) NOT NULL,
  `txn_route_id` varchar(6) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`header`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

