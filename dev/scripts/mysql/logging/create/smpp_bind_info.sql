CREATE TABLE smpp_bind_info (
  sno bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  bind_id varchar(50) NOT NULL COMMENT 'Connection ID as Thread',
  system_id varchar(100) NOT NULL COMMENT 'User Name',
  cli_id bigint(16) NOT NULL,
  bind_mode varchar(10) NOT NULL COMMENT '1 - Rx, 2 - Tx, 9 - TRx',
  bind_date date NOT NULL,
  bind_time datetime(3) NOT NULL,
  server_ip varchar(20) NOT NULL COMMENT 'Host name of the Server',
  server_port int(10) NOT NULL COMMENT 'SMPP port',
  source_ip varchar(20) NOT NULL COMMENT 'IP Address of the client',
  server_instance varchar(25) DEFAULT NULL COMMENT 'SMPP instances',
  thread_name varchar(200) DEFAULT NULL COMMENT 'Thread ID at Server Level',
  created_ts datetime(3) NOT NULL DEFAULT current_timestamp(3),
  PRIMARY KEY (sno),
  KEY bind_id (bind_id,server_port),
  KEY cli_id (cli_id),
  KEY tbbss_idx (thread_name,bind_id,bind_mode,server_instance,server_ip),
  KEY tbbs_idx (thread_name,bind_id,bind_mode,server_instance)
) ENGINE=InnoDB AUTO_INCREMENT=354318264 DEFAULT CHARSET=latin1

