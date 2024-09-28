
CREATE TABLE `otp_voice_connect_map` (
  `cli_id` bigint(16) NOT NULL,
  `voice_cfg_id` bigint(19) NOT NULL,
  `v_account` varchar(50) DEFAULT NULL,
  `v_pin` varchar(50) DEFAULT NULL,
  `v_ip` varchar(20) DEFAULT NULL,
  `v_port` int(10) DEFAULT NULL,
  `dlr_url_template` varchar(4000) DEFAULT NULL,
  `v_template` varchar(1000) DEFAULT NULL,
  `ott` int(10) DEFAULT NULL,
  PRIMARY KEY (`voice_cfg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

