CREATE TABLE `r3c_include_url` (
  `cli_id` bigint(16) NOT NULL,
  `Include_url` text DEFAULT NULL,
  `is_partial` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Match Full Url, 1 - Partial Url',
  `smartlink_id` bigint(20) NOT NULL,
  PRIMARY KEY (`cli_id`,`smartlink_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
