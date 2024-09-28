CREATE TABLE `fmsg_log_download_col_map` (
  `column_name` varchar(50) NOT NULL,
  `mapped_name` varchar(50) NOT NULL,
  `data_type` varchar(50) NOT NULL,
  PRIMARY KEY (`column_name`),
  UNIQUE KEY `mapped_name` (`mapped_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
