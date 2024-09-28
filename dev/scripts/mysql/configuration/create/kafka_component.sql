CREATE TABLE `kafka_component` (
  `component_name` varchar(50) NOT NULL,
  `processor_class_name` varchar(500) NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`component_name`),
  CONSTRAINT `kafka_component_FK_copy` FOREIGN KEY (`component_name`) REFERENCES `component` (`component_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
