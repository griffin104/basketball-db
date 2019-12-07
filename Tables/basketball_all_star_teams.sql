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
-- Table structure for table `all_star_teams`
--

DROP TABLE IF EXISTS `all_star_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_star_teams` (
  `ast_id` int(11) NOT NULL AUTO_INCREMENT,
  `ast_name` varchar(45) NOT NULL,
  `ast_year` int(11) NOT NULL,
  `ast_q1_score` int(11) NOT NULL,
  `ast_q2_score` int(11) NOT NULL,
  `ast_q3_score` int(11) NOT NULL,
  `ast_q4_score` int(11) NOT NULL,
  `ast_total_score` int(11) NOT NULL,
  `ast_venue_id` int(11) NOT NULL,
  PRIMARY KEY (`ast_id`),
  KEY `all-star-venue_idx` (`ast_venue_id`),
  CONSTRAINT `all-star-venue` FOREIGN KEY (`ast_venue_id`) REFERENCES `venues` (`venue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_star_teams`
--

LOCK TABLES `all_star_teams` WRITE;
/*!40000 ALTER TABLE `all_star_teams` DISABLE KEYS */;
INSERT INTO `all_star_teams` VALUES (1,'LeBron',2019,37,45,50,46,178,20),(2,'Giannis',2019,53,42,36,33,164,20);
/*!40000 ALTER TABLE `all_star_teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-07 17:28:00
