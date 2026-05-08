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
-- Table structure for table `product_supplier`
--

DROP TABLE IF EXISTS `product_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_supplier` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `supplier_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `product_id` (`product_id`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `fk_product_supplier_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_product_supplier_supplier1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_supplier`
--

LOCK TABLES `product_supplier` WRITE;
/*!40000 ALTER TABLE `product_supplier` DISABLE KEYS */;
INSERT INTO `product_supplier` VALUES (1,19,1),(2,21,1),(3,52,1),(4,56,1),(5,57,1),(6,82,1),(7,85,1),(8,86,1),(9,97,1),(10,6,2),(11,7,2),(12,14,2),(13,20,2),(14,51,2),(15,74,2),(16,80,2),(17,43,3),(18,81,3),(19,1,4),(20,34,4),(21,43,4),(22,72,5),(23,6,6),(24,17,6),(25,20,6),(26,41,6),(27,74,6),(28,88,6),(29,89,6),(30,90,6),(31,91,6),(32,92,6),(33,93,6),(34,94,6),(35,98,6),(36,99,6),(37,40,7),(38,87,7),(39,95,7),(40,96,7),(41,8,8),(42,65,8),(43,66,8),(44,83,9),(45,3,10),(46,4,10),(47,5,10),(48,48,10),(49,77,10),(50,19,2),(51,21,2);
/*!40000 ALTER TABLE `product_supplier` ENABLE KEYS */;
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
CREATE TRIGGER after_product_supplier_insert AFTER INSERT ON product_supplier 
FOR EACH ROW
  INSERT INTO audit_central (id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'product_supplier', NOW());;
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
CREATE TRIGGER after_product_supplier_update AFTER UPDATE ON product_supplier 
FOR EACH ROW
 INSERT INTO audit_central (id,action,table_name,date_updated)
                VALUES (NEW.id,'UPDATE','product_supplier',NOW()) ;;
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
CREATE TRIGGER after_product_supplier_delete AFTER DELETE ON product_supplier FOR EACH ROW
  INSERT INTO audit_central (id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','product_supplier',NOW()) ;;
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

-- Dump completed on 2025-01-06 17:44:17
