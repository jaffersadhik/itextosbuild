CREATE TABLE `sub_service` (
  `service` varchar(50) NOT NULL,
  `sub_service` varchar(50) NOT NULL,
  `sub_service_name` varchar(50) NOT NULL,
  `sub_service_desc` varchar(50) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 - Enable, 0 - Disable',
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`service`,`sub_service`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 
