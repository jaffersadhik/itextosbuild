CREATE TABLE `msg_replace_route_condition` (
  `cli_id` bigint(16) NOT NULL,
  `carrier` varchar(100) NOT NULL,
  `circle` varchar(100) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  PRIMARY KEY (`cli_id`,`carrier`,`circle`,`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

