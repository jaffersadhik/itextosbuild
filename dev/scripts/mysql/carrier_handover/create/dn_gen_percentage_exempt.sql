CREATE TABLE `dn_gen_percentage_exempt` (
  `cli_id` bigint(16) NOT NULL,
  `created_ts` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`cli_id`,`created_ts`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
