CREATE TABLE `govt_header_masking` (
  `cli_id` bigint(16) NOT NULL,
  `circle` varchar(50) DEFAULT NULL,
  `original_header` varchar(15) DEFAULT NULL,
  `masking_header` varchar(15) NOT NULL,
  `route_id` varchar(6) NOT NULL,
  `rotate_header` tinyint(3) DEFAULT 0,
  `entity_id` bigint(19) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

