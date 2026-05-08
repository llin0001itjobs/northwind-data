-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: northwind-01-mysql.mysql.database.azure.com    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.44-azure-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `type_state`
--

DROP TABLE IF EXISTS `type_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `type_state` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(2) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_state`
--

LOCK TABLES `type_state` WRITE;
/*!40000 ALTER TABLE `type_state` DISABLE KEYS */;
INSERT INTO `type_state` VALUES (1,'AK','Alaska'),(2,'AL','Alabama'),(3,'AR','Arkansas'),(4,'AZ','Arizona'),(5,'CA','California'),(6,'CO','Colorado'),(7,'CT','Connecticut'),(8,'DE','Delaware'),(9,'FL','Florida'),(10,'GA','Georgia'),(11,'HI','Hawaii'),(12,'IA','Iowa'),(13,'ID','Idaho'),(14,'IL','Illinois'),(15,'IN','Indiana'),(16,'KS','Kansas'),(17,'KY','Kentucky'),(18,'LA','Louisana'),(19,'MA','Massacheusetts'),(20,'MD','Maryland'),(21,'ME','Maine'),(22,'MI','Michigan'),(23,'MN','Minnesota'),(24,'MO','Missouri'),(25,'MS','Mississippi'),(26,'MT','Montana'),(27,'NC','North Carolina'),(28,'ND','North Dakota'),(29,'NE','Nebraska'),(30,'NH','New Hampshire'),(31,'NJ','New Jersey'),(32,'NM','New Mexico'),(33,'NV','Nevada'),(34,'NY','New York'),(35,'OH','Ohio'),(36,'OK','Oklahoma'),(37,'OR','Oregon'),(38,'PA','Pennsylvania'),(39,'RI','Rhode Island'),(40,'SC','South Carolina'),(41,'SD','South Dakota'),(42,'TN','Tennessee'),(43,'TX','Texas'),(44,'UT','Utah'),(45,'VI','Virginia'),(46,'VT','Vermont'),(47,'WA','Washington'),(48,'WI','Wisconsin'),(49,'WV','West Virginia'),(50,'WY','Wyoming');
/*!40000 ALTER TABLE `type_state` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-06 17:43:46
