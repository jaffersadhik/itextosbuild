CREATE TABLE `carrier_premium_routes` (
  `carrier` varchar(50) NOT NULL,
  `circle` varchar(50) NOT NULL,
  `txn_route_id` varchar(6) DEFAULT NULL,
  `promo_route_id` varchar(6) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`carrier`,`circle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
