CREATE TABLE `dn_receiver_info` (
  `cluster` varchar(50) NOT NULL,
  `dn_receiver_id` int(10) NOT NULL,
  PRIMARY KEY (`cluster`,`dn_receiver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
