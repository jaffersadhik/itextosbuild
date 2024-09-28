CREATE TABLE `common_retry_route_config` (
  `error_code` varchar(5) NOT NULL,
  `orig_route_id` varchar(6) NOT NULL,
  `priority` tinyint(3) NOT NULL,
  `retry_attempt` tinyint(3) NOT NULL,
  `txn_retry_route_id` varchar(6) DEFAULT NULL,
  `promo_retry_route_id` varchar(6) DEFAULT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`error_code`,`orig_route_id`,`priority`,`retry_attempt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

