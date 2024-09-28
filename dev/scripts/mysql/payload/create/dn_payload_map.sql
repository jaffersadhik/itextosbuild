CREATE TABLE `dn_payload_map` (
  `message_id` varchar(25) NOT NULL,
  `retry_attempt` decimal(4,0) NOT NULL,
  `payload` longtext NOT NULL,
  `cluster` varchar(50) NOT NULL,
  `processed` decimal(1,0) NOT NULL DEFAULT 0,
  `payload_expiry` datetime(3) NOT NULL,
  `stime` datetime(3) NOT NULL DEFAULT current_timestamp(3)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4
