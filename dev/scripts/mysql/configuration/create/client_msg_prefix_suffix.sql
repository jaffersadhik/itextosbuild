
CREATE TABLE `client_msg_prefix_suffix` (
  `cli_id` bigint(16) NOT NULL,
  `country` varchar(150) NOT NULL,
  `header` varchar(9) NOT NULL DEFAULT 'ALL',
  `msg_prefix` varchar(100) DEFAULT NULL,
  `msg_suffix` varchar(100) DEFAULT NULL,
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1
