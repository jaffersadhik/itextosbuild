 CREATE TABLE `user_smpp_config` (
  `cli_id` bigint(16) NOT NULL DEFAULT 0 COMMENT 'Client Id can be User, Admin, SuperAdmin level',
  `bind_type` varchar(10) NOT NULL DEFAULT 'Trx' COMMENT 'Tx, Rx, TRx',
  `max_allowed_connections` tinyint(4) NOT NULL DEFAULT 1 COMMENT 'Maximum binds allowed for this client',
  `max_speed` int(5) NOT NULL DEFAULT 1 COMMENT 'Maximum speed allows for this client',
  `charset` varchar(25) NOT NULL DEFAULT 'ISO-8859-1' COMMENT 'Charset used while receiving the request from the client',
  `dlt_entityid_tag` varchar(4) NOT NULL DEFAULT '1400' COMMENT 'DLT Entity Id Tag',
  `dlt_templateid_tag` varchar(4) NOT NULL DEFAULT '1401' COMMENT 'DLT Template Id Tag',
  `dn_expiry_in_sec` int(10) DEFAULT 28800 COMMENT 'DN Expiry time in seconds',
  `dn_date_format` varchar(20) NOT NULL DEFAULT 'yyMMddHHmm' COMMENT 'DN Date Format',
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  `cli_mid_tag` varchar(4) DEFAULT '1402' COMMENT 'Client Message Id',
  PRIMARY KEY (`cli_id`,`bind_type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
