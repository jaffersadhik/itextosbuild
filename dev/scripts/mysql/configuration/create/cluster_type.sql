CREATE TABLE cluster_type (
  cluster_name varchar(50) NOT NULL,
  description varchar(50) NOT NULL,
  is_specific_instance tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (cluster_name)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 

