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
-- Table structure for table `order_detail`
--

DROP TABLE IF EXISTS `order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `customer_order_id` int NOT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` decimal(18,4) NOT NULL DEFAULT '0.0000',
  `unit_price` decimal(19,4) DEFAULT '0.0000',
  `discount` double NOT NULL DEFAULT '0',
  `status_id` int DEFAULT NULL,
  `date_allocated` datetime DEFAULT NULL,
  `purchase_order_id` int DEFAULT NULL,
  `inventory_transaction_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_order_id` (`customer_order_id`),
  KEY `product_id` (`product_id`),
  KEY `status_id` (`status_id`),
  KEY `purchase_order_id` (`purchase_order_id`),
  KEY `inventory_transaction_id` (`inventory_transaction_id`),
  CONSTRAINT `fk_order_detail_inventory1` FOREIGN KEY (`inventory_transaction_id`) REFERENCES `inventory_transaction` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_detail_order1` FOREIGN KEY (`customer_order_id`) REFERENCES `customer_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_detail_order_status1` FOREIGN KEY (`status_id`) REFERENCES `order_status` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_detail_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_detail_purchase_order_id1` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_detail`
--

LOCK TABLES `order_detail` WRITE;
/*!40000 ALTER TABLE `order_detail` DISABLE KEYS */;
INSERT INTO `order_detail` VALUES (27,30,34,100.0000,14.0000,0,2,NULL,96,83),(28,30,80,30.0000,3.5000,0,2,NULL,NULL,63),(29,31,7,10.0000,30.0000,0,2,NULL,NULL,64),(30,31,51,10.0000,53.0000,0,2,NULL,NULL,65),(31,31,80,10.0000,3.5000,0,2,NULL,NULL,66),(32,32,1,15.0000,18.0000,0,2,NULL,NULL,67),(33,32,43,20.0000,46.0000,0,2,NULL,NULL,68),(34,33,19,30.0000,9.2000,0,2,NULL,97,81),(35,34,19,20.0000,9.2000,0,2,NULL,NULL,69),(36,35,48,10.0000,12.7500,0,2,NULL,NULL,70),(37,36,41,200.0000,9.6500,0,2,NULL,98,79),(38,37,8,17.0000,40.0000,0,2,NULL,NULL,71),(39,38,43,300.0000,46.0000,0,2,NULL,99,77),(40,39,48,100.0000,12.7500,0,2,NULL,100,75),(41,40,81,200.0000,2.9900,0,2,NULL,101,73),(42,41,43,300.0000,46.0000,0,1,NULL,102,104),(43,42,6,10.0000,25.0000,0,2,NULL,NULL,84),(44,42,4,10.0000,22.0000,0,2,NULL,NULL,85),(45,42,19,10.0000,9.2000,0,2,NULL,103,110),(46,43,80,20.0000,3.5000,0,1,NULL,NULL,86),(47,43,81,50.0000,2.9900,0,1,NULL,NULL,87),(48,44,1,25.0000,18.0000,0,1,NULL,NULL,88),(49,44,43,25.0000,46.0000,0,1,NULL,NULL,89),(50,44,81,25.0000,2.9900,0,1,NULL,NULL,90),(51,45,41,50.0000,9.6500,0,2,NULL,104,116),(52,45,40,50.0000,18.4000,0,2,NULL,NULL,91),(53,46,57,100.0000,19.5000,0,2,NULL,105,101),(54,46,72,50.0000,34.8000,0,2,NULL,106,114),(55,47,34,300.0000,14.0000,0,2,NULL,107,108),(56,48,8,25.0000,40.0000,0,2,NULL,108,106),(57,48,19,25.0000,9.2000,0,2,NULL,109,112),(59,50,21,20.0000,10.0000,0,2,NULL,NULL,92),(60,51,5,25.0000,21.3500,0,2,NULL,NULL,93),(61,51,41,30.0000,9.6500,0,2,NULL,NULL,94),(62,51,40,30.0000,18.4000,0,2,NULL,NULL,95),(66,56,48,10.0000,12.7500,0,2,NULL,111,99),(67,55,34,87.0000,14.0000,0,2,NULL,NULL,117),(68,79,7,30.0000,30.0000,0,2,NULL,NULL,119),(69,79,51,30.0000,53.0000,0,2,NULL,NULL,118),(70,78,17,40.0000,39.0000,0,2,NULL,NULL,120),(71,77,6,90.0000,25.0000,0,2,NULL,NULL,121),(72,76,4,30.0000,22.0000,0,2,NULL,NULL,122),(73,75,48,40.0000,12.7500,0,2,NULL,NULL,123),(74,74,48,40.0000,12.7500,0,2,NULL,NULL,124),(75,73,41,10.0000,9.6500,0,2,NULL,NULL,125),(76,72,43,5.0000,46.0000,0,2,NULL,NULL,126),(77,71,40,40.0000,18.4000,0,2,NULL,NULL,127),(78,70,8,20.0000,40.0000,0,2,NULL,NULL,128),(79,69,80,15.0000,3.5000,0,2,NULL,NULL,129),(80,67,74,20.0000,10.0000,0,2,NULL,NULL,130),(81,60,72,40.0000,34.8000,0,2,NULL,NULL,131),(82,63,3,50.0000,10.0000,0,2,NULL,NULL,132),(83,63,8,3.0000,40.0000,0,2,NULL,NULL,133),(84,58,20,40.0000,81.0000,0,2,NULL,NULL,134),(85,58,52,40.0000,7.0000,0,2,NULL,NULL,135),(86,80,56,10.0000,38.0000,0,1,NULL,NULL,136),(90,81,81,0.0000,2.9900,0,3,NULL,NULL,NULL),(91,81,56,0.0000,38.0000,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `order_detail` ENABLE KEYS */;
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
CREATE TRIGGER after_order_detail_insert AFTER INSERT ON order_detail 
FOR EACH ROW
  INSERT INTO audit_central (entity_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'order_detail', NOW());;
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
CREATE TRIGGER after_order_detail_update AFTER UPDATE ON order_detail 
FOR EACH ROW
 INSERT INTO audit_central (entity_id,action,table_name,date_updated)
                VALUES (NEW.id,'UPDATE','order_detail',NOW()) ;;
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
CREATE TRIGGER after_order_detail_delete AFTER DELETE ON order_detail FOR EACH ROW
  INSERT INTO audit_central (entity_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','order_detail',NOW()) ;;
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

-- Dump completed on 2025-01-06 17:44:19
