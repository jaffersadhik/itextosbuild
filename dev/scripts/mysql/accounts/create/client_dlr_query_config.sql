CREATE TABLE `client_dlr_query_config` (
  `cli_id` bigint(16) NOT NULL COMMENT 'Client Id',
  `multiparam_delimeter` varchar(3) NOT NULL DEFAULT '~' COMMENT 'Multiple Values delimeter',
  `response_format` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - xml, 1 - json',
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
