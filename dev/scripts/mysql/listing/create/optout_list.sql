CREATE TABLE `optout_list` (
  `optout_id` bigint(19) NOT NULL,
  `mnumber` bigint(19) NOT NULL,
  `created_ts` datetime DEFAULT current_timestamp(),
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`optout_id`,`mnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
