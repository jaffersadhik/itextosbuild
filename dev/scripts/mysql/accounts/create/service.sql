CREATE TABLE `service` (
  `service` varchar(50) NOT NULL,
  `service_name` varchar(50) NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`service`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
