CREATE TABLE `acc_ignore_from_dn_generation` (
  `cli_id` bigint(16) NOT NULL,
  `is_active` tinyint(1) NOT NULL COMMENT '0-will generate dns , 1-will ignore dn generation',
  `payload_expiry_in_hr` int(2) NOT NULL COMMENT 'Will expire payloads after specified hrs based on ignore_or_generate',
  `ignore_or_generate` tinyint(1) NOT NULL COMMENT '0-generate, 1-ignore',
  `updated_ts` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
