CREATE TABLE `country_info` (
  `country_code_iso_3` varchar(5) NOT NULL,
  `country` varchar(200) NOT NULL,
  `country_short_name` varchar(500) NOT NULL,
  `country_code_iso_2` varchar(5) NOT NULL,
  `country_code_iso_numeric` int(11) NOT NULL,
  `dial_in_code` int(11) DEFAULT NULL,
  `dial_in_code_full` varchar(30) DEFAULT NULL,
  `default_mobile_length` tinyint(4) NOT NULL DEFAULT 10,
  `other_mobile_length` varchar(25) DEFAULT NULL,
  `min_mobile_length` tinyint(4) NOT NULL DEFAULT 7,
  `max_mobile_length` tinyint(4) NOT NULL DEFAULT 15,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`country_code_iso_3`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
