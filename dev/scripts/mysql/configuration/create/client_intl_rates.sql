CREATE TABLE `client_intl_rates` (
  `cli_id` bigint(16) NOT NULL,
  `country` varchar(50) NOT NULL COMMENT 'ROW - means rest of world.',
  `base_sms_rate` decimal(16,12) NOT NULL,
  `base_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000,
  PRIMARY KEY (`cli_id`,`country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1`
