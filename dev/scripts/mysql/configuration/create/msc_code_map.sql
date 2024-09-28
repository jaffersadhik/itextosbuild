CREATE TABLE `msc_code_map` (
  `msc` int(11) NOT NULL,
  `carrier` varchar(200) NOT NULL,
  `circle` varchar(200) NOT NULL,
  `category` varchar(10) DEFAULT NULL,
  `is_shutdown` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`msc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='https://en.wikipedia.org/wiki/Template:India_state_abbreviations'
