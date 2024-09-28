CREATE TABLE `kafka_cluster` (
  `kafka_cluster_name` varchar(20) NOT NULL,
  `producer_properties_file_path` varchar(300) NOT NULL,
  `consumer_properties_file_path` varchar(300) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`kafka_cluster_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
