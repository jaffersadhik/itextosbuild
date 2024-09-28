CREATE TABLE inmemory_loader_config (
  inmemory_id varchar(50) NOT NULL,
  description varchar(100) NOT NULL,
  jndiinfo_id int(11) NOT NULL,
  `sql` varchar(4000) NOT NULL,
  auto_refresh_req tinyint(4) DEFAULT 1,
  sleep_time_in_sec int(11) NOT NULL DEFAULT 30,
  inmemory_process_class_name varchar(500) NOT NULL,
  PRIMARY KEY (inmemory_id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

