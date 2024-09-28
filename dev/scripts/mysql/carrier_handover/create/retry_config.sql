
CREATE TABLE `retry_config` (
  `orig_route_type` varchar(4) NOT NULL DEFAULT 'SMPP',
  `priority` tinyint(3) NOT NULL,
  `txn_retries` tinyint(3) NOT NULL DEFAULT 0,
  `promo_retries` tinyint(3) NOT NULL DEFAULT 0,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`orig_route_type`,`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

