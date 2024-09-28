CREATE TABLE `common_retry_validity` (
  `error_code` varchar(5) NOT NULL DEFAULT 'OTHER',
  `priority` tinyint(3) NOT NULL,
  `retry_attempt` tinyint(3) NOT NULL DEFAULT 0,
  `txn_retry_validity_in_secs` int(10) NOT NULL DEFAULT 0,
  `promo_retry_validity_in_secs` int(10) NOT NULL DEFAULT 0,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`error_code`,`priority`,`retry_attempt`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

