CREATE TABLE `dlt_template_group` (
  `template_group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `template_group_name` varchar(100) NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`template_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2000000061 DEFAULT CHARSET=latin1
