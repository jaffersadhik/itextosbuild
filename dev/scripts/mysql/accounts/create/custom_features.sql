CREATE TABLE `custom_features` (
  `cli_id` bigint(20) NOT NULL,
  `feature` varchar(250) NOT NULL,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`cli_id`,`feature`),
  KEY `custom_features_FK` (`feature`),
  CONSTRAINT `custom_features_FK` FOREIGN KEY (`feature`) REFERENCES `feature_desc` (`feature`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 
