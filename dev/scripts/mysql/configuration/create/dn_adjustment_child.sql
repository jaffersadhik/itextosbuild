CREATE TABLE `dn_adjustment_child` (
  `parent_id` int(10) NOT NULL,
  `child_id` int(10) NOT NULL,
  `start_in_sec` int(10) NOT NULL,
  `end_in_sec` int(10) NOT NULL,
  `percentage` int(10) NOT NULL,
  `updated_ts` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`child_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
