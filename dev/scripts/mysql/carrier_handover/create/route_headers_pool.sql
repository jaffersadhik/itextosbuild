
CREATE TABLE `route_headers_pool` (
  `route_id` varchar(6) NOT NULL,
  `header` varchar(15) NOT NULL,
  PRIMARY KEY (`route_id`,`header`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

