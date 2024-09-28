CREATE TABLE `interface_master` (
  `interface_group_name` varchar(10) NOT NULL,
  `interface_type` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`interface_type`),
  KEY `interface_master_FK` (`interface_group_name`),
  CONSTRAINT `interface_master_FK` FOREIGN KEY (`interface_group_name`) REFERENCES `interface_group_master` (`interface_group_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
