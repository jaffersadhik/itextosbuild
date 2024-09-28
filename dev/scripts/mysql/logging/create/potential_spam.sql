CREATE TABLE `potential_spam` (
  `recv_date` date NOT NULL,
  `cli_id` bigint(16) NOT NULL,
  `msg_id` varchar(25) NOT NULL,
  `msg` mediumtext DEFAULT NULL,
  `spam_word_count` int(4) NOT NULL DEFAULT 0,
  `created_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
