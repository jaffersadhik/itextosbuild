CREATE TABLE `header_route_status` (
  `header` varchar(15) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  `allowed_status` tinyint(3) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`header`,`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

