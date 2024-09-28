CREATE TABLE `block_list_headers` (
  `header` varchar(15) NOT NULL,
  `is_active` tinyint(4) DEFAULT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`header`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
