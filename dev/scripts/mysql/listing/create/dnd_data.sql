CREATE TABLE `dnd_data` (
  `dest` bigint(19) NOT NULL,
  `preferences` varchar(20) DEFAULT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`dest`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1
