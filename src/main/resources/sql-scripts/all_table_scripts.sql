--
-- Table structure for table inventory_transaction_type
--
DROP TABLE IF EXISTS inventory_transaction_type;

CREATE TABLE inventory_transaction_type (
  id int NOT NULL,
  type_name varchar(64) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table inventory_transaction_type
--

LOCK TABLES inventory_transaction_type WRITE;

INSERT INTO inventory_transaction_type VALUES (1,'Purchased'),(2,'Sold'),(3,'On Hold'),(4,'Waste');

UNLOCK TABLES;

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table order_detail_status
--

DROP TABLE IF EXISTS order_detail_status;

CREATE TABLE order_detail_status (
  id int NOT NULL,
  status_name varchar(50) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table order_detail_status
--

LOCK TABLES order_detail_status WRITE;

INSERT INTO order_detail_status VALUES (0,'None'),(1,'Allocated'),(2,'Invoiced'),(3,'Shipped'),(4,'On Order'),(5,'No Stock');

UNLOCK TABLES;

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table order_status
--

DROP TABLE IF EXISTS order_status;

CREATE TABLE order_status (
  id int NOT NULL,
  status_name varchar(64) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table order_status
--

LOCK TABLES order_status WRITE;

INSERT INTO order_status VALUES (0,'New'),(1,'Invoiced'),(2,'Shipped'),(3,'Closed');

UNLOCK TABLES;

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table order_tax_status
--

DROP TABLE IF EXISTS order_tax_status;

CREATE TABLE order_tax_status (
  id int NOT NULL,
  tax_status_name varchar(64) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table order_tax_status
--

LOCK TABLES order_tax_status WRITE;

INSERT INTO order_tax_status VALUES (0,'Tax Exempt'),(1,'Taxable');

UNLOCK TABLES;

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table payment_type
--
DROP TABLE IF EXISTS payment_type;

CREATE TABLE payment_type (
  id int NOT NULL AUTO_INCREMENT,
  type varchar(64) NOT NULL,
  description varchar(64) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY type_UNIQUE (id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table companies
--

LOCK TABLES payment_type WRITE;

INSERT INTO payment_type VALUES (1,'CASH','Cash'),(2,'CHECK','Check'),(3,'CREDIT','Credit Card');

UNLOCK TABLES;

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table purchase_order_status
--

DROP TABLE IF EXISTS purchase_order_status;

CREATE TABLE purchase_order_status (
  id int NOT NULL,
  status varchar(64) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table purchase_order_status
--

LOCK TABLES purchase_order_status WRITE;

INSERT INTO purchase_order_status VALUES (0,'New'),(1,'Submitted'),(2,'Approved'),(3,'Closed');

UNLOCK TABLES;

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table type_state
--

DROP TABLE IF EXISTS type_state;

CREATE TABLE type_state (
  id int NOT NULL AUTO_INCREMENT,
  code varchar(2) NOT NULL,
  description varchar(45) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table type_state
--

LOCK TABLES type_state WRITE;

INSERT INTO type_state VALUES (1,'AK','Alaska'),(2,'AL','Alabama'),(3,'AR','Arkansas'),(4,'AZ','Arizona'),(5,'CA','California'),(6,'CO','Colorado'),(7,'CT','Connecticut'),(8,'DE','Delaware'),
(9,'FL','Florida'),(10,'GA','Georgia'),(11,'HI','Hawaii'),(12,'IA','Iowa'),(13,'ID','Idaho'),(14,'IL','Illinois'),(15,'IN','Indiana'),(16,'KS','Kansas'),(17,'KY','Kentucky'),(18,'LA','Louisana'),(19,'MA','Massacheusetts'),(20,'MD','Maryland'),(21,'ME','Maine'),(22,'MI','Michigan'),(23,'MN','Minnesota'),(24,'MO','Missouri'),(25,'MS','Mississippi'),(26,'MT','Montana'),(27,'NC','North Carolina'),(28,'ND','North Dakota'),(29,'NE','Nebraska'),(30,'NH','New Hampshire'),(31,'NJ','New Jersey'),(32,'NM','New Mexico'),(33,'NV','Nevada'),(34,'NY','New York'),(35,'OH','Ohio'),(36,'OK','Oklahoma'),(37,'OR','Oregon'),(38,'PA','Pennsylvania'),(39,'RI','Rhode Island'),(40,'SC','South Carolina'),(41,'SD','South Dakota'),(42,'TN','Tennessee'),(43,'TX','Texas'),(44,'UT','Utah'),(45,'VI','Virginia'),(46,'VT','Vermont'),(47,'WA','Washington'),(48,'WI','Wisconsin'),(49,'WV','West Virginia'),(50,'WY','Wyoming');

UNLOCK TABLES;


-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table authentication
--

DROP TABLE IF EXISTS authentication;

CREATE TABLE authentication (
  id int NOT NULL,
  role_type varchar(64) NOT NULL DEFAULT '0',
  user_name varchar(256) DEFAULT NULL,
  password varchar(256) DEFAULT NULL,
  PRIMARY KEY(id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table authentication
--

LOCK TABLES authentication WRITE;

INSERT INTO authentication VALUES (1,'USER','MyrTkkFOL5AHSQfZhzo74w==','o7Q1KoXVrH7WvEMUoMI1gA=='),(2,'USER','VTGN1ljR6fbXlborxtZzBQ==','VTGN1ljR6fbXlborxtZzBQ==');

UNLOCK TABLES;

--
-- Table structure for table company
--
DROP TABLE IF EXISTS company;

CREATE TABLE company (
  id int NOT NULL,
  name varchar(256) DEFAULT NULL,
  PRIMARY KEY (id),
  UNIQUE KEY id_UNIQUE (id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table company
--

LOCK TABLES company WRITE;

INSERT INTO company VALUES (1,'None'),(2,'Springfield Elementary School'),(3,'Springfield DMV'),(4,'Springfield Nuclear Power Plant'),(5,'Moe\'s Tavern'),(6,'Kwik-E-Mart'),(7,'Planet Express'),(8,'The Leftorium'),(9,'Spingfield Shippers'),(10,'Expert Shipping Solutions'),(11,'Democratic Order Of Planets'),(12,'The Krusty the Clown Show'),(13,'Other');

UNLOCK TABLES;

--
-- Table structure for table customer
--

DROP TABLE IF EXISTS customer;

CREATE TABLE customer (
  id int NOT NULL AUTO_INCREMENT,
  last_name varchar(50) DEFAULT NULL,
  first_name varchar(50) DEFAULT NULL,
  email_address varchar(50) DEFAULT NULL,
  job_title varchar(50) DEFAULT NULL,
  business_phone varchar(25) DEFAULT NULL,
  home_phone varchar(25) DEFAULT NULL,
  mobile_phone varchar(25) DEFAULT NULL,
  fax_number varchar(25) DEFAULT NULL,
  address1 varchar(256) DEFAULT NULL,
  city varchar(50) DEFAULT NULL,
  state_province varchar(50) DEFAULT NULL,
  zip_postal_code varchar(15) DEFAULT NULL,
  country_region varchar(50) DEFAULT NULL,
  notes longtext,
  company_id int DEFAULT '1',
  address2 varchar(256) DEFAULT NULL,
  web_site_title varchar(256) DEFAULT NULL,
  web_site_url varchar(1024) DEFAULT NULL,
  portrait_path varchar(1024) DEFAULT NULL,
  portrait_title varchar(256) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY company_id (company_id),
  CONSTRAINT fk_customer_company1 FOREIGN KEY (company_id) REFERENCES company (id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table customer
--

LOCK TABLES customer WRITE;

INSERT INTO customer VALUES 
(1,'Bedecs','Anna',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 1st Street','Seattle','WA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(2,'Gratacos Solsona','Antonio',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 2nd Street','Boston','MA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(3,'Axen','Thomas',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','123 3rd Street','Los Angelas','CA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(4,'Lee','Christina',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 4th Street','New York','NY','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(5,'O’Donnell','Martin',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 5th Street','Minneapolis','MN','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(6,'Pérez-Olaeta','Francisco',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 6th Street','Milwaukee','WI','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(7,'Xie','Ming-Yang',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 7th Street','Boise','ID','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(8,'Andersen','Elizabeth',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','123 8th Street','Portland','OR','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(9,'Mortensen','Sven',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 9th Street','Salt Lake City','UT','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(10,'Wacker','Roland',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 10th Street','Chicago','IL','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(11,'Krschne','Peter',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 11th Street','Miami','FL','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(12,'Edwards','John',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 12th Street','Las Vegas','NV','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(13,'Ludick','Andre',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 13th Street','Memphis','TN','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(14,'Grilo','Carlos',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 14th Street','Denver','CO','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(15,'Kupkova','Helena',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','456 15th Street','Honolulu','HI','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(16,'Goldschmidt','Daniel',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 16th Street','San Francisco','CA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(17,'Bagel','Jean Philippe',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','456 17th Street','Seattle','WA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(18,'Autier Miconi','Catherine',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 18th Street','Boston','MA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(19,'Eggerer','Alexander',NULL,'Accounting Assistant','(123)555-0100',NULL,NULL,'(123)555-0101','789 19th Street','Los Angelas','CA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(20,'Li','George',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 20th Street','New York','NY','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(21,'Tham','Bernard',NULL,'Accounting Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 21th Street','Minneapolis','MN','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(22,'Ramos','Luciana',NULL,'Purchasing Assistant','(123)555-0100',NULL,NULL,'(123)555-0101','789 22th Street','Milwaukee','WI','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(23,'Entin','Michael',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 23th Street','Portland','OR','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(24,'Hasselberg','Jonas',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','789 24th Street','Salt Lake City','UT','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(25,'Rodman','John',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 25th Street','Chicago','IL','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(26,'Liu','Run',NULL,'Accounting Assistant','(123)555-0100',NULL,NULL,'(123)555-0101','789 26th Street','Miami','FL','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(27,'Toh','Karen',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 27th Street','Las Vegas','NV','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(28,'Raghav','Amritansh',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 28th Street','Memphis','TN','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),
(29,'Lee','Soo Jung',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 29th Street','Denver','CO','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL);

UNLOCK TABLES;

--
-- Table structure for table privilege
--

DROP TABLE IF EXISTS privilege;

CREATE TABLE privilege (
  id int NOT NULL AUTO_INCREMENT,
  privilege_name varchar(50) DEFAULT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table privilege
--

LOCK TABLES privilege WRITE;

INSERT INTO privilege VALUES (1,'None'),(2,'Purchase Approvals');

UNLOCK TABLES;

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table product
--

DROP TABLE IF EXISTS product;

CREATE TABLE product (
  id int NOT NULL AUTO_INCREMENT,
  product_code varchar(32) NOT NULL,
  product_name varchar(64) DEFAULT NULL,
  description longtext,
  standard_cost decimal(19,4) DEFAULT '0.0000',
  list_price decimal(19,4) DEFAULT '0.0000',
  reorder_level int(11) DEFAULT NULL,
  target_level int(11) DEFAULT NULL,
  quantity_per_unit varchar(64) DEFAULT NULL,
  discontinued tinyint(1) DEFAULT '0',
  minimum_reorder_quantity int(11) DEFAULT NULL,
  category varchar(64) DEFAULT NULL,
  resource_id int(11) DEFAULT '0',
  PRIMARY KEY (id),
  KEY product_code (product_code)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table product
--

LOCK TABLES product WRITE;

INSERT INTO product VALUES (1,'NWTB-1','Northwind Traders Chai',NULL,13.5000,18.0000,10,40,'10 boxes x 20 bags',0,10,'Beverages',0),
(3,'NWTCO-3','Northwind Traders Syrup',NULL,7.5000,10.0000,25,100,'12 - 550 ml bottles',0,25,'Condiments',0),
(4,'NWTCO-4','Northwind Traders Cajun Seasoning',NULL,16.5000,22.0000,10,40,'48 - 6 oz jars',0,10,'Condiments',0),
(5,'NWTO-5','Northwind Traders Olive Oil',NULL,16.0125,21.3500,10,40,'36 boxes',0,10,'Oil',0),
(6,'NWTJP-6','Northwind Traders Boysenberry Spread',NULL,18.7500,25.0000,25,100,'12 - 8 oz jars',0,25,'Jams, Preserves',0),
(7,'NWTDFN-7','Northwind Traders Dried Pears',NULL,22.5000,30.0000,10,40,'12 - 1 lb pkgs.',0,10,'Dried Fruit & Nuts',0),
(8,'NWTS-8','Northwind Traders Curry Sauce',NULL,30.0000,40.0000,10,40,'12 - 12 oz jars',0,10,'Sauces',0),
(14,'NWTDFN-14','Northwind Traders Walnuts',NULL,17.4375,23.2500,10,40,'40 - 100 g pkgs.',0,10,'Dried Fruit & Nuts',0),
(17,'NWTCFV-17','Northwind Traders Fruit Cocktail',NULL,29.2500,39.0000,10,40,'15.25 OZ',0,10,'Canned Fruit & Vegetables',0),
(19,'NWTBGM-19','Northwind Traders Chocolate Biscuits Mix',NULL,6.9000,9.2000,5,20,'10 boxes x 12 pieces',0,5,'Baked Goods & Mixes',0),
(20,'NWTJP-6','Northwind Traders Marmalade',NULL,60.7500,81.0000,10,40,'30 gift boxes',0,10,'Jams, Preserves',0),
(21,'NWTBGM-21','Northwind Traders Scones',NULL,7.5000,10.0000,5,20,'24 pkgs. x 4 pieces',0,5,'Baked Goods & Mixes',0),
(34,'NWTB-34','Northwind Traders Beer',NULL,10.5000,14.0000,15,60,'24 - 12 oz bottles',0,15,'Beverages',0),
(40,'NWTCM-40','Northwind Traders Crab Meat',NULL,13.8000,18.4000,30,120,'24 - 4 oz tins',0,30,'Canned Meat',0),
(41,'NWTSO-41','Northwind Traders Clam Chowder',NULL,7.2375,9.6500,10,40,'12 - 12 oz cans',0,10,'Soups',0),
(43,'NWTB-43','Northwind Traders Coffee',NULL,34.5000,46.0000,25,100,'16 - 500 g tins9999+6',0,25,'Beverages',0),
(48,'NWTCA-48','Northwind Traders Chocolate',NULL,9.5625,12.7500,25,100,'10 pkgs',0,25,'Candy',0),
(51,'NWTDFN-51','Northwind Traders Dried Apples',NULL,39.7500,53.0000,10,40,'50 - 300 g pkgs.',0,10,'Dried Fruit & Nuts',0),
(52,'NWTG-52','Northwind Traders Long Grain Rice',NULL,5.2500,7.0000,25,100,'16 - 2 kg boxes',0,25,'Grains',0),
(56,'NWTP-56','Northwind Traders Gnocchi',NULL,28.5000,38.0000,30,120,'24 - 250 g pkgs.',0,30,'Pasta',0),
(57,'NWTP-57','Northwind Traders Ravioli',NULL,14.6250,19.5000,20,80,'24 - 250 g pkgs.',0,20,'Pasta',0),
(65,'NWTS-65','Northwind Traders Hot Pepper Sauce',NULL,15.7875,21.0500,10,40,'32 - 8 oz bottles',0,10,'Sauces',0),
(66,'NWTS-66','Northwind Traders Tomato Sauce',NULL,12.7500,17.0000,20,80,'24 - 8 oz jars',0,20,'Sauces',0),
(72,'NWTD-72','Northwind Traders Mozzarella',NULL,26.1000,34.8000,10,40,'24 - 200 g pkgs.',0,10,'Dairy product',0),
(74,'NWTDFN-74','Northwind Traders Almonds',NULL,7.5000,10.0000,5,20,'5 kg pkg.',0,5,'Dried Fruit & Nuts',0),
(77,'NWTCO-77','Northwind Traders Mustard',NULL,9.7500,13.0000,15,60,'12 boxes',0,15,'Condiments',0),
(80,'NWTDFN-80','Northwind Traders Dried Plums',NULL,3.0000,3.5000,50,75,'1 lb bag',0,25,'Dried Fruit & Nuts',0),
(81,'NWTB-81','Northwind Traders Green Tea',NULL,2.0000,2.9900,100,125,'20 bags per box',0,25,'Beverages',0),
(82,'NWTC-82','Northwind Traders Granola',NULL,2.0000,4.0000,20,100,NULL,0,NULL,'Cereal',0),
(83,'NWTCS-83','Northwind Traders Potato Chips',NULL,0.5000,1.8000,30,200,NULL,0,NULL,'Chips, Snacks',0),
(85,'NWTBGM-85','Northwind Traders Brownie Mix',NULL,9.0000,12.4900,10,20,'3 boxes',0,5,'Baked Goods & Mixes',0),
(86,'NWTBGM-86','Northwind Traders Cake Mix',NULL,10.5000,15.9900,10,20,'4 boxes',0,5,'Baked Goods & Mixes',0),
(87,'NWTB-87','Northwind Traders Tea',NULL,2.0000,4.0000,20,50,'100 count per box',0,NULL,'Beverages',0),
(88,'NWTCFV-88','Northwind Traders Pears',NULL,1.0000,1.3000,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables',0),
(89,'NWTCFV-89','Northwind Traders Peaches',NULL,1.0000,1.5000,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables',0),
(90,'NWTCFV-90','Northwind Traders Pineapple',NULL,1.0000,1.8000,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables',0),
(91,'NWTCFV-91','Northwind Traders Cherry Pie Filling',NULL,1.0000,2.0000,10,40,'15.25 OZ',0,NULL,'Canned Fruit & Vegetables',0),
(92,'NWTCFV-92','Northwind Traders Green Beans',NULL,1.0000,1.2000,10,40,'14.5 OZ',0,NULL,'Canned Fruit & Vegetables',0),
(93,'NWTCFV-93','Northwind Traders Corn',NULL,1.0000,1.2000,10,40,'14.5 OZ',0,NULL,'Canned Fruit & Vegetables',0),
(94,'NWTCFV-94','Northwind Traders Peas',NULL,1.0000,1.5000,10,40,'14.5 OZ',0,NULL,'Canned Fruit & Vegetables',0),
(95,'NWTCM-95','Northwind Traders Tuna Fish',NULL,0.5000,2.0000,30,50,'5 oz',0,NULL,'Canned Meat',0),
(96,'NWTCM-96','Northwind Traders Smoked Salmon',NULL,2.0000,4.0000,30,50,'5 oz',0,NULL,'Canned Meat',0),
(97,'NWTC-82','Northwind Traders Hot Cereal',NULL,3.0000,5.0000,50,200,NULL,0,NULL,'Cereal',0),
(98,'NWTSO-98','Northwind Traders Vegetable Soup',NULL,1.0000,1.8900,100,200,NULL,0,NULL,'Soups',0),
(99,'NWTSO-99','Northwind Traders Chicken Soup',NULL,1.0000,1.9500,100,200,NULL,0,NULL,'Soups',0);

UNLOCK TABLES;


--
-- Table structure for table role
--

DROP TABLE IF EXISTS role;

CREATE TABLE role (
  id int NOT NULL AUTO_INCREMENT,
  type varchar(64) NOT NULL,
  description varchar(64) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table role
--

LOCK TABLES role WRITE;

INSERT INTO role VALUES (1,'ADMIN','Administrator'),(2,'USER','Default User');

UNLOCK TABLES;

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table shipper
--

DROP TABLE IF EXISTS shipper;

CREATE TABLE shipper (
  id int NOT NULL AUTO_INCREMENT,
  company_id int NOT NULL,  
  last_name varchar(50) DEFAULT NULL,
  first_name varchar(50) DEFAULT NULL,
  email_address varchar(50) DEFAULT NULL,
  job_title varchar(50) DEFAULT NULL,
  business_phone varchar(25) DEFAULT NULL,
  home_phone varchar(25) DEFAULT NULL,
  mobile_phone varchar(25) DEFAULT NULL,
  fax_number varchar(25) DEFAULT NULL,
  address1 varchar(256) DEFAULT NULL,
  city varchar(50) DEFAULT NULL,
  state_province varchar(50) DEFAULT NULL,
  zip_postal_code varchar(15) DEFAULT NULL,
  country_region varchar(50) DEFAULT NULL,
  notes longtext,
  address2 varchar(256) DEFAULT NULL,
  web_site_url varchar(1024) DEFAULT NULL,
  web_site_title varchar(256) DEFAULT NULL,
  portrait_path varchar(1024) DEFAULT NULL,
  portrait_title varchar(256) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY company_id (company_id),
  CONSTRAINT fk_shipper_company1 FOREIGN KEY (company_id) REFERENCES company (id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table shipper
--

LOCK TABLES shipper WRITE;

INSERT INTO shipper VALUES 
    (1,13,'Haiser','Kimberly','info@officedepot.com','Manager',NULL,NULL,NULL,NULL,'6600 North Military Trail','Boca Raton','FL','33496','USA','Office Depot, Inc. (NASDAQ:ODP) is a leading provider of business services and supplies, products and technology solutions through its fully integrated omni-channel platform of approximately 1,400 stores, online presence, and dedicated sales professionals and technicians to small, medium and enterprise businesses.',NULL,NULL,NULL,NULL,NULL),
	(2,13,'Simtha','Bob','pr@cinemark.com','Manager',NULL,NULL,NULL,NULL,'3200 Airport Rd.','Boca Raton','FL','33431','USA','Cinemark is proud to exhibit a variety of content, from the latest blockbusters to special live events, and has a strategically built portfolio of brands to reach movie lovers across the country, including Century Theatres, Rave Cinemas, Tinseltown USA and CinéArts.',NULL,NULL,NULL,NULL,NULL),
	(3,13,'Jones','Doug','customer.service@uline.com','Customer Representative','1-800-295-5510',NULL,NULL,'1-800-295-5571','12575 Uline Drive','Pleasant Prairie','WI','53158','USA','Uline, a family-owned business, is the leading distributor of shipping, industrial and packaging materials to businesses throughout North America. For over 40 years, we''ve stayed committed to providing the highest levels of service and quality products to our customers. Depend on Uline to build your business — we won''t let you down.',NULL,NULL,NULL,NULL,NULL);

UNLOCK TABLES;

--
-- Table structure for table supplier
--

DROP TABLE IF EXISTS supplier;

CREATE TABLE supplier (
  id int NOT NULL AUTO_INCREMENT,
  company_id int DEFAULT '1',
  last_name varchar(50) DEFAULT NULL,
  first_name varchar(50) DEFAULT NULL,
  email_address varchar(50) DEFAULT NULL,
  job_title varchar(50) DEFAULT NULL,
  business_phone varchar(25) DEFAULT NULL,
  home_phone varchar(25) DEFAULT NULL,
  mobile_phone varchar(25) DEFAULT NULL,
  fax_number varchar(25) DEFAULT NULL,
  address1 varchar(256) DEFAULT NULL,
  city varchar(50) DEFAULT NULL,
  state_province varchar(50) DEFAULT NULL,
  zip_postal_code varchar(15) DEFAULT NULL,
  country_region varchar(50) DEFAULT NULL,
  notes longtext,  
  address2 varchar(256) DEFAULT NULL,
  web_site_url varchar(1024) DEFAULT NULL,
  web_site_title varchar(256) DEFAULT NULL,
  portrait_path varchar(1024) DEFAULT NULL,
  portrait_title varchar(256) DEFAULT NULL,
  PRIMARY KEY (id),
  KEY company_id (company_id),
  CONSTRAINT fk_supplier_company1 FOREIGN KEY (company_id) REFERENCES company (id) ON DELETE NO ACTION ON UPDATE NO ACTION	 
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table supplier
--

LOCK TABLES supplier WRITE;

INSERT INTO supplier VALUES 
(1,1,'Andersen','Elizabeth A.','eae0001@gmail.com','Sales Manager','703-555-0123',NULL,NULL,NULL,NULL,'Alexandria','VA','22305',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2,6,'Weiler','Cornelia','corn_weil02@outlook.com','Sales Manager','202-555-0456',NULL,NULL,NULL,NULL,'Washington','D.C.','20001',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(3,10,'Kelley','Madeleine','mad_kelley416@outlook.com','Sales Representative','212-555-2223',NULL,NULL,NULL,NULL,'Manhattan','NY','10277',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(4,9,'Sato','Naoki','sato-naoki-13@yahoo.com','Marketing Manager','404-555-0789',NULL,NULL,NULL,NULL,'Atlanta','GA','30307',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(5,6,'Hernandez-Echevarria','Amaya','mgmt@outlook.com','Sales Manager','202-555-6117',NULL,NULL,NULL,NULL,'Washington','D.C.','20001',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(6,9,'Hayakawa','Satomi','sat0-16417@yahoo.com','Marketing Assistant','404-555-9001',NULL,NULL,NULL,NULL,'Atlanta','GA','30307',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(7,10,'Glasson','Stuart','stu-glass-007@outlook.com','Marketing Manager','212-555-3808',NULL,NULL,NULL,NULL,'Manhattan','NY','10277',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(8,6,'Dunton','Bryn Paul','sales_rep_0012@outlook.com','Sales Representative','202-555-4145',NULL,NULL,NULL,NULL,'Washington','D.C.','20002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(9,9,'Sandberg','Mikael','mgmt01@yahoo.com','Sales Manager','404-555-8179',NULL,NULL,NULL,NULL,'Atlanta','GA','30307',NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(10,9,'Sousa','Luis','mgmt05@yahoo.com','Sales Manager','404-555-9110',NULL,NULL,NULL,NULL,'Atlanta','GA','30307',NULL,NULL,NULL,NULL,NULL,NULL,NULL);

UNLOCK TABLES;

--
-- Table structure for table employee
--
DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `privilege_id` int(11) DEFAULT '1',
  `last_name` varchar(50) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `job_title` varchar(50) DEFAULT NULL,
  `business_phone` varchar(25) DEFAULT NULL,
  `home_phone` varchar(25) DEFAULT NULL,
  `mobile_phone` varchar(25) DEFAULT NULL,
  `fax_number` varchar(25) DEFAULT NULL,
  `address1` varchar(256) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state_province` varchar(50) DEFAULT NULL,
  `zip_postal_code` varchar(15) DEFAULT NULL,
  `country_region` varchar(50) DEFAULT NULL,
  `notes` longtext,
  `company_id` int(11) DEFAULT '1',
  `web_site_url` varchar(1024) DEFAULT NULL,
  `web_site_title` varchar(256) DEFAULT NULL,
  `portrait_path` varchar(1024) DEFAULT NULL,
  `portrait_title` varchar(256) DEFAULT NULL,
  `address2` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `privilege_id` (`privilege_id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `fk_employee_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_employee_privilege1` FOREIGN KEY (`privilege_id`) REFERENCES `privilege` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,1,'Bouvier','Patty','nancy@northwindtraders.com','Clerk','4255550100','4255550102','','4255550103','','Springfield','WA','99999','USA','Twin sister of Selma and older sister of Marge.',3,'','','groenig/simpsons/Patty_Bouvier.png','Patty Bouvier',''),(2,2,'Simpson','Homer','andrew@northwindtraders.com','Safety Inspector','4255550777','4255550199','','4255550888','742 Evergreen Terrace','Bellevue','WA','99999','USA','Homer is one of the most influential characters in the history of television, and is widely considered to be an American cultural icon.',4,'','','groenig/simpsons/Homer_Simpson.png','Homer Simpson','Suite 5'),(3,1,'Simpson','Lisa Marie','jan@northwindtraders.com','Student','4255550100','4255550102','','4255550103','','Redmond','WA','99999','USA','Was hired as a sales associate and was promoted to sales representative.',2,'','','groenig/simpsons/Lisa_Simpson.png','Lisa Simpson',''),(4,1,'Simpson','Margaret Evelyn \' Maggie\' ','mariya@northwindtraders.com','Kid','4255550100','4255550102','','4255550103','742 Evergreen Terrace','Kirkland','WA','99999','USA','Maggie is the youngest child of Homer and Marge, and sister to Bart and Lisa. She is often seen sucking on her red pacifier and, when she walks, she trips over her clothing and falls on her face.',1,'','','groenig/simpsons/Maggie_Simpson.png','Maggie Simpson',''),(5,1,'Bouvier','Selma','steven@northwindtraders.com','Clerk','4255550100','4255550102','','4255550103','','Springfield','WA','99999','USA','Twin sister of Patty and older sister of Marge.',3,'','','groenig/simpsons/Selma_Bouvier.png','Selma Bouvier',''),(6,1,'Flanders','Ned','michael@northwindtraders.com','Owner','4255550100','4255550102','','4255550103','744 Evergreen Terrace','Redmond','WA','99999','USA','animated television series The Simpsons. He is voiced by Harry Shearer, and first appeared in the series premiere episode \' Simpsons Roasting on an Open Fire\' . He is the extremely religious, good-natured, cheery next-door neighbor to the Simpson family and is generally envied and loathed by Homer Simpson. A devout Evangelical Christian with an annoyingly perfect family, he is among the friendliest and most compassionate of Springfield\'s residents and is generally considered a pillar of the Springfield community.',8,'','','groenig/simpsons/Ned_Flanders.png','Ned Flanders',''),(7,1,'Krabappel','Edna','robert@northwindtraders.com','Teacher','4255550100','4255550102','','4255550103','744 Evergreen Terrace','Seattle','WA','99999','USA','She is the teacher of Bart Simpson\'s 4th grade class at Springfield Elementary School. In later seasons, she is married to Ned Flanders.',2,'','','groenig/simpsons/Edna_Krabappel.png','Edna Krabappel',''),(8,1,'Simpson','Bartholomew JoJo \' Bart\' ','laura@northwindtraders.com','Student','4255550100','4255550102','','4255550103','','Redmond','WA','99999','USA','Hallmarks of the character include his chalkboard gags in the opening sequence; his prank calls to Moe; and his catchphrases \' Eat my shorts\' , \' Ay, caramba!\' , and \' Don\'t have a cow man!\' .',2,'','','groenig/simpsons/Bart_Simpson.png','Bart Simpson',''),(9,1,'Simpson','Marjorie Jacqueline \' Marge\' ','anne@northwindtraders.com','Housewife','4255550100','4255550102','','4255550103','742 Evergreen Terrace','Seattle','WA','99999','USA','Marge\'s distinctive blue beehive hairstyle was inspired by a combination of the Bride\'s in Bride of Frankenstein and the style that Margaret Groening wore in the 1960s.',1,'','','groenig/simpsons/Marge_Simpson.png','Marge Simpson',''),(10,1,'Bouvier','Jacqueline Ingrid','','Grandmother','','','','','','Springfield','WA','',NULL,'Although it seems that she disapproves of Marge\'s marriage to Homer, stating that he is never to address her as \' Mom\' , she has shown that she does tolerate Homer a lot more than her elder daughters.',1,'','','groenig/simpsons/Jacqueline_Bouvier.png','Jacqueline Ingrid Bouvier',''),(11,1,'Nahasapeemapetilon','Apu','','Owner','','','','','','Springfield','WA','98006',NULL,'He is the Indian immigrant proprietor of the Kwik-E-Mart, a popular convenience store in Springfield, and is best known for his catchphrase, \' Thank you, come again\' .',6,'','','groenig/simpsons/Apu_Nahasapeemapetilon.png','Apu Nahasapeemapetilon',''),(12,1,'Gumble','Barnard Arnold \' Barney\' ','','Drunk','','','','','','Springfield','WA','98006',NULL,'He is the town drunk of Springfield and Homer Simpson\'s best friend. His desperation for alcohol is a frequent butt of jokes on the show. Barney sobered up in the episode \' Days of Wine and D\'oh\'ses\' , which was co-written by Castellaneta, and stayed sober for several seasons.',5,'','','groenig/simpsons/Barney_Gumble.png','Barnard Arnold \' Barney\' Gumble',''),(15,1,'Carlson','Carlton \' Carl\' ','','Operator','','','','','','','','',NULL,'Along with Lenny, Carl is Homer\'s friend and co-worker (sometimes identified as his supervisor at the Nuclear Power Plant. He likes to call himself \' an urban Lenny.\'  He attended Springfield A&M University. Carl is an Icelandic-African American, with a master\'s degree in nuclear physics, fond of bowling and drinking at Moe\'s Tavern.',4,'','','groenig/simpsons/Carl_Carlson.png','Carl Carlson',''),(16,1,'','Krusty the Clown','','Television Clown','','','','','','Springfield','WA','98006',NULL,'Krusty was created by cartoonist Matt Groening and partially inspired by Rusty Nails, a television clown from Groening\'s hometown of Portland, Oregon. He was designed to look like Homer Simpson with clown makeup, with the original idea being that Bart worships a television clown who was actually his own father in disguise.',12,'','','groenig/simpsons/Tapped_Out_Unlock_Krusty.png','Krusty the Clown',''),(17,1,'Leonard','Lenford \' Lenny\' ','','Operator','','','','','','Springfield','WA','98006',NULL,'He works at the Springfield Nuclear Power Plant and possesses a master\'s degree in nuclear physics, but he is often portrayed as a blue-collar working man.',4,'','','groenig/simpsons/Lenny_Leonard.png','Lenny Leonard',''),(18,1,'Hoover','Elizabeth','','Teacher','','','','','','Springfield','WA','98006',NULL,'Miss Hoover has been worn down by her years in the public school system, and in \' Lisa Gets an \'A\'\'  implies that she frequently drinks during lunch.',2,'','','groenig/simpsons/Elizabeth_Hoover.png','Elizabeth Hoover',''),(19,1,'Van Houten','Milhouse Mussolini','','Student','','','','','','Springfield','WA','98006',NULL,'Milhouse is Bart Simpson\'s best friend in Mrs. Krabappel\'s fourth grade class at Springfield Elementary School, is insecure, gullible, and less popular than Bart.',2,'','','groenig/simpsons/Milhouse_Van_Houten.png','Milhouse Van Houten',''),(20,1,'Szyslak','Morris \' Moe\' ','','Owner','','','','','','Springfield','WA','98006',NULL,'Moe\'s personality includes a short and violent temper, which has also involved numerous suicide attempts. Other running jokes featuring him include being prank called by Bart Simpson, running illegal activities from his bar, and an ambiguous ethnic origin.',5,'','','groenig/simpsons/Moe_Szyslak.png','Moe Szyslak',''),(21,1,'Burns','Charles Montgomery \' Monty\' ','','Owner, CEO, President','','','','','','Springfield','WA','98006',NULL,'Although originally conceived as a one-dimensional, recurring villain who might occasionally enter the Simpsons\' lives and wreak some sort of havoc, Mr. Burns\' popularity has led to his repeated inclusion in episodes. He is a stereotype of corporate America in his unquenchable desire to increase his own wealth and power, inability to remember his employee\' names and lack of concern for their safety and well-being.',4,'','','groenig/simpsons/Montgomery_Burns.png','Mr. Burns',''),(22,1,'Muntz','Nelson Mandela','','Student','','','','','','Springfield','WA','98006',NULL,'Nelson is a student and bully at Springfield Elementary School. He is known to have terrorized virtually every kid in Springfield at one point or another.',2,'','','groenig/simpsons/Nelson_Muntz.png','Nelson Muntz',''),(23,1,'Smithers Jr.','Waylon J.','','Personal Assistant','','','','','','Springfield','WA','98006',NULL,'The idea for Smithers\' ambiguous sexual orientation came from Sam Simon, who proposed that Smithers should be gay, but little attention should be drawn to it.',4,'','','groenig/simpsons/Waylon_Smithers.png','Waylon Smithers',''),(24,1,'Fry','Philip J.','','Pilot','','','','','','','','',NULL,'He is the best friend and roommate of Bender and the boyfriend and later husband of Turanga Leela.',7,'','','groenig/futurama/Philip_J_Fry.png','Philip J Fry',''),(25,1,'Turanga','Leela','','Spaceship Captain','','','','','','','','',NULL,'Leela is spaceship captain, pilot, and head of all aviation services on board the Planet Express Ship.',7,'','','groenig/futurama/Leela_Turanga.png','Leela Turanga',''),(26,1,'Rodriguez','Bender Bending','','Chef','','','','','','','','',NULL,'He fulfills a comic, antihero-type role in Futurama and is described by fellow character Leela as an \' alcoholic, whore-mongering, chain-smoking gambler\' .',7,'','','groenig/futurama/Bender_Bending.png','Bender Bending Rodriguez',''),(27,1,'Farnsworth','Hubert J.','','Professor','','','','','','','','',NULL,'He is the great nephew of Philip J. Fry, the series\' protagonist. He alternates between intelligence and amoral senility due to his greatly advanced age. He demonstrates a mastery of any field of science necessary for the series\' plots, and is suggested to be one of the most brilliant inventors on Earth.',7,'','','groenig/futurama/Professor_Farnsworth.png','Professor Farnsworth',''),(28,1,'Zoidberg','John A.','','Staff Doctor','','','','','','','','',NULL,'His character parodies the supposed wealth and automatic respect of modern doctors - for example, his incompetence at human medicine makes him extremely poor despite his profession, and he is implied to be frequently homeless when not at work.',7,'','','groenig/futurama/Zoidberg.png','Dr. Zoidberg',''),(29,1,'Wong','Amy','','Intern','','','','','','','','',NULL,'She is the ditzy, spoiled daughter of wealthy agriculturalist-industrialist Han Chinese rancher parents who raise buggalo on Mars.',7,'','','groenig/futurama/Amy_Wong.png','Amy Wong',''),(30,1,'Conrad','Hermes','','Accountant','','','','','','','','',NULL,'Hermes is Jamaican Rastafarian and grade 36 Bureaucrat, and proud of it. He works at Planet Express, handling stamping, filing, collating, and accounting.',7,'','','groenig/futurama/Hermes_Conrad.png','Hermes Conrad',''),(31,1,'Brannigan','Zapp','','General','','','','','','','','',NULL,'The show\'s executive producer David X. Cohen has described Brannigan as \' half Captain Kirk, half actual William Shatner\'Brannigan is a 25-Star General in the Democratic Order of Planets, and captain of its flagship, the Nimbus.',11,'','','groenig/futurama/Zapp_Brannigan.png','Zapp Brannigan',''),(32,1,'Kroker','Kif','','Fourth Lieutenant','','','','','','','','',NULL,'Lieutenant Kif Kroker is the long-suffering assistant to Captain Zapp Brannigan, and Fourth Lieutenant on the Democratic Order of Planets (DOOP starship Nimbus. Kif is a short and thin green skinned alien crew member.',11,'','','groenig/futurama/Kif_Koker.png','Kif Koker',''),(33,1,'','Lord Nibbler','','Pet','','','','','','','','',NULL,'He masquerades as an innocent, cute and unintelligent pet during most of the series. In reality, he is a highly intelligent Nibblonian and capable of communication, but tries to avoid suspicion while he protects the Earth in general and Fry in particular from the Brainspawn. As with all Nibblonians, Nibbler\'s feces consist of dark matter, which can be used as starship fuel.',1,'','','groenig/futurama/Lord_Nibbler.png','Lord Nibbler',''),(34,1,'','Scruffy','','Janitor','','','','','','','','',NULL,'Scruffy generally approaches both his job and the rest of his life with a high level of apparent apathy.',7,'','','groenig/futurama/Scruffy.png','Scruffy','');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table customer_order
--

DROP TABLE IF EXISTS customer_order;

CREATE TABLE customer_order (
  id int NOT NULL AUTO_INCREMENT,
  employee_id int DEFAULT NULL,
  customer_id int NOT NULL,
  order_date datetime NOT NULL,
  shipped_date datetime DEFAULT NULL,
  shipper_id int DEFAULT NULL,
  ship_name varchar(50) DEFAULT NULL,
  ship_address longtext,
  ship_city varchar(50) DEFAULT NULL,
  ship_state_province varchar(50) DEFAULT NULL,
  ship_zip_postal_code varchar(50) DEFAULT NULL,
  ship_country_region varchar(50) DEFAULT NULL,
  shipping_fee decimal(19,4) DEFAULT '0.0000',
  taxes decimal(19,4) DEFAULT '0.0000',
  payment_type_id int DEFAULT NULL,
  paid_date datetime DEFAULT NULL,
  notes longtext,
  tax_rate double DEFAULT '0',
  tax_status_id int DEFAULT NULL,
  status_id int DEFAULT '0',
  PRIMARY KEY (id),
  KEY id (id),
  KEY customer_id (customer_id),
  KEY employee_id (employee_id),
  KEY shipper_id (shipper_id),
  KEY status_id (status_id),  
  KEY tax_status_id (tax_status_id),
  KEY payment_type (payment_type_id),
  CONSTRAINT fk_order_customer FOREIGN KEY (customer_id) REFERENCES customer (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_order_employee1 FOREIGN KEY (employee_id) REFERENCES employee (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_order_shipper1 FOREIGN KEY (shipper_id) REFERENCES shipper (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_order_order_status1 FOREIGN KEY (status_id) REFERENCES order_status (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_order_order_tax_status1 FOREIGN KEY (tax_status_id) REFERENCES order_tax_status (id) ON DELETE NO ACTION ON UPDATE NO ACTION,  
  CONSTRAINT fk_order_payment_type1 FOREIGN KEY (payment_type_id) REFERENCES payment_type (id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table customer_order
--

LOCK TABLES customer_order WRITE;

INSERT INTO customer_order VALUES 
(30,9,27,'2006-01-15 00:00:00','2006-01-22 00:00:00',2,'Karen Toh','789 27th Street','Las Vegas','NV','99999','USA',200.0000,0.0000,2,'2006-01-15 00:00:00',NULL,0,NULL,3),
(31,3,4,'2006-01-20 00:00:00','2006-01-22 00:00:00',1,'Christina Lee','123 4th Street','New York','NY','99999','USA',5.0000,0.0000,3,'2006-01-20 00:00:00',NULL,0,NULL,3),
(32,4,12,'2006-01-22 00:00:00','2006-01-22 00:00:00',2,'John Edwards','123 12th Street','Las Vegas','NV','99999','USA',5.0000,0.0000,3,'2006-01-22 00:00:00',NULL,0,NULL,3),
(33,6,8,'2006-01-30 00:00:00','2006-01-31 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',50.0000,0.0000,3,'2006-01-30 00:00:00',NULL,0,NULL,3),
(34,9,4,'2006-02-06 00:00:00','2006-02-07 00:00:00',3,'Christina Lee','123 4th Street','New York','NY','99999','USA',4.0000,0.0000,2,'2006-02-06 00:00:00',NULL,0,NULL,3),
(35,3,29,'2006-02-10 00:00:00','2006-02-12 00:00:00',2,'Soo Jung Lee','789 29th Street','Denver','CO','99999','USA',7.0000,0.0000,2,'2006-02-10 00:00:00',NULL,0,NULL,3),
(36,4,3,'2006-02-23 00:00:00','2006-02-25 00:00:00',2,'Thomas Axen','123 3rd Street','Los Angelas','CA','99999','USA',7.0000,0.0000,1,'2006-02-23 00:00:00',NULL,0,NULL,3),
(37,8,6,'2006-03-06 00:00:00','2006-03-09 00:00:00',2,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',12.0000,0.0000,3,'2006-03-06 00:00:00',NULL,0,NULL,3),
(38,9,28,'2006-03-10 00:00:00','2006-03-11 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',10.0000,0.0000,2,'2006-03-10 00:00:00',NULL,0,NULL,3),
(39,3,8,'2006-03-22 00:00:00','2006-03-24 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',5.0000,0.0000,2,'2006-03-22 00:00:00',NULL,0,NULL,3),
(40,4,10,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',9.0000,0.0000,3,'2006-03-24 00:00:00',NULL,0,NULL,3),
(41,1,7,'2006-03-24 00:00:00',NULL,NULL,'Ming-Yang Xie','123 7th Street','Boise','ID','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0),
(42,1,10,'2006-03-24 00:00:00','2006-04-07 00:00:00',1,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,2),
(43,1,11,'2006-03-24 00:00:00',NULL,3,'Peter Krschne','123 11th Street','Miami','FL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0),
(44,1,1,'2006-03-24 00:00:00',NULL,NULL,'Anna Bedecs','123 1st Street','Seattle','WA','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0),
(45,1,28,'2006-04-07 00:00:00','2006-04-07 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',40.0000,0.0000,3,'2006-04-07 00:00:00',NULL,0,NULL,3),
(46,7,9,'2006-04-05 00:00:00','2006-04-05 00:00:00',1,'Sven Mortensen','123 9th Street','Salt Lake City','UT','99999','USA',100.0000,0.0000,2,'2006-04-05 00:00:00',NULL,0,NULL,3),
(47,6,6,'2006-04-08 00:00:00','2006-04-08 00:00:00',2,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',300.0000,0.0000,3,'2006-04-08 00:00:00',NULL,0,NULL,3),
(48,4,8,'2006-04-05 00:00:00','2006-04-05 00:00:00',2,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',50.0000,0.0000,2,'2006-04-05 00:00:00',NULL,0,NULL,3),
(50,9,25,'2006-04-05 00:00:00','2006-04-05 00:00:00',1,'John Rodman','789 25th Street','Chicago','IL','99999','USA',5.0000,0.0000,1,'2006-04-05 00:00:00',NULL,0,NULL,3),
(51,9,26,'2006-04-05 00:00:00','2006-04-05 00:00:00',3,'Run Liu','789 26th Street','Miami','FL','99999','USA',60.0000,0.0000,3,'2006-04-05 00:00:00',NULL,0,NULL,3),
(55,1,29,'2006-04-05 00:00:00','2006-04-05 00:00:00',2,'Soo Jung Lee','789 29th Street','Denver','CO','99999','USA',200.0000,0.0000,2,'2006-04-05 00:00:00',NULL,0,NULL,3),
(56,2,6,'2006-04-03 00:00:00','2006-04-03 00:00:00',3,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',0.0000,0.0000,2,'2006-04-03 00:00:00',NULL,0,NULL,3),
(57,9,27,'2006-04-22 00:00:00','2006-04-22 00:00:00',2,'Karen Toh','789 27th Street','Las Vegas','NV','99999','USA',200.0000,0.0000,2,'2006-04-22 00:00:00',NULL,0,NULL,0),
(58,3,4,'2006-04-22 00:00:00','2006-04-22 00:00:00',1,'Christina Lee','123 4th Street','New York','NY','99999','USA',5.0000,0.0000,3,'2006-04-22 00:00:00',NULL,0,NULL,3),
(59,4,12,'2006-04-22 00:00:00','2006-04-22 00:00:00',2,'John Edwards','123 12th Street','Las Vegas','NV','99999','USA',5.0000,0.0000,3,'2006-04-22 00:00:00',NULL,0,NULL,0),
(60,6,8,'2006-04-30 00:00:00','2006-04-30 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',50.0000,0.0000,3,'2006-04-30 00:00:00',NULL,0,NULL,3),
(61,9,4,'2006-04-07 00:00:00','2006-04-07 00:00:00',3,'Christina Lee','123 4th Street','New York','NY','99999','USA',4.0000,0.0000,2,'2006-04-07 00:00:00',NULL,0,NULL,0),
(62,3,29,'2006-04-12 00:00:00','2006-04-12 00:00:00',2,'Soo Jung Lee','789 29th Street','Denver','CO','99999','USA',7.0000,0.0000,2,'2006-04-12 00:00:00',NULL,0,NULL,0),
(63,4,3,'2006-04-25 00:00:00','2006-04-25 00:00:00',2,'Thomas Axen','123 3rd Street','Los Angelas','CA','99999','USA',7.0000,0.0000,1,'2006-04-25 00:00:00',NULL,0,NULL,3),
(64,8,6,'2006-05-09 00:00:00','2006-05-09 00:00:00',2,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',12.0000,0.0000,3,'2006-05-09 00:00:00',NULL,0,NULL,0),
(65,9,28,'2006-05-11 00:00:00','2006-05-11 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',10.0000,0.0000,2,'2006-05-11 00:00:00',NULL,0,NULL,0),
(66,3,8,'2006-05-24 00:00:00','2006-05-24 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',5.0000,0.0000,2,'2006-05-24 00:00:00',NULL,0,NULL,0),
(67,4,10,'2006-05-24 00:00:00','2006-05-24 00:00:00',2,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',9.0000,0.0000,3,'2006-05-24 00:00:00',NULL,0,NULL,3),
(68,1,7,'2006-05-24 00:00:00',NULL,NULL,'Ming-Yang Xie','123 7th Street','Boise','ID','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0),
(69,1,10,'2006-05-24 00:00:00',NULL,1,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0),
(70,1,11,'2006-05-24 00:00:00',NULL,3,'Peter Krschne','123 11th Street','Miami','FL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0),
(71,1,1,'2006-05-24 00:00:00',NULL,3,'Anna Bedecs','123 1st Street','Seattle','WA','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0),
(72,1,28,'2006-06-07 00:00:00','2006-06-07 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',40.0000,0.0000,3,'2006-06-07 00:00:00',NULL,0,NULL,3),
(73,7,9,'2006-06-05 00:00:00','2006-06-05 00:00:00',1,'Sven Mortensen','123 9th Street','Salt Lake City','UT','99999','USA',100.0000,0.0000,2,'2006-06-05 00:00:00',NULL,0,NULL,3),
(74,6,6,'2006-06-08 00:00:00','2006-06-08 00:00:00',2,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',300.0000,0.0000,3,'2006-06-08 00:00:00',NULL,0,NULL,3),
(75,4,8,'2006-06-05 00:00:00','2006-06-05 00:00:00',2,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',50.0000,0.0000,2,'2006-06-05 00:00:00',NULL,0,NULL,3),
(76,9,25,'2006-06-05 00:00:00','2006-06-05 00:00:00',1,'John Rodman','789 25th Street','Chicago','IL','99999','USA',5.0000,0.0000,1,'2006-06-05 00:00:00',NULL,0,NULL,3),
(77,9,26,'2006-06-05 00:00:00','2006-06-05 00:00:00',3,'Run Liu','789 26th Street','Miami','FL','99999','USA',60.0000,0.0000,3,'2006-06-05 00:00:00',NULL,0,NULL,3),
(78,1,29,'2006-06-05 00:00:00','2006-06-05 00:00:00',2,'Soo Jung Lee','789 29th Street','Denver','CO','99999','USA',200.0000,0.0000,2,'2006-06-05 00:00:00',NULL,0,NULL,3),
(79,2,6,'2006-06-23 00:00:00','2006-06-23 00:00:00',3,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',0.0000,0.0000,2,'2006-06-23 00:00:00',NULL,0,NULL,3),
(80,2,4,'2006-04-25 17:03:55',NULL,NULL,'Christina Lee','123 4th Street','New York','NY','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0),
(81,2,3,'2006-04-25 17:26:53',NULL,NULL,'Thomas Axen','123 3rd Street','Los Angelas','CA','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0);

UNLOCK TABLES;

--
-- Table structure for table invoice
--

DROP TABLE IF EXISTS invoice;

CREATE TABLE invoice (
  id int NOT NULL AUTO_INCREMENT,
  customer_order_id int NOT NULL,
  invoice_date datetime DEFAULT NULL,
  due_date datetime DEFAULT NULL,
  tax decimal(19,4) DEFAULT '0.0000',
  shipping decimal(19,4) DEFAULT '0.0000',
  amount_due decimal(19,4) DEFAULT '0.0000',
  PRIMARY KEY (id),
  KEY customer_order_id (customer_order_id),
  CONSTRAINT fk_invoice_order1 FOREIGN KEY (customer_order_id) REFERENCES customer_order (id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table invoice
--

LOCK TABLES invoice WRITE;

INSERT INTO invoice VALUES (5,31,'2006-03-22 16:08:59',NULL,0.0000,0.0000,0.0000),(6,32,'2006-03-22 16:10:27',NULL,0.0000,0.0000,0.0000),(7,40,'2006-03-24 10:41:41',NULL,0.0000,0.0000,0.0000),(8,39,'2006-03-24 10:55:46',NULL,0.0000,0.0000,0.0000),(9,38,'2006-03-24 10:56:57',NULL,0.0000,0.0000,0.0000),(10,37,'2006-03-24 10:57:38',NULL,0.0000,0.0000,0.0000),(11,36,'2006-03-24 10:58:40',NULL,0.0000,0.0000,0.0000),(12,35,'2006-03-24 10:59:41',NULL,0.0000,0.0000,0.0000),(13,34,'2006-03-24 11:00:55',NULL,0.0000,0.0000,0.0000),(14,33,'2006-03-24 11:02:02',NULL,0.0000,0.0000,0.0000),(15,30,'2006-03-24 11:03:00',NULL,0.0000,0.0000,0.0000),(16,56,'2006-04-03 13:50:15',NULL,0.0000,0.0000,0.0000),(17,55,'2006-04-04 11:05:04',NULL,0.0000,0.0000,0.0000),(18,51,'2006-04-04 11:06:13',NULL,0.0000,0.0000,0.0000),(19,50,'2006-04-04 11:06:56',NULL,0.0000,0.0000,0.0000),(20,48,'2006-04-04 11:07:37',NULL,0.0000,0.0000,0.0000),(21,47,'2006-04-04 11:08:14',NULL,0.0000,0.0000,0.0000),(22,46,'2006-04-04 11:08:49',NULL,0.0000,0.0000,0.0000),(23,45,'2006-04-04 11:09:24',NULL,0.0000,0.0000,0.0000),(24,79,'2006-04-04 11:35:54',NULL,0.0000,0.0000,0.0000),(25,78,'2006-04-04 11:36:21',NULL,0.0000,0.0000,0.0000),(26,77,'2006-04-04 11:36:47',NULL,0.0000,0.0000,0.0000),(27,76,'2006-04-04 11:37:09',NULL,0.0000,0.0000,0.0000),(28,75,'2006-04-04 11:37:49',NULL,0.0000,0.0000,0.0000),(29,74,'2006-04-04 11:38:11',NULL,0.0000,0.0000,0.0000),(30,73,'2006-04-04 11:38:32',NULL,0.0000,0.0000,0.0000),(31,72,'2006-04-04 11:38:53',NULL,0.0000,0.0000,0.0000),(32,71,'2006-04-04 11:39:29',NULL,0.0000,0.0000,0.0000),(33,70,'2006-04-04 11:39:53',NULL,0.0000,0.0000,0.0000),(34,69,'2006-04-04 11:40:16',NULL,0.0000,0.0000,0.0000),(35,67,'2006-04-04 11:40:38',NULL,0.0000,0.0000,0.0000),(36,42,'2006-04-04 11:41:14',NULL,0.0000,0.0000,0.0000),(37,60,'2006-04-04 11:41:45',NULL,0.0000,0.0000,0.0000),(38,63,'2006-04-04 11:42:26',NULL,0.0000,0.0000,0.0000),(39,58,'2006-04-04 11:43:08',NULL,0.0000,0.0000,0.0000);

UNLOCK TABLES;


-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table product_supplier
--

DROP TABLE IF EXISTS product_supplier;

CREATE TABLE product_supplier (
  id int NOT NULL,
  product_id int NOT NULL,
  supplier_id int NOT NULL,
  PRIMARY KEY (id),
  KEY id (id),
  KEY product_id (product_id),
  KEY supplier_id (supplier_id),
  CONSTRAINT fk_product_supplier_product1 FOREIGN KEY (product_id) REFERENCES product (id),
  CONSTRAINT fk_product_supplier_supplier1 FOREIGN KEY (supplier_id) REFERENCES supplier (id)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;
--
-- Dumping data for table product_supplier
--
LOCK TABLES product_supplier WRITE;

INSERT INTO product_supplier VALUES 
(1,19,1),(2,21,1),(3,52,1),(4,56,1),(5,57,1),(6,82,1),(7,85,1),(8,86,1),(9,97,1),
(10,6,2),(11,7,2),(12,14,2),(13,20,2),(14,51,2),(15,74,2),(16,80,2),(50,19,2),
(17,43,3),(18,81,3),(51,21,2),
(19,1,4),(20,34,4),(21,43,4),
(22,72,5),
(23,6,6),(24,17,6),(25,20,6),(26,41,6),(27,74,6),(28,88,6),(29,89,6),(30,90,6),
(31,91,6),(32,92,6),(33,93,6),(34,94,6),(35,98,6),(36,99,6),
(37,40,7),(38,87,7),(39,95,7),(40,96,7),
(41,8,8),(42,65,8),(43,66,8),
(44,83,9),
(45,3,10),(46,4,10),(47,5,10),(48,48,10),(49,77,10);


UNLOCK TABLES;

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table purchase_order
--

DROP TABLE IF EXISTS purchase_order;

CREATE TABLE purchase_order (
  id int NOT NULL AUTO_INCREMENT,
  supplier_id int DEFAULT NULL,
  created_by int DEFAULT NULL,
  submitted_date datetime DEFAULT NULL,
  creation_date datetime DEFAULT NULL,
  status_id int DEFAULT '0',
  expected_date datetime DEFAULT NULL,
  shipping_fee decimal(19,4) NOT NULL DEFAULT '0.0000',
  taxes decimal(19,4) NOT NULL DEFAULT '0.0000',
  payment_date datetime DEFAULT NULL,
  payment_amount decimal(19,4) DEFAULT '0.0000',
  payment_method varchar(64) DEFAULT NULL,
  notes longtext,
  approved_by int DEFAULT NULL,
  approved_date datetime DEFAULT NULL,
  submitted_by int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY supplier_id (supplier_id),
  KEY created_by (created_by),
  KEY status_id (status_id),
  KEY approved_by (approved_by),
  KEY submitted_by (submitted_by),
  CONSTRAINT fk_purchase_order_supplier1 FOREIGN KEY (supplier_id) REFERENCES supplier (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_purchase_order_employee1 FOREIGN KEY (created_by) REFERENCES employee (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_purchase_order_purchase_order_status1 FOREIGN KEY (status_id) REFERENCES purchase_order_status (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_purchase_order_employee2 FOREIGN KEY (approved_by) REFERENCES employee (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_purchase_order_employee3 FOREIGN KEY (submitted_by) REFERENCES employee (id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table purchase_order
--

LOCK TABLES purchase_order WRITE;

INSERT INTO purchase_order VALUES (90,1,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),
(91,3,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),
(92,2,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),
(93,5,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),
(94,6,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),
(95,4,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-01-22 00:00:00',2),
(96,1,5,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #30',2,'2006-01-22 00:00:00',5),
(97,2,7,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #33',2,'2006-01-22 00:00:00',7),
(98,2,4,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #36',2,'2006-01-22 00:00:00',4),
(99,1,3,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #38',2,'2006-01-22 00:00:00',3),
(100,2,9,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #39',2,'2006-01-22 00:00:00',9),
(101,1,2,'2006-01-14 00:00:00','2006-01-22 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #40',2,'2006-01-22 00:00:00',2),
(102,1,1,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #41',2,'2006-04-04 00:00:00',1),
(103,2,1,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #42',2,'2006-04-04 00:00:00',1),
(104,2,1,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #45',2,'2006-04-04 00:00:00',1),
(105,5,7,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,'CHECK','Purchase generated based on Order #46',2,'2006-04-04 00:00:00',7),
(106,6,7,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #46',2,'2006-04-04 00:00:00',7),
(107,1,6,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #47',2,'2006-04-04 00:00:00',6),
(108,2,4,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #48',2,'2006-04-04 00:00:00',4),
(109,2,4,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #48',2,'2006-04-04 00:00:00',4),
(110,1,3,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #49',2,'2006-04-04 00:00:00',3),
(111,1,2,'2006-03-31 00:00:00','2006-03-31 00:00:00',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,'Purchase generated based on Order #56',2,'2006-04-04 00:00:00',2),
(140,6,NULL,'2006-04-25 00:00:00','2006-04-25 16:40:51',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-04-25 16:41:33',2),
(141,8,NULL,'2006-04-25 00:00:00','2006-04-25 17:10:35',2,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,2,'2006-04-25 17:10:55',2),
(142,8,NULL,'2006-04-25 00:00:00','2006-04-25 17:18:29',2,NULL,0.0000,0.0000,NULL,0.0000,'CHECK',NULL,2,'2006-04-25 17:18:51',2),
(146,2,2,'2006-04-26 18:26:37','2006-04-26 18:26:37',1,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,NULL,NULL,2),
(147,7,2,'2006-04-26 18:33:28','2006-04-26 18:33:28',1,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,NULL,NULL,2),
(148,5,2,'2006-04-26 18:33:52','2006-04-26 18:33:52',1,NULL,0.0000,0.0000,NULL,0.0000,NULL,NULL,NULL,NULL,2);

UNLOCK TABLES;

--
-- Table structure for table inventory_transaction
--
DROP TABLE IF EXISTS inventory_transaction;

CREATE TABLE inventory_transaction (
  id int NOT NULL AUTO_INCREMENT,
  transaction_type int NOT NULL,
  transaction_created_date datetime DEFAULT NULL,
  transaction_modified_date datetime DEFAULT NULL,
  product_id int NOT NULL,
  quantity int NOT NULL,  
  purchase_order_id int DEFAULT NULL,
  customer_order_id int DEFAULT NULL,
  comments varchar(256) DEFAULT NULL,  
  PRIMARY KEY (id),
  KEY transaction_type (transaction_type),
  KEY product_id (product_id),
  KEY purchase_order_id (purchase_order_id),  
  KEY customer_order_id (customer_order_id),
  CONSTRAINT fk_inventory_transaction_inventory_transaction_type1 FOREIGN KEY (transaction_type) REFERENCES inventory_transaction_type (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_inventory_transaction_product1 FOREIGN KEY (product_id) REFERENCES product (id) ON DELETE NO ACTION ON UPDATE NO ACTION,   
  CONSTRAINT fk_inventory_transaction_purchase_order1 FOREIGN KEY (purchase_order_id) REFERENCES purchase_order (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_inventory_transaction_customer_order1 FOREIGN KEY (customer_order_id) REFERENCES customer_order (id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table inventory_transaction
--

LOCK TABLES inventory_transaction WRITE;

INSERT INTO inventory_transaction VALUES 
(35,1,'2006-03-22 16:02:28','2006-03-22 16:02:28',80,75,NULL,NULL,NULL),			
(36,1,'2006-03-22 16:02:48','2006-03-22 16:02:48',72,40,NULL,NULL,NULL),
(37,1,'2006-03-22 16:03:04','2006-03-22 16:03:04',52,100,NULL,NULL,NULL),
(38,1,'2006-03-22 16:03:09','2006-03-22 16:03:09',56,120,NULL,NULL,NULL),
(39,1,'2006-03-22 16:03:14','2006-03-22 16:03:14',57,80,NULL,NULL,NULL),
(40,1,'2006-03-22 16:03:40','2006-03-22 16:03:40',6,100,NULL,NULL,NULL),
(41,1,'2006-03-22 16:03:47','2006-03-22 16:03:47',7,40,NULL,NULL,NULL),
(42,1,'2006-03-22 16:03:54','2006-03-22 16:03:54',8,40,NULL,NULL,NULL),
(43,1,'2006-03-22 16:04:02','2006-03-22 16:04:02',14,40,NULL,NULL,NULL),
(44,1,'2006-03-22 16:04:07','2006-03-22 16:04:07',17,40,NULL,NULL,NULL),
(45,1,'2006-03-22 16:04:12','2006-03-22 16:04:12',19,20,NULL,NULL,NULL),
(46,1,'2006-03-22 16:04:17','2006-03-22 16:04:17',20,40,NULL,NULL,NULL),
(47,1,'2006-03-22 16:04:20','2006-03-22 16:04:20',21,20,NULL,NULL,NULL),
(48,1,'2006-03-22 16:04:24','2006-03-22 16:04:24',40,120,NULL,NULL,NULL),
(49,1,'2006-03-22 16:04:28','2006-03-22 16:04:28',41,40,NULL,NULL,NULL),
(50,1,'2006-03-22 16:04:31','2006-03-22 16:04:31',48,100,NULL,NULL,NULL),
(51,1,'2006-03-22 16:04:38','2006-03-22 16:04:38',51,40,NULL,NULL,NULL),
(52,1,'2006-03-22 16:04:41','2006-03-22 16:04:41',74,20,NULL,NULL,NULL),
(53,1,'2006-03-22 16:04:45','2006-03-22 16:04:45',77,60,NULL,NULL,NULL),
(54,1,'2006-03-22 16:05:07','2006-03-22 16:05:07',3,100,NULL,NULL,NULL),
(55,1,'2006-03-22 16:05:11','2006-03-22 16:05:11',4,40,NULL,NULL,NULL),
(56,1,'2006-03-22 16:05:14','2006-03-22 16:05:14',5,40,NULL,NULL,NULL),
(57,1,'2006-03-22 16:05:26','2006-03-22 16:05:26',65,40,NULL,NULL,NULL),
(58,1,'2006-03-22 16:05:32','2006-03-22 16:05:32',66,80,NULL,NULL,NULL),
(59,1,'2006-03-22 16:05:47','2006-03-22 16:05:47',1,40,NULL,NULL,NULL),
(60,1,'2006-03-22 16:05:51','2006-03-22 16:05:51',34,60,NULL,NULL,NULL),
(61,1,'2006-03-22 16:06:00','2006-03-22 16:06:00',43,100,NULL,NULL,NULL),
(62,1,'2006-03-22 16:06:03','2006-03-22 16:06:03',81,125,NULL,NULL,NULL),
(63,2,'2006-03-22 16:07:56','2006-03-24 11:03:00',80,30,NULL,NULL,NULL),
(64,2,'2006-03-22 16:08:19','2006-03-22 16:08:59',7,10,NULL,NULL,NULL),
(65,2,'2006-03-22 16:08:29','2006-03-22 16:08:59',51,10,NULL,NULL,NULL),
(66,2,'2006-03-22 16:08:37','2006-03-22 16:08:59',80,10,NULL,NULL,NULL),
(67,2,'2006-03-22 16:09:46','2006-03-22 16:10:27',1,15,NULL,NULL,NULL),
(68,2,'2006-03-22 16:10:06','2006-03-22 16:10:27',43,20,NULL,NULL,NULL),
(69,2,'2006-03-22 16:11:39','2006-03-24 11:00:55',19,20,NULL,NULL,NULL),
(70,2,'2006-03-22 16:11:56','2006-03-24 10:59:41',48,10,NULL,NULL,NULL),
(71,2,'2006-03-22 16:12:29','2006-03-24 10:57:38',8,17,NULL,NULL,NULL),
(72,1,'2006-03-24 10:41:30','2006-03-24 10:41:30',81,200,NULL,NULL,NULL),
(73,2,'2006-03-24 10:41:33','2006-03-24 10:41:42',81,200,NULL,NULL,'Fill Back Ordered product, Order #40'),
(74,1,'2006-03-24 10:53:13','2006-03-24 10:53:13',48,100,NULL,NULL,NULL),
(75,2,'2006-03-24 10:53:16','2006-03-24 10:55:46',48,100,NULL,NULL,'Fill Back Ordered product, Order #39'),
(76,1,'2006-03-24 10:53:36','2006-03-24 10:53:36',43,300,NULL,NULL,NULL),
(77,2,'2006-03-24 10:53:39','2006-03-24 10:56:57',43,300,NULL,NULL,'Fill Back Ordered product, Order #38'),
(78,1,'2006-03-24 10:54:04','2006-03-24 10:54:04',41,200,NULL,NULL,NULL),
(79,2,'2006-03-24 10:54:07','2006-03-24 10:58:40',41,200,NULL,NULL,'Fill Back Ordered product, Order #36'),
(80,1,'2006-03-24 10:54:33','2006-03-24 10:54:33',19,30,NULL,NULL,NULL),
(81,2,'2006-03-24 10:54:35','2006-03-24 11:02:02',19,30,NULL,NULL,'Fill Back Ordered product, Order #33'),
(82,1,'2006-03-24 10:54:58','2006-03-24 10:54:58',34,100,NULL,NULL,NULL),
(83,2,'2006-03-24 10:55:02','2006-03-24 11:03:00',34,100,NULL,NULL,'Fill Back Ordered product, Order #30'),
(84,2,'2006-03-24 14:48:15','2006-04-04 11:41:14',6,10,NULL,NULL,NULL),
(85,2,'2006-03-24 14:48:23','2006-04-04 11:41:14',4,10,NULL,NULL,NULL),
(86,3,'2006-03-24 14:49:16','2006-03-24 14:49:16',80,20,NULL,NULL,NULL),
(87,3,'2006-03-24 14:49:20','2006-03-24 14:49:20',81,50,NULL,NULL,NULL),
(88,3,'2006-03-24 14:50:09','2006-03-24 14:50:09',1,25,NULL,NULL,NULL),
(89,3,'2006-03-24 14:50:14','2006-03-24 14:50:14',43,25,NULL,NULL,NULL),
(90,3,'2006-03-24 14:50:18','2006-03-24 14:50:18',81,25,NULL,NULL,NULL),
(91,2,'2006-03-24 14:51:03','2006-04-04 11:09:24',40,50,NULL,NULL,NULL),
(92,2,'2006-03-24 14:55:03','2006-04-04 11:06:56',21,20,NULL,NULL,NULL),
(93,2,'2006-03-24 14:55:39','2006-04-04 11:06:13',5,25,NULL,NULL,NULL),
(94,2,'2006-03-24 14:55:52','2006-04-04 11:06:13',41,30,NULL,NULL,NULL),
(95,2,'2006-03-24 14:56:09','2006-04-04 11:06:13',40,30,NULL,NULL,NULL),
(96,3,'2006-03-30 16:46:34','2006-03-30 16:46:34',34,12,NULL,NULL,NULL),
(97,3,'2006-03-30 17:23:27','2006-03-30 17:23:27',34,10,NULL,NULL,NULL),
(98,3,'2006-03-30 17:24:33','2006-03-30 17:24:33',34,1,NULL,NULL,NULL),
(99,2,'2006-04-03 13:50:08','2006-04-03 13:50:15',48,10,NULL,NULL,NULL),
(100,1,'2006-04-04 11:00:54','2006-04-04 11:00:54',57,100,NULL,NULL,NULL),
(101,2,'2006-04-04 11:00:56','2006-04-04 11:08:49',57,100,NULL,NULL,'Fill Back Ordered product, Order #46'),
(102,1,'2006-04-04 11:01:14','2006-04-04 11:01:14',34,50,NULL,NULL,NULL),
(103,1,'2006-04-04 11:01:35','2006-04-04 11:01:35',43,250,NULL,NULL,NULL),
(104,3,'2006-04-04 11:01:37','2006-04-04 11:01:37',43,300,NULL,NULL,'Fill Back Ordered product, Order #41'),
(105,1,'2006-04-04 11:01:55','2006-04-04 11:01:55',8,25,NULL,NULL,NULL),
(106,2,'2006-04-04 11:01:58','2006-04-04 11:07:37',8,25,NULL,NULL,'Fill Back Ordered product, Order #48'),
(107,1,'2006-04-04 11:02:17','2006-04-04 11:02:17',34,300,NULL,NULL,NULL),
(108,2,'2006-04-04 11:02:19','2006-04-04 11:08:14',34,300,NULL,NULL,'Fill Back Ordered product, Order #47'),
(109,1,'2006-04-04 11:02:37','2006-04-04 11:02:37',19,25,NULL,NULL,NULL),
(110,2,'2006-04-04 11:02:39','2006-04-04 11:41:14',19,10,NULL,NULL,'Fill Back Ordered product, Order #42'),
(111,1,'2006-04-04 11:02:56','2006-04-04 11:02:56',19,10,NULL,NULL,NULL),
(112,2,'2006-04-04 11:02:58','2006-04-04 11:07:37',19,25,NULL,NULL,'Fill Back Ordered product, Order #48'),
(113,1,'2006-04-04 11:03:12','2006-04-04 11:03:12',72,50,NULL,NULL,NULL),
(114,2,'2006-04-04 11:03:14','2006-04-04 11:08:49',72,50,NULL,NULL,'Fill Back Ordered product, Order #46'),
(115,1,'2006-04-04 11:03:38','2006-04-04 11:03:38',41,50,NULL,NULL,NULL),
(116,2,'2006-04-04 11:03:39','2006-04-04 11:09:24',41,50,NULL,NULL,'Fill Back Ordered product, Order #45'),
(117,2,'2006-04-04 11:04:55','2006-04-04 11:05:04',34,87,NULL,NULL,NULL),
(118,2,'2006-04-04 11:35:50','2006-04-04 11:35:54',51,30,NULL,NULL,NULL),
(119,2,'2006-04-04 11:35:51','2006-04-04 11:35:54',7,30,NULL,NULL,NULL),
(120,2,'2006-04-04 11:36:15','2006-04-04 11:36:21',17,40,NULL,NULL,NULL),
(121,2,'2006-04-04 11:36:39','2006-04-04 11:36:47',6,90,NULL,NULL,NULL),
(122,2,'2006-04-04 11:37:06','2006-04-04 11:37:09',4,30,NULL,NULL,NULL),
(123,2,'2006-04-04 11:37:45','2006-04-04 11:37:49',48,40,NULL,NULL,NULL),
(124,2,'2006-04-04 11:38:07','2006-04-04 11:38:11',48,40,NULL,NULL,NULL),
(125,2,'2006-04-04 11:38:27','2006-04-04 11:38:32',41,10,NULL,NULL,NULL),
(126,2,'2006-04-04 11:38:48','2006-04-04 11:38:53',43,5,NULL,NULL,NULL),
(127,2,'2006-04-04 11:39:12','2006-04-04 11:39:29',40,40,NULL,NULL,NULL),
(128,2,'2006-04-04 11:39:50','2006-04-04 11:39:53',8,20,NULL,NULL,NULL),
(129,2,'2006-04-04 11:40:13','2006-04-04 11:40:16',80,15,NULL,NULL,NULL),
(130,2,'2006-04-04 11:40:32','2006-04-04 11:40:38',74,20,NULL,NULL,NULL),
(131,2,'2006-04-04 11:41:39','2006-04-04 11:41:45',72,40,NULL,NULL,NULL),
(132,2,'2006-04-04 11:42:17','2006-04-04 11:42:26',3,50,NULL,NULL,NULL),
(133,2,'2006-04-04 11:42:24','2006-04-04 11:42:26',8,3,NULL,NULL,NULL),
(134,2,'2006-04-04 11:42:48','2006-04-04 11:43:08',20,40,NULL,NULL,NULL),
(135,2,'2006-04-04 11:43:05','2006-04-04 11:43:08',52,40,NULL,NULL,NULL),
(136,3,'2006-04-25 17:04:05','2006-04-25 17:04:57',56,110,NULL,NULL,NULL);

UNLOCK TABLES;

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table order_detail
--

DROP TABLE IF EXISTS order_detail;

CREATE TABLE order_detail (
  id int NOT NULL AUTO_INCREMENT,
  customer_order_id int NOT NULL,
  product_id int DEFAULT NULL,
  quantity decimal(18,4) NOT NULL DEFAULT '0.0000',
  unit_price decimal(19,4) DEFAULT '0.0000',
  discount double NOT NULL DEFAULT '0',
  status_id int DEFAULT NULL,
  date_allocated datetime DEFAULT NULL,
  purchase_order_id int DEFAULT NULL,
  inventory_transaction_id int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY customer_order_id (customer_order_id),
  KEY product_id (product_id),
  KEY status_id (status_id),
  KEY purchase_order_id (purchase_order_id),
  KEY inventory_transaction_id (inventory_transaction_id),
  CONSTRAINT fk_order_detail_order1 FOREIGN KEY (customer_order_id) REFERENCES customer_order (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_order_detail_product1 FOREIGN KEY (product_id) REFERENCES product (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_order_detail_order_status1 FOREIGN KEY (status_id) REFERENCES order_status (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_order_detail_purchase_order_id1 FOREIGN KEY (purchase_order_id) REFERENCES purchase_order (id) ON DELETE NO ACTION ON UPDATE NO ACTION,  
  CONSTRAINT fk_order_detail_inventory1 FOREIGN KEY (inventory_transaction_id) REFERENCES inventory_transaction (id) ON DELETE NO ACTION ON UPDATE NO ACTION   
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table order_detail
--

LOCK TABLES order_detail WRITE;

INSERT INTO order_detail VALUES 
(27,30,34,100.0000,14.0000,0,2,NULL,96,83),
(28,30,80,30.0000,3.5000,0,2,NULL,NULL,63),
(29,31,7,10.0000,30.0000,0,2,NULL,NULL,64),
(30,31,51,10.0000,53.0000,0,2,NULL,NULL,65),
(31,31,80,10.0000,3.5000,0,2,NULL,NULL,66),
(32,32,1,15.0000,18.0000,0,2,NULL,NULL,67),
(33,32,43,20.0000,46.0000,0,2,NULL,NULL,68),
(34,33,19,30.0000,9.2000,0,2,NULL,97,81),
(35,34,19,20.0000,9.2000,0,2,NULL,NULL,69),
(36,35,48,10.0000,12.7500,0,2,NULL,NULL,70),
(37,36,41,200.0000,9.6500,0,2,NULL,98,79),
(38,37,8,17.0000,40.0000,0,2,NULL,NULL,71),
(39,38,43,300.0000,46.0000,0,2,NULL,99,77),
(40,39,48,100.0000,12.7500,0,2,NULL,100,75),
(41,40,81,200.0000,2.9900,0,2,NULL,101,73),
(42,41,43,300.0000,46.0000,0,1,NULL,102,104),
(43,42,6,10.0000,25.0000,0,2,NULL,NULL,84),
(44,42,4,10.0000,22.0000,0,2,NULL,NULL,85),
(45,42,19,10.0000,9.2000,0,2,NULL,103,110),
(46,43,80,20.0000,3.5000,0,1,NULL,NULL,86),
(47,43,81,50.0000,2.9900,0,1,NULL,NULL,87),
(48,44,1,25.0000,18.0000,0,1,NULL,NULL,88),
(49,44,43,25.0000,46.0000,0,1,NULL,NULL,89),
(50,44,81,25.0000,2.9900,0,1,NULL,NULL,90),
(51,45,41,50.0000,9.6500,0,2,NULL,104,116),
(52,45,40,50.0000,18.4000,0,2,NULL,NULL,91),
(53,46,57,100.0000,19.5000,0,2,NULL,105,101),
(54,46,72,50.0000,34.8000,0,2,NULL,106,114),
(55,47,34,300.0000,14.0000,0,2,NULL,107,108),
(56,48,8,25.0000,40.0000,0,2,NULL,108,106),
(57,48,19,25.0000,9.2000,0,2,NULL,109,112),
(59,50,21,20.0000,10.0000,0,2,NULL,NULL,92),
(60,51,5,25.0000,21.3500,0,2,NULL,NULL,93),
(61,51,41,30.0000,9.6500,0,2,NULL,NULL,94),
(62,51,40,30.0000,18.4000,0,2,NULL,NULL,95),
(66,56,48,10.0000,12.7500,0,2,NULL,111,99),
(67,55,34,87.0000,14.0000,0,2,NULL,NULL,117),
(68,79,7,30.0000,30.0000,0,2,NULL,NULL,119),
(69,79,51,30.0000,53.0000,0,2,NULL,NULL,118),
(70,78,17,40.0000,39.0000,0,2,NULL,NULL,120),
(71,77,6,90.0000,25.0000,0,2,NULL,NULL,121),
(72,76,4,30.0000,22.0000,0,2,NULL,NULL,122),
(73,75,48,40.0000,12.7500,0,2,NULL,NULL,123),
(74,74,48,40.0000,12.7500,0,2,NULL,NULL,124),
(75,73,41,10.0000,9.6500,0,2,NULL,NULL,125),
(76,72,43,5.0000,46.0000,0,2,NULL,NULL,126),
(77,71,40,40.0000,18.4000,0,2,NULL,NULL,127),
(78,70,8,20.0000,40.0000,0,2,NULL,NULL,128),
(79,69,80,15.0000,3.5000,0,2,NULL,NULL,129),
(80,67,74,20.0000,10.0000,0,2,NULL,NULL,130),
(81,60,72,40.0000,34.8000,0,2,NULL,NULL,131),
(82,63,3,50.0000,10.0000,0,2,NULL,NULL,132),
(83,63,8,3.0000,40.0000,0,2,NULL,NULL,133),
(84,58,20,40.0000,81.0000,0,2,NULL,NULL,134),
(85,58,52,40.0000,7.0000,0,2,NULL,NULL,135),
(86,80,56,10.0000,38.0000,0,1,NULL,NULL,136),
(90,81,81,0.0000,2.9900,0,3,NULL,NULL,NULL),
(91,81,56,0.0000,38.0000,0,0,NULL,NULL,NULL);

UNLOCK TABLES;

-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table purchase_order_detail
--

DROP TABLE IF EXISTS purchase_order_detail;

CREATE TABLE purchase_order_detail (
  id int NOT NULL AUTO_INCREMENT,
  purchase_order_id int NOT NULL,
  product_id int DEFAULT NULL,
  quantity decimal(18,4) NOT NULL,
  unit_cost decimal(19,4) NOT NULL,
  date_received datetime DEFAULT NULL,
  posted_to_inventory tinyint NOT NULL DEFAULT '0',
  inventory_transaction_id int DEFAULT NULL,
  PRIMARY KEY (id),
  KEY purchase_order_id (purchase_order_id),
  KEY product_id (product_id),  
  KEY inventory_transaction_id (inventory_transaction_id),
  CONSTRAINT fk_purchase_order_detail_purchase_order1 FOREIGN KEY (purchase_order_id) REFERENCES purchase_order (id) ON DELETE NO ACTION ON UPDATE NO ACTION,  
  CONSTRAINT fk_purchase_order_detail_product1 FOREIGN KEY (product_id) REFERENCES product (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_purchase_order_detail_inventory_transaction1 FOREIGN KEY (inventory_transaction_id) REFERENCES inventory_transaction (id) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=296 DEFAULT CHARSET=UTF8MB4;


--
-- Dumping data for table purchase_order_detail
--

LOCK TABLES purchase_order_detail WRITE;

INSERT INTO purchase_order_detail VALUES 
(238,90,1,40.0000,14.0000,'2006-01-22 00:00:00',1,59),
(239,91,3,100.0000,8.0000,'2006-01-22 00:00:00',1,54),
(240,91,4,40.0000,16.0000,'2006-01-22 00:00:00',1,55),
(241,91,5,40.0000,16.0000,'2006-01-22 00:00:00',1,56),
(242,92,6,100.0000,19.0000,'2006-01-22 00:00:00',1,40),
(243,92,7,40.0000,22.0000,'2006-01-22 00:00:00',1,41),
(244,92,8,40.0000,30.0000,'2006-01-22 00:00:00',1,42),
(245,92,14,40.0000,17.0000,'2006-01-22 00:00:00',1,43),
(246,92,17,40.0000,29.0000,'2006-01-22 00:00:00',1,44),
(247,92,19,20.0000,7.0000,'2006-01-22 00:00:00',1,45),
(248,92,20,40.0000,61.0000,'2006-01-22 00:00:00',1,46),
(249,92,21,20.0000,8.0000,'2006-01-22 00:00:00',1,47),
(250,90,34,60.0000,10.0000,'2006-01-22 00:00:00',1,60),
(251,92,40,120.0000,14.0000,'2006-01-22 00:00:00',1,48),
(252,92,41,40.0000,7.0000,'2006-01-22 00:00:00',1,49),
(253,90,43,100.0000,34.0000,'2006-01-22 00:00:00',1,61),
(254,92,48,100.0000,10.0000,'2006-01-22 00:00:00',1,50),
(255,92,51,40.0000,40.0000,'2006-01-22 00:00:00',1,51),
(256,93,52,100.0000,5.0000,'2006-01-22 00:00:00',1,37),
(257,93,56,120.0000,28.0000,'2006-01-22 00:00:00',1,38),
(258,93,57,80.0000,15.0000,'2006-01-22 00:00:00',1,39),
(259,91,65,40.0000,16.0000,'2006-01-22 00:00:00',1,57),
(260,91,66,80.0000,13.0000,'2006-01-22 00:00:00',1,58),
(261,94,72,40.0000,26.0000,'2006-01-22 00:00:00',1,36),
(262,92,74,20.0000,8.0000,'2006-01-22 00:00:00',1,52),
(263,92,77,60.0000,10.0000,'2006-01-22 00:00:00',1,53),
(264,95,80,75.0000,3.0000,'2006-01-22 00:00:00',1,35),
(265,90,81,125.0000,2.0000,'2006-01-22 00:00:00',1,62),
(266,96,34,100.0000,10.0000,'2006-01-22 00:00:00',1,82),
(267,97,19,30.0000,7.0000,'2006-01-22 00:00:00',1,80),
(268,98,41,200.0000,7.0000,'2006-01-22 00:00:00',1,78),
(269,99,43,300.0000,34.0000,'2006-01-22 00:00:00',1,76),
(270,100,48,100.0000,10.0000,'2006-01-22 00:00:00',1,74),
(271,101,81,200.0000,2.0000,'2006-01-22 00:00:00',1,72),
(272,102,43,300.0000,34.0000,NULL,0,NULL),
(273,103,19,10.0000,7.0000,'2006-04-17 00:00:00',1,111),
(274,104,41,50.0000,7.0000,'2006-04-06 00:00:00',1,115),
(275,105,57,100.0000,15.0000,'2006-04-05 00:00:00',1,100),
(276,106,72,50.0000,26.0000,'2006-04-05 00:00:00',1,113),
(277,107,34,300.0000,10.0000,'2006-04-05 00:00:00',1,107),
(278,108,8,25.0000,30.0000,'2006-04-05 00:00:00',1,105),
(279,109,19,25.0000,7.0000,'2006-04-05 00:00:00',1,109),
(280,110,43,250.0000,34.0000,'2006-04-10 00:00:00',1,103),
(281,90,1,40.0000,14.0000,NULL,0,NULL),
(282,92,19,20.0000,7.0000,NULL,0,NULL),
(283,111,34,50.0000,10.0000,'2006-04-04 00:00:00',1,102),
(285,91,3,50.0000,8.0000,NULL,0,NULL),
(286,91,4,40.0000,16.0000,NULL,0,NULL),
(288,140,85,10.0000,9.0000,NULL,0,NULL),
(289,141,6,10.0000,18.7500,NULL,0,NULL),
(290,142,1,1.0000,13.5000,NULL,0,NULL),
(292,146,20,40.0000,60.0000,NULL,0,NULL),
(293,146,51,40.0000,39.0000,NULL,0,NULL),
(294,147,40,120.0000,13.0000,NULL,0,NULL),
(295,148,72,40.0000,26.0000,NULL,0,NULL);

UNLOCK TABLES;
