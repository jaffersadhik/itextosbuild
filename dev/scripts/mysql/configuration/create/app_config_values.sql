CREATE TABLE `app_config_values` (
  `param_key` varchar(100) NOT NULL,
  `key_value` varchar(500) NOT NULL,
  `desc` varchar(200) NOT NULL,
  PRIMARY KEY (`param_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1

