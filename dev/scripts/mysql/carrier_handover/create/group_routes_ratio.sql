CREATE TABLE `group_routes_ratio` (
  `group` int(10) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  `ratio` tinyint(3) NOT NULL DEFAULT 1,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`group`,`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

