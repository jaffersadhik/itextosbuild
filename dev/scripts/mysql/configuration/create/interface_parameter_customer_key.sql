 CREATE TABLE `interface_parameter_customer_key` (
  `interface_type` varchar(50) NOT NULL,
  `customer_id` bigint(20) NOT NULL,
  `parameter_name` varchar(50) NOT NULL,
  `key_name` varchar(50) NOT NULL,
  PRIMARY KEY (`interface_type`,`customer_id`,`parameter_name`),
  KEY `IPCK_PM_PN_Ref_idx` (`parameter_name`),
  CONSTRAINT `interface_parameter_customer_key_FK` FOREIGN KEY (`interface_type`) REFERENCES `interface_master` (`interface_type`),
  CONSTRAINT `interface_parameter_customer_key_FK_1` FOREIGN KEY (`parameter_name`) REFERENCES `interface_parameter_master` (`parameter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
