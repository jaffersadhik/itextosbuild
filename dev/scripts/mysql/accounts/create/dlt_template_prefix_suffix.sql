CREATE TABLE `dlt_template_prefix_suffix` (
  `template_type` varchar(30) NOT NULL COMMENT 'Transactional, Promotional, Service-Implicit, Service-Explicit',
  `msg_prefix` varchar(100) NOT NULL,
  `msg_suffix` varchar(100) NOT NULL,
  PRIMARY KEY (`template_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
