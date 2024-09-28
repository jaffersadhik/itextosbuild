CREATE TABLE `mdb_to_pg_log_col_map` (
  `mdb_table_name` varchar(20) NOT NULL,
  `mdb_column_name` varchar(50) NOT NULL,
  `pg_column_name` varchar(50) NOT NULL,
  `data_type` varchar(50) NOT NULL,
  `is_fmsg_info_col` smallint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`mdb_table_name`,`mdb_column_name`),
  UNIQUE KEY `pg_column_name` (`pg_column_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
