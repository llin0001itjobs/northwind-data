-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: northwind
-- ------------------------------------------------------
-- Server version	5.7.21-log

--
-- Table structure for table `audit_central`
--



DROP TABLE IF EXISTS `audit_central`;

CREATE TABLE `audit_central` (
  `id` int NOT NULL AUTO_INCREMENT,
  `table_id` int NOT NULL,
  `action` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `column_names` varchar(4096) NOT NULL,
  `date_created` datetime NOT NULL,  
  `date_upated` datetime NOT NULL,  
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8MB4;

--
-- Dumping data for table `user`
--

LOCK TABLES `audit_central` WRITE;

UNLOCK TABLES;

-- Dump completed on 2018-05-07 12:31:45
