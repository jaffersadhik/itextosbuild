CREATE TABLE `carrier_route_map` (
  `route_id` varchar(6) NOT NULL,
  `carrier_id` varchar(10) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  PRIMARY KEY (`route_id`),
  KEY `carrier_route_map_FK` (`carrier_id`),
  CONSTRAINT `carrier_route_map_FK` FOREIGN KEY (`carrier_id`) REFERENCES `carrier_master` (`carrier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
