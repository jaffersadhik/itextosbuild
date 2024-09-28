CREATE TABLE `billing_currency_master` (
  `currency_code` varchar(4) NOT NULL COMMENT 'unique currency code',
  `desc` varchar(100) DEFAULT NULL COMMENT 'desc of the currency code',
  PRIMARY KEY (`currency_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
