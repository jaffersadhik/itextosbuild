CREATE TABLE `msg_replace_keywords` (
  `cli_id` bigint(20) NOT NULL,
  `keyword_to_replace` varchar(200) NOT NULL,
  `replace_keyword` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cli_id`,`keyword_to_replace`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

