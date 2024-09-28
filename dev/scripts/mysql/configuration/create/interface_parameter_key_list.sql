CREATE TABLE `interface_parameter_key_list` (
  `interface_type` varchar(20) NOT NULL,
  `parameter_name` varchar(50) NOT NULL,
  `seq_no` int(11) NOT NULL,
  `key_name` varchar(50) NOT NULL,
  PRIMARY KEY (`interface_type`,`parameter_name`,`seq_no`),
  KEY `parameter_name_ref_idx` (`parameter_name`),
  CONSTRAINT `IPKL_IM_IT_REF` FOREIGN KEY (`interface_type`) REFERENCES `interface_master` (`interface_type`),
  CONSTRAINT `IPKL_IPC_PK_REF` FOREIGN KEY (`parameter_name`) REFERENCES `interface_parameter_config` (`parameter_name`),
  CONSTRAINT `interface_parameter_key_list_FK` FOREIGN KEY (`parameter_name`) REFERENCES `interface_parameter_master` (`parameter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
