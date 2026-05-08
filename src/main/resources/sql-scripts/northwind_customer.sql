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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `id` int NOT NULL AUTO_INCREMENT,
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
  `company_id` int DEFAULT '1',
  `address2` varchar(256) DEFAULT NULL,
  `web_site_title` varchar(256) DEFAULT NULL,
  `web_site_url` varchar(1024) DEFAULT NULL,
  `portrait_path` varchar(1024) DEFAULT NULL,
  `portrait_title` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `fk_customer_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Bedecs','Anna',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 1st Street','Seattle','WA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(2,'Gratacos Solsona','Antonio',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 2nd Street','Boston','MA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(3,'Axen','Thomas',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','123 3rd Street','Los Angelas','CA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(4,'Lee','Christina',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 4th Street','New York','NY','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(5,'O’Donnell','Martin',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 5th Street','Minneapolis','MN','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(6,'Pérez-Olaeta','Francisco',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 6th Street','Milwaukee','WI','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(7,'Xie','Ming-Yang',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','123 7th Street','Boise','ID','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(8,'Andersen','Elizabeth',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','123 8th Street','Portland','OR','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(9,'Mortensen','Sven',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 9th Street','Salt Lake City','UT','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(10,'Wacker','Roland',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 10th Street','Chicago','IL','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(11,'Krschne','Peter',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 11th Street','Miami','FL','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(12,'Edwards','John',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','123 12th Street','Las Vegas','NV','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(13,'Ludick','Andre',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 13th Street','Memphis','TN','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(14,'Grilo','Carlos',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 14th Street','Denver','CO','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(15,'Kupkova','Helena',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','456 15th Street','Honolulu','HI','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(16,'Goldschmidt','Daniel',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 16th Street','San Francisco','CA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(17,'Bagel','Jean Philippe',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','456 17th Street','Seattle','WA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(18,'Autier Miconi','Catherine',NULL,'Purchasing Representative','(123)555-0100',NULL,NULL,'(123)555-0101','456 18th Street','Boston','MA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(19,'Eggerer','Alexander',NULL,'Accounting Assistant','(123)555-0100',NULL,NULL,'(123)555-0101','789 19th Street','Los Angelas','CA','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(20,'Li','George',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 20th Street','New York','NY','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(21,'Tham','Bernard',NULL,'Accounting Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 21th Street','Minneapolis','MN','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(22,'Ramos','Luciana',NULL,'Purchasing Assistant','(123)555-0100',NULL,NULL,'(123)555-0101','789 22th Street','Milwaukee','WI','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(23,'Entin','Michael',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 23th Street','Portland','OR','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(24,'Hasselberg','Jonas',NULL,'Owner','(123)555-0100',NULL,NULL,'(123)555-0101','789 24th Street','Salt Lake City','UT','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(25,'Rodman','John',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 25th Street','Chicago','IL','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(26,'Liu','Run',NULL,'Accounting Assistant','(123)555-0100',NULL,NULL,'(123)555-0101','789 26th Street','Miami','FL','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(27,'Toh','Karen',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 27th Street','Las Vegas','NV','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(28,'Raghav','Amritansh',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 28th Street','Memphis','TN','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL),(29,'Lee','Soo Jung',NULL,'Purchasing Manager','(123)555-0100',NULL,NULL,'(123)555-0101','789 29th Street','Denver','CO','99999','USA',NULL,1,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
CREATE TRIGGER after_customer_insert AFTER INSERT ON customer 
FOR EACH ROW
  INSERT INTO audit_central (entity_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'customer', NOW()) ;;
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
CREATE TRIGGER after_customer_update AFTER UPDATE ON customer 
FOR EACH ROW
 INSERT INTO audit_central (entity_id,action,table_name,date_updated)
                VALUES (NEW.id,'UPDATE','customer',NOW()) ;;
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
CREATE TRIGGER after_customer_delete AFTER DELETE ON customer FOR EACH ROW
  INSERT INTO audit_central (entity_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','customer',NOW()) ;;
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

-- Dump completed on 2025-01-06 17:43:41
