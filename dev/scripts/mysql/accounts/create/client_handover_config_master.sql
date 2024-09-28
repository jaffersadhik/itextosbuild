CREATE TABLE `client_handover_config_master` (
  `cli_id` bigint(16) NOT NULL,
  `app` varchar(5) NOT NULL,
  `request_interface` varchar(10) NOT NULL,
  `dlr_enabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-always off,1-always on,2-based on explicit request',
  `dlr_handover_mode` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-No Handover,1-HTTP, 2-SMPP, 3-FTP',
  `client_specific_http_topic` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-> Disabled, 1->Enabled',
  `dlr_query_enabled` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0- Disable, 1-Enable',
  `dlr_on_success` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0- Disable, 1-Enable',
  `dlr_on_carrier_failure` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0- Disable, 1-Enable',
  `dlr_on_platform_fail` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0- Disable, 1-Enable',
  `dlr_to_su` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-Disable, 1- Admin User, 2- Super User',
  `created_ts` datetime DEFAULT current_timestamp(),
  `created_user` varchar(20) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  `modified_user` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`cli_id`,`app`,`request_interface`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
