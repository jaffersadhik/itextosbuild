CREATE TABLE `rerouting_config` (
  `route_id` varchar(6) NOT NULL,
  `next_route_id` varchar(6) NOT NULL,
  `is_manual` tinyint(3) NOT NULL,
  `kannel_storesize` int(10) NOT NULL,
  `storesize_until_in_sec` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

