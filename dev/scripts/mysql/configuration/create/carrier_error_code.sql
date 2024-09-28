CREATE TABLE `carrier_error_code` (
  `route_id` varchar(6) NOT NULL,
  `error_code` varchar(5) NOT NULL,
  `error_desc` varchar(200) DEFAULT NULL,
  `error_status` varchar(10) NOT NULL,
  `failure_type` tinyint(1) NOT NULL COMMENT '2, Parmanant, 3- temporary',
  `platform_error_code` varchar(5) NOT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `Column9` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`route_id`,`error_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
