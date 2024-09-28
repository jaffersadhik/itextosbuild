CREATE TABLE `es_sub_del_t2_col_map` (
  `index_type` varchar(20) NOT NULL,
  `column_name` varchar(50) NOT NULL,
  `mapped_name` varchar(50) NOT NULL,
  `column_type` varchar(50) NOT NULL,
  `default_value` varchar(50) NOT NULL,
  `ci_column_required` smallint(1) NOT NULL,
  PRIMARY KEY (`index_type`,`column_name`),
  UNIQUE KEY `index_type` (`index_type`,`mapped_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
