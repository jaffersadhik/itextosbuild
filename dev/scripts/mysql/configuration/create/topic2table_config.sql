CREATE TABLE `topic2table_config` (
  `table_inserter_id` varchar(75) NOT NULL,
  `jndi_info_name` tinyint(2) NOT NULL,
  `database_name` varchar(25) NOT NULL,
  `table_name` varchar(100) NOT NULL,
  `table_name_finder_class` varchar(500) DEFAULT NULL,
  `table_name_finder_keys` varchar(250) DEFAULT NULL,
  `replace_ignore_columns` varchar(500) DEFAULT NULL,
  `sleep_time_sec` tinyint(3) NOT NULL DEFAULT 1 COMMENT 'Sleep for some time when there is no records in the topic',
  `batch_size` int(5) NOT NULL DEFAULT 1000 COMMENT 'Max batch size to process at a single time',
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`table_inserter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Table configuration for topic 2 table API'
