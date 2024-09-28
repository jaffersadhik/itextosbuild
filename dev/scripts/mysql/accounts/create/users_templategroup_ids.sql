CREATE TABLE `users_templategroup_ids` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `cli_id` bigint(16) DEFAULT NULL,
  `template_group_id` bigint(20) DEFAULT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `created_user` varchar(50) DEFAULT NULL,
  `admin_created_ts` datetime DEFAULT current_timestamp(),
  `admin_created_user` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=1858 DEFAULT CHARSET=latin1
