CREATE TABLE `otp_voice_template_map` (
  `cli_id` bigint(16) DEFAULT NULL,
  `voice_cfg_id` bigint(19) NOT NULL,
  `campaign_id` int(10) DEFAULT NULL,
  `msg_template` varchar(4000) DEFAULT NULL,
  `tts_count` int(10) DEFAULT NULL,
  `tts_order` varchar(50) DEFAULT NULL,
  `tts_clean` varchar(50) DEFAULT NULL,
  `date_format` varchar(50) DEFAULT NULL,
  `data_type` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`voice_cfg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

