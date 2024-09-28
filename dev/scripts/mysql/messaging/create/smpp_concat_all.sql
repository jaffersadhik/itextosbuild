CREATE TABLE `smpp_concat_all` (
  `sno` bigint(20) NOT NULL AUTO_INCREMENT,
  `cluster` varchar(50) DEFAULT NULL COMMENT 'Cluster Type',
  `message_payload` mediumtext DEFAULT NULL COMMENT 'Message payload for each part',
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`sno`)
) ENGINE=InnoDB AUTO_INCREMENT=6054 DEFAULT CHARSET=latin1 
