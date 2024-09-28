CREATE TABLE `header_priority_open_routes` (
  `cluster` varchar(10) NOT NULL DEFAULT 'bulk',
  `priority` tinyint(3) NOT NULL,
  `open_route_id` varchar(6) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
