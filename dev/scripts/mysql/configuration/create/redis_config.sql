CREATE TABLE redis_config (
  redis_id varchar(100) NOT NULL,
  ip varchar(45) NOT NULL,
  port int(11) NOT NULL,
  password varchar(100) DEFAULT NULL,
  db int(11) NOT NULL,
  con_timeout_sec int(11) NOT NULL DEFAULT 30,
  read_timout_sec int(11) NOT NULL DEFAULT 30,
  max_wait_sec int(11) NOT NULL DEFAULT 30,
  PRIMARY KEY (redis_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
