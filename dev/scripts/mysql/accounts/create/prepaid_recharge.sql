CREATE TABLE `prepaid_recharge` (
  `id` bigint(19) NOT NULL AUTO_INCREMENT,
  `cli_id` bigint(18) NOT NULL,
  `prev_balance` double(16,4) NOT NULL DEFAULT 0.0000,
  `recharge_amount` double(16,4) NOT NULL,
  `recharge_type` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0-Add to existing amount, 1-Add as a new amount, 2-Reset old amount',
  `recharge_done_by` varchar(100) NOT NULL,
  `recharge_date` date NOT NULL DEFAULT cast(current_timestamp() as date),
  `recharge_time` datetime(3) NOT NULL DEFAULT current_timestamp(3),
  `created_ts` datetime(3) DEFAULT current_timestamp(3),
  `updated_ts` datetime(3) DEFAULT current_timestamp(3) ON UPDATE current_timestamp(3),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4
