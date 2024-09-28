CREATE TABLE `intl_block_list_spam_words_msgtype` (
  `msg_type` tinyint(3) NOT NULL,
  `keywords` text NOT NULL,
  `threshold` tinyint(3) NOT NULL,
  `action` tinyint(3) NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1
