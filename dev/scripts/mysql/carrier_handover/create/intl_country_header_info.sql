CREATE TABLE `intl_country_header_info` (
  `country` varchar(50) NOT NULL,
  `regex` varchar(50) NOT NULL,
  `desc` varchar(100) DEFAULT NULL,
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`country`),
  UNIQUE KEY `intl_country_header_info_UN` (`country`,`regex`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

