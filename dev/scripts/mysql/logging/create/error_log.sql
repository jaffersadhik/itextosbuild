CREATE TABLE `error_log` (
  `platform_cluster` varchar(50) DEFAULT NULL,
  `component` varchar(50) DEFAULT NULL,
  `cli_id` bigint(20) DEFAULT NULL,
  `file_id` varchar(25) DEFAULT NULL,
  `base_msg_id` varchar(25) DEFAULT NULL,
  `msg_id` varchar(25) DEFAULT NULL,
  `error_stacktrace` text DEFAULT NULL,
  `msg_json` text DEFAULT NULL,
  `server_ip` varchar(20) DEFAULT NULL,
  `topic_retry_count` bigint(20) DEFAULT NULL,
  `topic_retry_attempt_time` datetime(3) DEFAULT current_timestamp(3),
  `error_gen_time` datetime(3) DEFAULT current_timestamp(3),
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  KEY `error_log_cli_id_IDX` (`cli_id`) USING BTREE,
  KEY `error_log_file_id_IDX` (`file_id`) USING BTREE,
  KEY `error_log_msg_id_IDX` (`msg_id`) USING BTREE,
  KEY `error_log_created_ts_IDX` (`created_ts`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
