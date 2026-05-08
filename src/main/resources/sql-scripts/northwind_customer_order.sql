-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: northwind-01-mysql.mysql.database.azure.com    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.44-azure-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_order` (
  `id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `customer_id` int NOT NULL,
  `order_date` datetime NOT NULL,
  `shipped_date` datetime DEFAULT NULL,
  `shipper_id` int DEFAULT NULL,
  `ship_name` varchar(50) DEFAULT NULL,
  `ship_address` longtext,
  `ship_city` varchar(50) DEFAULT NULL,
  `ship_state_province` varchar(50) DEFAULT NULL,
  `ship_zip_postal_code` varchar(50) DEFAULT NULL,
  `ship_country_region` varchar(50) DEFAULT NULL,
  `shipping_fee` decimal(19,4) DEFAULT '0.0000',
  `taxes` decimal(19,4) DEFAULT '0.0000',
  `payment_type_id` int DEFAULT NULL,
  `paid_date` datetime DEFAULT NULL,
  `notes` longtext,
  `tax_rate` double DEFAULT '0',
  `tax_status_id` int DEFAULT NULL,
  `status_id` int DEFAULT '0',
  `payment_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `customer_id` (`customer_id`),
  KEY `employee_id` (`employee_id`),
  KEY `shipper_id` (`shipper_id`),
  KEY `status_id` (`status_id`),
  KEY `tax_status_id` (`tax_status_id`),
  KEY `payment_type` (`payment_type_id`),
  CONSTRAINT `fk_order_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_employee1` FOREIGN KEY (`employee_id`) REFERENCES `employee` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_order_status1` FOREIGN KEY (`status_id`) REFERENCES `order_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_order_tax_status1` FOREIGN KEY (`tax_status_id`) REFERENCES `order_tax_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_payment_type1` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_shipper1` FOREIGN KEY (`shipper_id`) REFERENCES `shipper` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` VALUES (30,9,27,'2006-01-15 00:00:00','2006-01-22 00:00:00',2,'Karen Toh','789 27th Street','Las Vegas','NV','99999','USA',200.0000,0.0000,2,'2006-01-15 00:00:00',NULL,0,NULL,3,NULL),(31,3,4,'2006-01-20 00:00:00','2006-01-22 00:00:00',1,'Christina Lee','123 4th Street','New York','NY','99999','USA',5.0000,0.0000,3,'2006-01-20 00:00:00',NULL,0,NULL,3,NULL),(32,4,12,'2006-01-22 00:00:00','2006-01-22 00:00:00',2,'John Edwards','123 12th Street','Las Vegas','NV','99999','USA',5.0000,0.0000,3,'2006-01-22 00:00:00',NULL,0,NULL,3,NULL),(33,6,8,'2006-01-30 00:00:00','2006-01-31 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',50.0000,0.0000,3,'2006-01-30 00:00:00',NULL,0,NULL,3,NULL),(34,9,4,'2006-02-06 00:00:00','2006-02-07 00:00:00',3,'Christina Lee','123 4th Street','New York','NY','99999','USA',4.0000,0.0000,2,'2006-02-06 00:00:00',NULL,0,NULL,3,NULL),(35,3,29,'2006-02-10 00:00:00','2006-02-12 00:00:00',2,'Soo Jung Lee','789 29th Street','Denver','CO','99999','USA',7.0000,0.0000,2,'2006-02-10 00:00:00',NULL,0,NULL,3,NULL),(36,4,3,'2006-02-23 00:00:00','2006-02-25 00:00:00',2,'Thomas Axen','123 3rd Street','Los Angelas','CA','99999','USA',7.0000,0.0000,1,'2006-02-23 00:00:00',NULL,0,NULL,3,NULL),(37,8,6,'2006-03-06 00:00:00','2006-03-09 00:00:00',2,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',12.0000,0.0000,3,'2006-03-06 00:00:00',NULL,0,NULL,3,NULL),(38,9,28,'2006-03-10 00:00:00','2006-03-11 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',10.0000,0.0000,2,'2006-03-10 00:00:00',NULL,0,NULL,3,NULL),(39,3,8,'2006-03-22 00:00:00','2006-03-24 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',5.0000,0.0000,2,'2006-03-22 00:00:00',NULL,0,NULL,3,NULL),(40,4,10,'2006-03-24 00:00:00','2006-03-24 00:00:00',2,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',9.0000,0.0000,3,'2006-03-24 00:00:00',NULL,0,NULL,3,NULL),(41,1,7,'2006-03-24 00:00:00',NULL,NULL,'Ming-Yang Xie','123 7th Street','Boise','ID','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0,NULL),(42,1,10,'2006-03-24 00:00:00','2006-04-07 00:00:00',1,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,2,NULL),(43,1,11,'2006-03-24 00:00:00',NULL,3,'Peter Krschne','123 11th Street','Miami','FL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0,NULL),(44,1,1,'2006-03-24 00:00:00',NULL,NULL,'Anna Bedecs','123 1st Street','Seattle','WA','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0,NULL),(45,1,28,'2006-04-07 00:00:00','2006-04-07 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',40.0000,0.0000,3,'2006-04-07 00:00:00',NULL,0,NULL,3,NULL),(46,7,9,'2006-04-05 00:00:00','2006-04-05 00:00:00',1,'Sven Mortensen','123 9th Street','Salt Lake City','UT','99999','USA',100.0000,0.0000,2,'2006-04-05 00:00:00',NULL,0,NULL,3,NULL),(47,6,6,'2006-04-08 00:00:00','2006-04-08 00:00:00',2,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',300.0000,0.0000,3,'2006-04-08 00:00:00',NULL,0,NULL,3,NULL),(48,4,8,'2006-04-05 00:00:00','2006-04-05 00:00:00',2,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',50.0000,0.0000,2,'2006-04-05 00:00:00',NULL,0,NULL,3,NULL),(50,9,25,'2006-04-05 00:00:00','2006-04-05 00:00:00',1,'John Rodman','789 25th Street','Chicago','IL','99999','USA',5.0000,0.0000,1,'2006-04-05 00:00:00',NULL,0,NULL,3,NULL),(51,9,26,'2006-04-05 00:00:00','2006-04-05 00:00:00',3,'Run Liu','789 26th Street','Miami','FL','99999','USA',60.0000,0.0000,3,'2006-04-05 00:00:00',NULL,0,NULL,3,NULL),(55,1,29,'2006-04-05 00:00:00','2006-04-05 00:00:00',2,'Soo Jung Lee','789 29th Street','Denver','CO','99999','USA',200.0000,0.0000,2,'2006-04-05 00:00:00',NULL,0,NULL,3,NULL),(56,2,6,'2006-04-03 00:00:00','2006-04-03 00:00:00',3,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',0.0000,0.0000,2,'2006-04-03 00:00:00',NULL,0,NULL,3,NULL),(57,9,27,'2006-04-22 00:00:00','2006-04-22 00:00:00',2,'Karen Toh','789 27th Street','Las Vegas','NV','99999','USA',200.0000,0.0000,2,'2006-04-22 00:00:00',NULL,0,NULL,0,NULL),(58,3,4,'2006-04-22 00:00:00','2006-04-22 00:00:00',1,'Christina Lee','123 4th Street','New York','NY','99999','USA',5.0000,0.0000,3,'2006-04-22 00:00:00',NULL,0,NULL,3,NULL),(59,4,12,'2006-04-22 00:00:00','2006-04-22 00:00:00',2,'John Edwards','123 12th Street','Las Vegas','NV','99999','USA',5.0000,0.0000,3,'2006-04-22 00:00:00',NULL,0,NULL,0,NULL),(60,6,8,'2006-04-30 00:00:00','2006-04-30 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',50.0000,0.0000,3,'2006-04-30 00:00:00',NULL,0,NULL,3,NULL),(61,9,4,'2006-04-07 00:00:00','2006-04-07 00:00:00',3,'Christina Lee','123 4th Street','New York','NY','99999','USA',4.0000,0.0000,2,'2006-04-07 00:00:00',NULL,0,NULL,0,NULL),(62,3,29,'2006-04-12 00:00:00','2006-04-12 00:00:00',2,'Soo Jung Lee','789 29th Street','Denver','CO','99999','USA',7.0000,0.0000,2,'2006-04-12 00:00:00',NULL,0,NULL,0,NULL),(63,4,3,'2006-04-25 00:00:00','2006-04-25 00:00:00',2,'Thomas Axen','123 3rd Street','Los Angelas','CA','99999','USA',7.0000,0.0000,1,'2006-04-25 00:00:00',NULL,0,NULL,3,NULL),(64,8,6,'2006-05-09 00:00:00','2006-05-09 00:00:00',2,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',12.0000,0.0000,3,'2006-05-09 00:00:00',NULL,0,NULL,0,NULL),(65,9,28,'2006-05-11 00:00:00','2006-05-11 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',10.0000,0.0000,2,'2006-05-11 00:00:00',NULL,0,NULL,0,NULL),(66,3,8,'2006-05-24 00:00:00','2006-05-24 00:00:00',3,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',5.0000,0.0000,2,'2006-05-24 00:00:00',NULL,0,NULL,0,NULL),(67,4,10,'2006-05-24 00:00:00','2006-05-24 00:00:00',2,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',9.0000,0.0000,3,'2006-05-24 00:00:00',NULL,0,NULL,3,NULL),(68,1,7,'2006-05-24 00:00:00',NULL,NULL,'Ming-Yang Xie','123 7th Street','Boise','ID','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0,NULL),(69,1,10,'2006-05-24 00:00:00',NULL,1,'Roland Wacker','123 10th Street','Chicago','IL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0,NULL),(70,1,11,'2006-05-24 00:00:00',NULL,3,'Peter Krschne','123 11th Street','Miami','FL','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0,NULL),(71,1,1,'2006-05-24 00:00:00',NULL,3,'Anna Bedecs','123 1st Street','Seattle','WA','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0,NULL),(72,1,28,'2006-06-07 00:00:00','2006-06-07 00:00:00',3,'Amritansh Raghav','789 28th Street','Memphis','TN','99999','USA',40.0000,0.0000,3,'2006-06-07 00:00:00',NULL,0,NULL,3,NULL),(73,7,9,'2006-06-05 00:00:00','2006-06-05 00:00:00',1,'Sven Mortensen','123 9th Street','Salt Lake City','UT','99999','USA',100.0000,0.0000,2,'2006-06-05 00:00:00',NULL,0,NULL,3,NULL),(74,6,6,'2006-06-08 00:00:00','2006-06-08 00:00:00',2,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',300.0000,0.0000,3,'2006-06-08 00:00:00',NULL,0,NULL,3,NULL),(75,4,8,'2006-06-05 00:00:00','2006-06-05 00:00:00',2,'Elizabeth Andersen','123 8th Street','Portland','OR','99999','USA',50.0000,0.0000,2,'2006-06-05 00:00:00',NULL,0,NULL,3,NULL),(76,9,25,'2006-06-05 00:00:00','2006-06-05 00:00:00',1,'John Rodman','789 25th Street','Chicago','IL','99999','USA',5.0000,0.0000,1,'2006-06-05 00:00:00',NULL,0,NULL,3,NULL),(77,9,26,'2006-06-05 00:00:00','2006-06-05 00:00:00',3,'Run Liu','789 26th Street','Miami','FL','99999','USA',60.0000,0.0000,3,'2006-06-05 00:00:00',NULL,0,NULL,3,NULL),(78,1,29,'2006-06-05 00:00:00','2006-06-05 00:00:00',2,'Soo Jung Lee','789 29th Street','Denver','CO','99999','USA',200.0000,0.0000,2,'2006-06-05 00:00:00',NULL,0,NULL,3,NULL),(79,2,6,'2006-06-23 00:00:00','2006-06-23 00:00:00',3,'Francisco Pérez-Olaeta','123 6th Street','Milwaukee','WI','99999','USA',0.0000,0.0000,2,'2006-06-23 00:00:00',NULL,0,NULL,3,NULL),(80,2,4,'2006-04-25 17:03:55',NULL,NULL,'Christina Lee','123 4th Street','New York','NY','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0,NULL),(81,2,3,'2006-04-25 17:26:53',NULL,NULL,'Thomas Axen','123 3rd Street','Los Angelas','CA','99999','USA',0.0000,0.0000,NULL,NULL,NULL,0,NULL,0,NULL);
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;

DELIMITER ;;
CREATE TRIGGER after_customer_order_insert AFTER INSERT ON customer_order 
FOR EACH ROW
  INSERT INTO audit_central (entity_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'customer_order', NOW());;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;

DELIMITER ;;
CREATE TRIGGER after_customer_order_update AFTER UPDATE ON customer_order 
FOR EACH ROW
 INSERT INTO audit_central (entity_id,action,table_name,date_updated)
                VALUES (NEW.id,'UPDATE','customer_order',NOW()) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE TRIGGER after_customer_order_delete AFTER DELETE ON customer_order FOR EACH ROW
  INSERT INTO audit_central (entity_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','customer_order',NOW()) ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-06 17:43:59
