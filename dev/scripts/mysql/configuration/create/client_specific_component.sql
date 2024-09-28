 CREATE TABLE `client_specific_component` (
  `component_name` varchar(50) NOT NULL,
  `cli_id` bigint(16) NOT NULL COMMENT 'it can be 10, 12, 16 char length for SuperUser, AdminUser and User',
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`component_name`,`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 
