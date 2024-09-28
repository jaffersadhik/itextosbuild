
CREATE TABLE `retry_route_config` (
  `cli_id` bigint(16) NOT NULL,
  `orig_route_id` varchar(6) NOT NULL,
  `error_code` varchar(5) NOT NULL,
  `retry_attempt` tinyint(4) NOT NULL,
  `retry_interval_in_secs` int(10) NOT NULL,
  `channel` varchar(5) NOT NULL DEFAULT 'SMS',
  `retry_route_id` varchar(6) NOT NULL,
  `voice_cfg_id` int(10) NOT NULL DEFAULT 0,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`cli_id`,`orig_route_id`,`error_code`,`retry_attempt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


