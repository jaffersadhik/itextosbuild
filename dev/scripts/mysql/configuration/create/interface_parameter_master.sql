CREATE TABLE `interface_parameter_master` (
  `parameter_name` varchar(50) NOT NULL,
  `description` varchar(100) NOT NULL,
  `is_customizable` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`parameter_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
