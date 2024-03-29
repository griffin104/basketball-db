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
-- Table structure for table `championship_players`
--

DROP TABLE IF EXISTS `championship_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `championship_players` (
  `champ_player_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `championship_team_id` int(11) NOT NULL,
  `champ_player_assists` int(11) NOT NULL,
  `champ_player_steals` int(11) NOT NULL,
  `champ_player_blocks` int(11) NOT NULL,
  `champ_player_turnovers` int(11) NOT NULL,
  `champ_player_points` int(11) NOT NULL,
  `champ_player_field_goal_rate` decimal(9,1) DEFAULT NULL,
  `champ_player_3_point_rate` decimal(9,1) DEFAULT NULL,
  `champ_player_free_throw_rate` decimal(9,1) DEFAULT NULL,
  PRIMARY KEY (`champ_player_id`),
  KEY `champ-player-game_idx` (`championship_team_id`),
  KEY `champ-player-id_idx` (`player_id`),
  CONSTRAINT `champ-player-game` FOREIGN KEY (`championship_team_id`) REFERENCES `championship_teams` (`championship_team_id`),
  CONSTRAINT `champ-player-id` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `championship_players`
--

LOCK TABLES `championship_players` WRITE;
/*!40000 ALTER TABLE `championship_players` DISABLE KEYS */;
INSERT INTO `championship_players` VALUES (1,253,1,25,12,7,18,171,0.4,0.4,0.9),(2,NULL,1,22,3,4,9,119,0.5,0.2,0.8),(3,264,1,43,10,3,15,97,0.4,0.4,0.8),(4,NULL,1,13,7,0,6,84,0.4,0.4,0.9),(5,145,1,16,3,2,7,72,0.4,0.3,0.9),(6,201,1,6,5,10,8,68,0.6,0.3,0.8),(7,158,1,7,7,3,8,44,0.4,0.4,NULL),(8,NULL,1,4,2,0,2,11,0.3,0.2,1.0),(9,277,1,2,0,0,0,3,0.5,1.0,NULL),(10,258,1,0,0,0,0,0,NULL,NULL,NULL),(11,286,1,0,0,0,0,0,NULL,NULL,NULL),(12,292,1,0,0,0,0,0,NULL,NULL,NULL),(13,103,2,36,9,1,17,183,0.4,0.3,0.9),(14,NULL,2,12,4,0,6,130,0.5,0.6,0.9),(15,159,2,56,10,6,30,75,0.4,0.3,0.9),(16,202,2,24,6,9,9,55,0.4,0.3,0.3),(17,95,2,14,4,6,13,50,0.4,0.2,0.6),(18,93,2,5,1,1,2,29,0.4,0.3,1.0),(19,260,2,6,2,1,5,29,0.6,NULL,0.3),(20,259,2,9,4,1,5,28,0.4,0.0,1.0),(21,220,2,1,0,0,0,14,0.3,0.4,0.8),(22,284,2,2,0,0,3,13,0.3,0.3,0.0),(23,NULL,2,3,1,1,2,12,0.8,NULL,NULL),(24,121,2,0,0,1,1,11,0.6,1.0,1.0),(25,36,2,1,0,2,0,6,0.8,NULL,NULL),(26,NULL,2,0,0,0,0,0,0.0,0.0,NULL),(27,NULL,2,0,0,0,0,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `championship_players` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-07 17:28:01
