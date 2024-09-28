CREATE TABLE `client_retry_validity` (
  `cli_id` bigint(16) NOT NULL,
  `retry_attempt` tinyint(3) NOT NULL,
  `validity_in_secs` int(10) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`cli_id`,`retry_attempt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

