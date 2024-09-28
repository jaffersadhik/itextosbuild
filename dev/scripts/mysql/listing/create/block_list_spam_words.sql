CREATE TABLE `block_list_spam_words` (
  `keywords` text NOT NULL,
  `threshold` tinyint(3) NOT NULL DEFAULT 1,
  `action` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0- Do Nothing, 1- Block the message, 2 - Log the spam words',
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1
