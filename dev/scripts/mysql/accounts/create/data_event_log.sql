CREATE TABLE `data_event_log` (
  `seq_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(100) NOT NULL,
  `primary_column_value` varchar(100) NOT NULL,
  `record_status` int(1) NOT NULL COMMENT '0->Insert; 1->Update; 2->Delete',
  `is_processed` int(1) NOT NULL DEFAULT 0 COMMENT '0->Yet to process; 1->Processed',
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`seq_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
