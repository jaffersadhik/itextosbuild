CREATE TABLE `intl_rates` (
  `country` varchar(50) NOT NULL COMMENT 'ROW - means rest of world.',
  `base_sms_rate` decimal(16,12) NOT NULL,
  `base_add_fixed_rate` decimal(16,12) NOT NULL DEFAULT 0.000000000000,
  `geography` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
