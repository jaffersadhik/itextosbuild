CREATE TABLE cluster_component_datasource_map_master (
  datasource_map_id int(11) NOT NULL,
  cluster_name varchar(50) DEFAULT NULL,
  component_name varchar(50) DEFAULT NULL,
  PRIMARY KEY (datasource_map_id),
  UNIQUE KEY cluster_component_datasource_map_master_UN (cluster_name,component_name),
  KEY fk_ccrmm_cluster_idx (cluster_name) USING BTREE,
  KEY fk_ccrmm_component_idx (component_name) USING BTREE,
  CONSTRAINT fk_ccrmm_cluster_copy FOREIGN KEY (cluster_name) REFERENCES cluster_type (cluster_name)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
