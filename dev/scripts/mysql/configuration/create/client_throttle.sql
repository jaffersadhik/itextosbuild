CREATE TABLE `client_throttle` (
  `cli_id` bigint(20) NOT NULL,
  `msg_per_sec` int(11) NOT NULL DEFAULT 500,
  `is_active` tinyint(4) NOT NULL DEFAULT 1,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
