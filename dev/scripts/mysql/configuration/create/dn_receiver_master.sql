CREATE TABLE `dn_receiver_master` (
  `dn_receiver_id` int(10) NOT NULL,
  `ip` varchar(50) NOT NULL,
  `port` decimal(6,0) NOT NULL,
  `desc` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`dn_receiver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
