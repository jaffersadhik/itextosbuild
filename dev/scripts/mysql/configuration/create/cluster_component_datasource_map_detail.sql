 CREATE TABLE cluster_component_datasource_map_detail (
  datasource_map_id int(11) NOT NULL,
  datasource_type varchar(10) NOT NULL,
  datasource_id varchar(100) NOT NULL,
  seq_no int(11) NOT NULL,
  max_pool_size int(11) NOT NULL DEFAULT 10,
  max_idle_count int(11) NOT NULL DEFAULT 10,
  min_idle_count int(11) NOT NULL DEFAULT 1,
  debug_enabled int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (datasource_map_id,datasource_type,datasource_id,seq_no),
  CONSTRAINT cluster_component_datasource_map_detail_FK FOREIGN KEY (datasource_map_id) REFERENCES cluster_component_datasource_map_master (datasource_map_id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
