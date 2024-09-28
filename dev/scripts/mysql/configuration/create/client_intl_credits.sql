CREATE TABLE `client_intl_credits` (
  `cli_id` bigint(16) NOT NULL,
  `country` varchar(50) NOT NULL COMMENT 'RoW - means rest of world.',
  `credits` decimal(10,4) NOT NULL,
  PRIMARY KEY (`cli_id`,`country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
