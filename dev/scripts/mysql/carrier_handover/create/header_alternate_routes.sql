CREATE TABLE `header_alternate_routes` (
  `cluster` varchar(10) NOT NULL DEFAULT 'bulk',
  `disallowed_route` varchar(6) NOT NULL,
  `priority` tinyint(3) NOT NULL,
  `alternate_route` varchar(6) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`disallowed_route`,`cluster`,`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

