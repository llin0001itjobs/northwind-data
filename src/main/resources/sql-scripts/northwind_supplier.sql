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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `company_id` int DEFAULT '1',
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
  `address2` varchar(256) DEFAULT NULL,
  `web_site_url` varchar(1024) DEFAULT NULL,
  `web_site_title` varchar(256) DEFAULT NULL,
  `portrait_path` varchar(1024) DEFAULT NULL,
  `portrait_title` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `company_id` (`company_id`),
  CONSTRAINT `fk_supplier_company1` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,1,'Andersen','Elizabeth A.','eae0001@gmail.com','Sales Manager','703-555-0123',NULL,NULL,NULL,NULL,'Alexandria','VA','22305',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,6,'Weiler','Cornelia','corn_weil02@outlook.com','Sales Manager','202-555-0456',NULL,NULL,NULL,NULL,'Washington','D.C.','20001',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,10,'Kelley','Madeleine','mad_kelley416@outlook.com','Sales Representative','212-555-2223',NULL,NULL,NULL,NULL,'Manhattan','NY','10277',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(4,9,'Sato','Naoki','sato-naoki-13@yahoo.com','Marketing Manager','404-555-0789',NULL,NULL,NULL,NULL,'Atlanta','GA','30307',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(5,6,'Hernandez-Echevarria','Amaya','mgmt@outlook.com','Sales Manager','202-555-6117',NULL,NULL,NULL,NULL,'Washington','D.C.','20001',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(6,9,'Hayakawa','Satomi','sat0-16417@yahoo.com','Marketing Assistant','404-555-9001',NULL,NULL,NULL,NULL,'Atlanta','GA','30307',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(7,10,'Glasson','Stuart','stu-glass-007@outlook.com','Marketing Manager','212-555-3808',NULL,NULL,NULL,NULL,'Manhattan','NY','10277',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(8,6,'Dunton','Bryn Paul','sales_rep_0012@outlook.com','Sales Representative','202-555-4145',NULL,NULL,NULL,NULL,'Washington','D.C.','20002',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(9,9,'Sandberg','Mikael','mgmt01@yahoo.com','Sales Manager','404-555-8179',NULL,NULL,NULL,NULL,'Atlanta','GA','30307',NULL,NULL,NULL,NULL,NULL,NULL,NULL),(10,9,'Sousa','Luis','mgmt05@yahoo.com','Sales Manager','404-555-9110',NULL,NULL,NULL,NULL,'Atlanta','GA','30307',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
DELIMITER ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE TRIGGER after_supplier_insert AFTER INSERT ON supplier 
FOR EACH ROW
  INSERT INTO audit_central (entity_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'supplier', NOW()) ;;
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
CREATE TRIGGER after_supplier_update AFTER UPDATE ON supplier 
FOR EACH ROW
 INSERT INTO audit_central (entity_id,action,table_name,date_updated)
                VALUES (NEW.id,'UPDATE','supplier',NOW()) ;;
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
CREATE TRIGGER after_supplier_delete AFTER DELETE ON supplier FOR EACH ROW
  INSERT INTO audit_central (entity_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','supplier',NOW()) ;;
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

-- Dump completed on 2025-01-06 17:43:48
