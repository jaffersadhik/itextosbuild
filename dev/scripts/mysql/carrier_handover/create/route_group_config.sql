
CREATE TABLE `route_group_config` (
  `group` int(10) NOT NULL,
  `group_desc` varchar(100) NOT NULL,
  `is_intl_group` tinyint(3) NOT NULL DEFAULT 0,
  `msg_type` tinyint(3) NOT NULL,
  PRIMARY KEY (`group`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

