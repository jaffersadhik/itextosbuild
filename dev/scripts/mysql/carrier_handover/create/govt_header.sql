CREATE TABLE `govt_header` (
  `header` varchar(15) NOT NULL,
  `alpha` tinyint(3) DEFAULT NULL COMMENT '2- Government header, null for shortcode',
  PRIMARY KEY (`header`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

