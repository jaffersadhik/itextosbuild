CREATE TABLE `msg_validity` (
  `priority` tinyint(3) NOT NULL,
  `txn_validity` int(10) NOT NULL,
  `promo_validity` int(10) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`priority`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

