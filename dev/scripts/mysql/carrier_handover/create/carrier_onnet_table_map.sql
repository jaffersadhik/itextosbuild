CREATE TABLE `carrier_onnet_table_map` (
  `route_id` varchar(6) NOT NULL DEFAULT 'AAA',
  `table_name` varchar(60) NOT NULL DEFAULT 'carrier_premium_routes',
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

