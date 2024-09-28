CREATE TABLE `dlt_template_group_header_entity_map` (
  `template_group_id` bigint(20) NOT NULL,
  `header` varchar(15) NOT NULL,
  `template_id` varchar(19) CHARACTER SET latin1 NOT NULL,
  `entity_id` varchar(19) CHARACTER SET latin1 NOT NULL,
  `is_numeric_header` tinyint(4) DEFAULT 0,
  `cts` datetime DEFAULT current_timestamp(),
  UNIQUE KEY `dlt_template_master_UN` (`template_group_id`,`template_id`,`header`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 
