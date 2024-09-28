CREATE TABLE `client_dntype_config` (
  `cli_id` bigint(16) NOT NULL,
  `dn_type` tinyint(3) NOT NULL DEFAULT 0 COMMENT '0-Disable, 1-Single, 2-Final dn (Not Implemented)',
  `expiry_in_sec` int(10) NOT NULL COMMENT 'Configure dn expiry time',
  `dn_status_category` tinyint(1) NOT NULL DEFAULT 2 COMMENT '1- All success, 2- Any one Success',
  `dn_handover_basedon` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - TimeStamp , 1- Part Number',
  `handover_msg_part` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - First , 1 - Last ',
  `handover_success_only` tinyint(1) NOT NULL DEFAULT 1 COMMENT '0 - Any Status, 1 - Success only (This is applicable only for any one success in DN Status category)',
  PRIMARY KEY (`cli_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
