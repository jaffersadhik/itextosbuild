 CREATE TABLE `exceptions_spam_block_list` (
  `cli_id` bigint(16) NOT NULL,
  `template` text NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1
