CREATE TABLE `intl_credits` (
  `country` varchar(50) NOT NULL,
  `credits` decimal(10,4) NOT NULL,
  `geography` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`country`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
