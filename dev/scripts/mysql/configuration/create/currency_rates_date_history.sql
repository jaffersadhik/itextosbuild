CREATE TABLE `currency_rates_date_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt_utc` date DEFAULT NULL COMMENT 'rate for the date',
  `ts_utc` datetime DEFAULT NULL COMMENT 'the date time of the rates',
  `base_currency` varchar(4) NOT NULL,
  `quote_currency` varchar(4) NOT NULL,
  `rate` decimal(16,12) NOT NULL COMMENT 'conversion rate between base and quote',
  `cts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `currency_rates_date_history_UN` (`dt_utc`,`base_currency`,`quote_currency`),
  KEY `currency_rates_date_history_FK` (`base_currency`),
  KEY `currency_rates_date_history_FK_1` (`quote_currency`),
  CONSTRAINT `currency_rates_date_history_FK` FOREIGN KEY (`base_currency`) REFERENCES `billing_currency_master` (`currency_code`),
  CONSTRAINT `currency_rates_date_history_FK_1` FOREIGN KEY (`quote_currency`) REFERENCES `billing_currency_master` (`currency_code`)
) ENGINE=InnoDB AUTO_INCREMENT=8968 DEFAULT CHARSET=utf8mb4 COMMENT='Holds currency rates on a daily basis'
