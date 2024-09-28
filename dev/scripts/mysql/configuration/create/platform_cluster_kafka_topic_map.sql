CREATE TABLE `platform_cluster_kafka_topic_map` (
  `seq_no` int(10) NOT NULL AUTO_INCREMENT,
  `platform_cluster_name` varchar(100) DEFAULT NULL,
  `interface_group_name` varchar(100) DEFAULT NULL,
  `msg_type` tinyint(1) DEFAULT NULL,
  `priority` varchar(20) DEFAULT NULL,
  `kafka_topic_prefix` varchar(100) NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`seq_no`),
  UNIQUE KEY `platform_cluster_kafka_topic_map_UN` (`platform_cluster_name`,`interface_group_name`,`msg_type`,`priority`),
  KEY `platform_cluster_kafka_topic_map_FK` (`kafka_topic_prefix`) USING BTREE,
  CONSTRAINT `platform_cluster_kafka_topic_map_FK` FOREIGN KEY (`kafka_topic_prefix`) REFERENCES `kafka_topic` (`kafka_topic_prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1
