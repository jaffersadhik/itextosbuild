CREATE TABLE `error_code_mapping` (
  `error_code` varchar(5) CHARACTER SET latin1 NOT NULL,
  `error_desc` varchar(75) CHARACTER SET latin1 NOT NULL,
  `category` varchar(15) CHARACTER SET latin1 NOT NULL COMMENT 'PLATFORM, INTERFACE, OPERATOR',
  `display_error` varchar(75) CHARACTER SET latin1 NOT NULL,
  `status_flag` varchar(15) CHARACTER SET latin1 NOT NULL DEFAULT 'Rejected',
  `ui_grouping` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `main_category` varchar(50) CHARACTER SET latin1 NOT NULL,
  `sub_category` varchar(50) CHARACTER SET latin1 DEFAULT NULL,
  `is_dom_sms_rate_refundable` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - No Refund, 1 - Refund',
  `is_dom_dlt_rate_refundable` tinyint(1) DEFAULT 0 COMMENT '0 - No Refund, 1 - Refund',
  `handover_all_parts` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 - Single Part, 1 - All Parts (Non -SMPP Interfaces)',
  PRIMARY KEY (`error_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
