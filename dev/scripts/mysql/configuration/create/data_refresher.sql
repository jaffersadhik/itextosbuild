CREATE TABLE `data_refresher` (
  `table_name` varchar(100) NOT NULL,
  `primary_column_name` varchar(100) NOT NULL,
  `record_processor_handler` varchar(1000) NOT NULL,
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  PRIMARY KEY (`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
