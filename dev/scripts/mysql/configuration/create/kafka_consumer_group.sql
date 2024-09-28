CREATE TABLE `kafka_consumer_group` (
  `kafka_consumer_group` varchar(50) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kafka_consumer_group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
