CREATE TABLE `interface_group_master` (
  `interface_group_name` varchar(10) NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`interface_group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
