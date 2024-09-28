CREATE TABLE `dn_post_log` (
  `cli_id` bigint(16) NOT NULL,
  `msg_id` varchar(25) DEFAULT NULL,
  `dest` bigint(15) DEFAULT NULL COMMENT 'Mobile Mumber',
  `retry_attempt` int(3) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL,
  `protocol` varchar(10) DEFAULT NULL,
  `instanceid` varchar(15) DEFAULT NULL,
  `recv_time` datetime(3) DEFAULT NULL COMMENT 'Message Received Time',
  `submit_ts` datetime(3) DEFAULT NULL,
  `response_ts` datetime(3) DEFAULT NULL,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `reason` varchar(200) DEFAULT NULL,
  KEY `dn_post_log_cts_idx1` (`created_ts`),
  KEY `dn_post_log_dest_idx1` (`dest`),
  KEY `dn_post_log_msg_id_idx1` (`msg_id`),
  KEY `dn_post_recv_time_idx1` (`recv_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 
