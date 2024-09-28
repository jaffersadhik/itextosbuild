CREATE TABLE `kafka_topic` (
  `kafka_topic_prefix` varchar(100) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kafka_topic_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
