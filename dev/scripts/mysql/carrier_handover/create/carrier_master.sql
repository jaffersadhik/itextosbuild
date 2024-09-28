CREATE TABLE `carrier_master` (
  `carrier_id` varchar(10) NOT NULL,
  `carrier_name` varchar(100) NOT NULL,
  `circle_wise_error_code` tinyint(1) NOT NULL DEFAULT 0,
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  `updated_Ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  PRIMARY KEY (`carrier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
