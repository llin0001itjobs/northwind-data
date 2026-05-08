CREATE TABLE customer_order (
    id   	  		INTEGER      NOT NULL AUTO_INCREMENT,
    employee_id 	INTEGER		 NULL,
    customer_id 	INTEGER		 NULL,
    order_date  	TIMESTAMP	 NULL,
    shipped_date 	TIMESTAMP	 NULL,
    shipper_id	 	INTEGER		 NULL,
    ship_name 		VARCHAR(128) NULL,
    PRIMARY KEY (id)    
);
CREATE TABLE employee (
    id   	  		INTEGER      NOT NULL AUTO_INCREMENT,
    privilege_id 	INTEGER		 NULL,
    last_name 		VARCHAR(128) NULL,
    first_name 		VARCHAR(128) NULL,
    PRIMARY KEY (id)    
);
CREATE TABLE privilege (
    id   	  		INTEGER      NOT NULL AUTO_INCREMENT,
    privilege_name 	VARCHAR(128) NULL,
    PRIMARY KEY (id)    
);
CREATE TABLE customer (
    id   	  		INTEGER      NOT NULL AUTO_INCREMENT,
    last_name 		VARCHAR(128) NULL,
    first_name 		VARCHAR(128) NULL,    
    PRIMARY KEY (id)    
);
CREATE TABLE shipper (
    id   	  		INTEGER      NOT NULL AUTO_INCREMENT,
    company_id	 	INTEGER		 NOT NULL,    
    PRIMARY KEY (id)    
);
CREATE TABLE company (
    id   	  		INTEGER      NOT NULL AUTO_INCREMENT,
    name	 		VARCHAR(128) NULL,        
    PRIMARY KEY (id)    
);