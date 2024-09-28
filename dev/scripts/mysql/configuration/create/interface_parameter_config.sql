CREATE TABLE `interface_parameter_config` (
  `interface_type` varchar(20) NOT NULL,
  `parameter_name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `default_key` varchar(50) NOT NULL,
  `is_finite_list` int(11) DEFAULT 0,
  PRIMARY KEY (`interface_type`,`parameter_name`),
  KEY `IPC_PM_Ref_idx` (`parameter_name`),
  CONSTRAINT `IPC_IM_IT_Ref` FOREIGN KEY (`interface_type`) REFERENCES `interface_master` (`interface_type`),
  CONSTRAINT `interface_parameter_config_FK` FOREIGN KEY (`parameter_name`) REFERENCES `interface_parameter_master` (`parameter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 
