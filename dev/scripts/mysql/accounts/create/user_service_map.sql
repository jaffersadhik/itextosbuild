CREATE TABLE `user_service_map` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cli_id` bigint(16) NOT NULL,
  `service` varchar(256) NOT NULL,
  `sub_service` varchar(256) DEFAULT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `created_user` varchar(25) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  `modified_user` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_service_map_UN` (`cli_id`,`service`,`sub_service`)
) ENGINE=InnoDB AUTO_INCREMENT=6412 DEFAULT CHARSET=latin1
