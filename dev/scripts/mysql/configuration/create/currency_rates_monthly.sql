CREATE TABLE `currency_rates_monthly` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `base_currency` varchar(4) NOT NULL,
  `quote_currency` varchar(4) NOT NULL,
  `rate` decimal(16,12) NOT NULL COMMENT 'conversion rate between base and quote',
  `mts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `currency_rates_monthly_UN` (`base_currency`,`quote_currency`),
  KEY `currency_rates_monthly_FK_1` (`quote_currency`),
  CONSTRAINT `currency_rates_monthly_FK` FOREIGN KEY (`base_currency`) REFERENCES `billing_currency_master` (`currency_code`),
  CONSTRAINT `currency_rates_monthly_FK_1` FOREIGN KEY (`quote_currency`) REFERENCES `billing_currency_master` (`currency_code`)
) ENGINE=InnoDB AUTO_INCREMENT=910 DEFAULT CHARSET=utf8mb4 COMMENT='Holds currency rates on a monthly basis'
