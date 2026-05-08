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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `id` int NOT NULL AUTO_INCREMENT,
  `privilege_id` int DEFAULT '1',
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

/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO' */ ;
DELIMITER ;;
CREATE TRIGGER after_employee_insert AFTER INSERT ON employee 
FOR EACH ROW
  INSERT INTO audit_central (entity_id,action,table_name,date_created)
                 VALUES (NEW.id,'INSERT', 'employee', NOW());;
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
CREATE TRIGGER after_employee_update AFTER UPDATE ON employee 
FOR EACH ROW
 INSERT INTO audit_central (entity_id,action,table_name,date_updated)
                VALUES (NEW.id,'UPDATE','employee',NOW()) ;;
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
CREATE TRIGGER after_employee_delete AFTER DELETE ON employee FOR EACH ROW
  INSERT INTO audit_central (entity_id,action,table_name,date_created)
                 VALUES (OLD.id,'DELETE','employee',NOW()) ;;
DELIMITER ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-06 21:31:13
