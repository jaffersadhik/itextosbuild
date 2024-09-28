CREATE TABLE `sales_master` (
  `id` int(10) NOT NULL COMMENT 'Sales Id',
  `name` varchar(100) NOT NULL COMMENT 'Sales Name',
  `email` varchar(100) DEFAULT NULL COMMENT 'Sales Email Id',
  `mobile` varchar(15) DEFAULT NULL COMMENT 'Sales Mobile Number',
  `location` varchar(50) DEFAULT NULL COMMENT 'Sales Location',
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
