 CREATE TABLE `short_code_data_info` (
  `seq_no` bigint(10) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(200) NOT NULL,
  `category` tinyint(1) NOT NULL DEFAULT 5,
  `redis_loaded_date` datetime DEFAULT NULL,
  PRIMARY KEY (`seq_no`),
  UNIQUE KEY `short_code_data_info_UN` (`file_name`,`category`)
) ENGINE=InnoDB AUTO_INCREMENT=90096 DEFAULT CHARSET=latin1
