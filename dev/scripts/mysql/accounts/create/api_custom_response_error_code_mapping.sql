CREATE TABLE `api_custom_response_error_code_mapping` (
  `parent_seq_no` bigint(10) NOT NULL,
  `intf_status_code` varchar(5) NOT NULL,
  `cli_status_code` varchar(6) DEFAULT NULL,
  `cli_reason` varchar(100) DEFAULT NULL,
  `cli_status_info` varchar(20) DEFAULT NULL,
  `cli_http_status_code` int(5) DEFAULT 200,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`parent_seq_no`,`intf_status_code`),
  CONSTRAINT `api_custom_response_error_code_mapping_FK` FOREIGN KEY (`parent_seq_no`) REFERENCES `api_custom_response` (`seq_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
