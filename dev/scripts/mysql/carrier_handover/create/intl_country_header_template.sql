
CREATE TABLE `intl_country_header_template` (
  `country` varchar(50) NOT NULL,
  `keywords` varchar(4000) DEFAULT NULL,
  `header` varchar(15) DEFAULT NULL,
  `priority` tinyint(3) NOT NULL,
  `route_id` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

