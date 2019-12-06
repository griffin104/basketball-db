CREATE DATABASE  IF NOT EXISTS `basketball` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `basketball`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: basketball
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Table structure for table `offseason_transactions`
--

DROP TABLE IF EXISTS `offseason_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `offseason_transactions` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `former_avg_points` decimal(9,2) NOT NULL,
  `former_team_id` int(11) NOT NULL,
  `new_team_id` int(11) NOT NULL,
  `player_name` varchar(45) NOT NULL,
  PRIMARY KEY (`transaction_id`),
  KEY `former_id_idx` (`former_team_id`),
  KEY `new_team_idx` (`new_team_id`),
  KEY `player_name_trans_idx` (`player_name`),
  CONSTRAINT `former_id` FOREIGN KEY (`former_team_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `new_team` FOREIGN KEY (`new_team_id`) REFERENCES `teams` (`team_id`),
  CONSTRAINT `player_name_transactions` FOREIGN KEY (`player_name`) REFERENCES `players` (`player_name`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offseason_transactions`
--

LOCK TABLES `offseason_transactions` WRITE;
/*!40000 ALTER TABLE `offseason_transactions` DISABLE KEYS */;
INSERT INTO `offseason_transactions` VALUES (1,26.00,30,13,'Kevin Durant'),(3,26.60,4,5,'Kawhi Leonard'),(4,23.80,3,13,'Kyrie Irving'),(5,18.70,9,8,'Jimmy Butler'),(6,13.60,3,9,'Al Horford'),(8,20.00,9,9,'Tobias Harris'),(12,11.90,19,30,'Willie Cauley-Stein'),(13,12.50,2,2,'Brook Lopez'),(14,15.60,2,10,'Malcolm Brogdon'),(15,18.30,2,2,'Khris Middleton'),(17,6.30,30,30,'Kevon Looney'),(18,10.30,4,1,'Danny Green'),(19,12.00,1,1,'JaVale McGee'),(21,9.40,17,15,'Al-Farouq Aminu'),(22,5.80,13,12,'Ed Davis'),(23,10.50,24,24,'Thomas Bryant'),(24,13.70,17,3,'Enes Kanter'),(25,15.30,20,10,'Jeremy Lamb'),(27,10.80,14,29,'Taj Gibson'),(29,7.60,5,5,'Patrick Beverley'),(31,13.90,3,29,'Marcus Morris'),(32,13.70,23,23,'Rudy Gay'),(33,8.20,16,19,'Richaun Holmes'),(34,4.90,18,18,'Nerlens Noel'),(38,11.40,1,1,'Kentavious Caldwell-Pope'),(39,10.80,28,19,'Dewayne Dedmon'),(40,6.70,21,21,'Ryan Arcidiacono'),(42,16.40,19,19,'Harrison Barnes'),(43,12.30,24,12,'Jeff Green'),(44,6.50,10,19,'Cory Joseph'),(45,6.80,7,7,'Maxi Kleber'),(47,7.50,7,7,'Dorian Finney-Smith'),(51,11.30,1,29,'Reggie Bullock'),(52,11.10,13,23,'DeMarre Carroll'),(53,7.60,17,14,'Jake Layman'),(54,6.90,14,25,'Tyus Jones'),(57,9.40,5,5,'JaMychal Green'),(58,6.40,9,10,'T.J. McConnell'),(60,7.60,2,2,'George Hill'),(61,9.50,21,2,'Robin Lopez'),(62,12.20,10,2,'Wesley Matthews'),(64,10.30,22,29,'Wayne Ellington'),(65,6.70,9,9,'James Ennis'),(66,11.20,17,17,'Rodney Hood'),(67,12.50,24,19,'Trevor Ariza'),(68,7.00,1,18,'Mike Muscala'),(69,16.30,30,1,'DeMarcus Cousins'),(71,9.40,11,11,'Danuel House'),(72,8.60,16,2,'Kyle Korver'),(73,15.20,16,16,'Kelly Oubre'),(76,10.50,25,10,'Justin Holiday'),(77,5.30,2,22,'Tim Frazier'),(78,10.90,7,9,'Trey Burke'),(79,7.40,28,28,'Vince Carter'),(80,9.20,11,11,'Gerald Green'),(81,7.60,5,5,'Rodney McGruder'),(82,6.90,30,1,'Quinn Cook'),(83,4.90,13,1,'Jared Dudley'),(84,8.60,20,16,'Frank Kaminsky'),(86,3.30,30,14,'Jordan Bell'),(87,8.20,26,26,'Darius Miller'),(88,9.40,18,22,'Markieff Morris'),(91,8.80,19,30,'Alec Burks'),(92,6.00,5,13,'Wilson Chandler'),(93,10.60,26,29,'Elfrid Payton'),(95,6.50,21,21,'Shaquille Harrison'),(97,7.00,29,21,'Luke Kornet'),(98,6.50,27,13,'David Nwaba'),(99,14.50,24,28,'Jabari Parker'),(101,8.90,13,4,'Rondae Hollis-Jefferson'),(102,8.50,6,23,'Trey Lyles'),(105,3.90,2,17,'Pau Gasol'),(106,5.80,9,9,'Furkan Korkmaz'),(108,3.60,18,5,'Patrick Patterson'),(109,10.90,7,7,'J.J. Barea'),(110,9.20,1,1,'Alex Caruso'),(111,3.50,10,9,'Kyle O\'Quinn'),(113,4.80,15,15,'Michael Carter-Williams'),(114,14.80,29,12,'Emmanuel Mudiay'),(116,12.80,25,1,'Dwight Howard'),(118,6.90,26,4,'Stanley Johnson'),(119,2.70,15,27,'Jarell Martin'),(120,2.60,4,4,'Patrick McCaw'),(121,6.30,27,4,'Cameron Payne'),(122,3.70,28,24,'Justin Anderson'),(123,6.00,29,13,'Henry Ellenson'),(126,9.90,25,1,'Avery Bradley'),(127,6.20,16,1,'Troy Daniels'),(128,5.10,19,2,'Frank Mason'),(131,3.70,9,1,'Demetrius Jackson'),(139,14.30,21,10,'Walt Lemon'),(159,3.20,26,30,'Andrew Harrison'),(160,2.50,8,8,'Udonis Haslem'),(161,8.80,29,17,'Mario Hezonja'),(164,2.50,8,11,'Ryan Anderson'),(165,4.20,27,30,'Marquese Chriss');
/*!40000 ALTER TABLE `offseason_transactions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-06 13:18:38
