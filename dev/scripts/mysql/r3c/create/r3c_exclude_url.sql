 CREATE TABLE `r3c_exclude_url` (
  `cli_id` bigint(16) NOT NULL,
  `exclude_url` text DEFAULT NULL,
  `is_partial` tinyint(1) DEFAULT 0 COMMENT '0 - Match Full Url, 1 - Partial Match',
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
