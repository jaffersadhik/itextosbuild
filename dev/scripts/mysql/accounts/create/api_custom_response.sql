CREATE TABLE `api_custom_response` (
  `seq_no` bigint(10) NOT NULL AUTO_INCREMENT,
  `cli_id` bigint(16) NOT NULL,
  `api_req_type` varchar(50) NOT NULL,
  `response_template` text NOT NULL,
  `res_content_type` varchar(50) NOT NULL DEFAULT 'text/json',
  `date_time_format` varchar(50) NOT NULL DEFAULT 'yyyy-MM-dd HH:mm:ss.SSS',
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  PRIMARY KEY (`seq_no`),
  UNIQUE KEY `api_custom_response_UN` (`cli_id`,`api_req_type`),
  CONSTRAINT `api_custom_response_FK` FOREIGN KEY (`cli_id`) REFERENCES `user_config` (`cli_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=latin1
