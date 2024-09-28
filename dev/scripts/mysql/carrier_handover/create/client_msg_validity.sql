CREATE TABLE `client_msg_validity` (
  `cli_id` bigint(16) NOT NULL,
  `txn_validity` int(10) NOT NULL,
  `promo_validity` int(10) NOT NULL,
  `updated_ts` datetime(3) DEFAULT current_timestamp(3),
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

