CREATE TABLE `query_async_queue_req_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `queue_id` char(36) NOT NULL,
  `query_parameters` blob DEFAULT NULL,
  `requested_app` varchar(100) DEFAULT NULL,
  `requested_app_version` varchar(100) DEFAULT NULL,
  `requested_username` varchar(100) DEFAULT NULL,
  `requested_host` varchar(100) DEFAULT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `modified_ts` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `queue_id` (`queue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1126 DEFAULT CHARSET=latin1
