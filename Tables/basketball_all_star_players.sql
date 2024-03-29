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
-- Table structure for table `all_star_players`
--

DROP TABLE IF EXISTS `all_star_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `all_star_players` (
  `all_star_player_id` int(11) NOT NULL AUTO_INCREMENT,
  `asp_name` varchar(45) NOT NULL,
  `asp_assists` int(11) NOT NULL,
  `asp_steals` int(11) NOT NULL,
  `asp_blocks` int(11) NOT NULL,
  `asp_turnovers` int(11) NOT NULL,
  `asp_points` int(11) NOT NULL,
  `asp_field_goal_rate` decimal(9,2) NOT NULL,
  `asp_3_point_rate` decimal(9,2) DEFAULT NULL,
  `asp_free_throw_rate` decimal(9,2) DEFAULT NULL,
  `player_id` int(11) DEFAULT NULL,
  `all_star_team_id` int(11) NOT NULL COMMENT 'Add game stats\n',
  PRIMARY KEY (`all_star_player_id`),
  KEY `player_id_idx` (`player_id`),
  KEY `all_star_team_id_idx` (`all_star_team_id`),
  CONSTRAINT `all_star_team_id` FOREIGN KEY (`all_star_team_id`) REFERENCES `all_star_teams` (`ast_id`),
  CONSTRAINT `player_id` FOREIGN KEY (`player_id`) REFERENCES `players` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `all_star_players`
--

LOCK TABLES `all_star_players` WRITE;
/*!40000 ALTER TABLE `all_star_players` DISABLE KEYS */;
INSERT INTO `all_star_players` VALUES (1,'LeBron James',4,0,2,1,19,0.53,0.13,0.00,216,1),(2,'James Harden',3,1,0,3,12,0.31,0.31,NULL,166,1),(3,'Kevin Durant',2,1,2,2,31,0.67,0.67,1.00,121,1),(4,'Kyrie Irving',6,1,1,1,13,0.50,0.25,NULL,207,1),(5,'Kawhi Leonard',2,0,1,0,19,0.50,0.46,NULL,253,1),(6,'Damian Lillard',5,2,0,1,18,0.35,0.35,NULL,NULL,1),(7,'Klay Thompson',4,1,0,0,20,0.44,0.50,NULL,NULL,1),(8,'Bradley Beal',3,1,0,0,11,0.36,0.30,NULL,32,1),(9,'Ben Simmons',7,1,0,0,10,1.00,NULL,NULL,NULL,1),(10,'Karl-Anthony Towns',1,1,0,0,11,0.71,0.33,NULL,NULL,1),(11,'LaMarcus Aldridge',1,0,0,0,2,0.50,NULL,NULL,6,1),(12,'Dwyane Wade',4,0,0,1,7,0.50,0.50,1.00,NULL,1),(13,'Anthony Davis',0,0,0,0,5,1.00,1.00,NULL,105,1),(14,'Stephen Curry',7,0,0,2,17,0.26,0.24,1.00,103,2),(15,'Giannis Antetokounmpo',5,1,0,3,38,0.74,0.33,1.00,14,2),(16,'Paul George',4,3,0,0,20,0.50,0.50,NULL,148,2),(17,'Joel Embiid',1,1,1,1,10,0.33,0.00,0.50,124,2),(18,'Kemba Walker',8,1,0,0,4,0.25,0.00,NULL,NULL,2),(19,'Khris Middleton',4,0,0,1,20,0.54,0.60,NULL,289,2),(20,'Blake Griffin',3,0,0,0,10,0.50,0.50,NULL,163,2),(21,'Russell Westbrook',3,1,0,1,17,0.40,0.13,NULL,NULL,2),(22,'Nikola Jokić',0,0,0,1,6,0.75,NULL,NULL,227,2),(23,'Kyle Lowry',3,0,0,1,3,0.20,0.25,NULL,264,2),(24,'D\'Angelo Russell',3,0,0,1,6,0.40,0.40,NULL,NULL,2),(25,'Nikola Vučević',2,1,0,0,4,1.00,NULL,NULL,NULL,2),(26,'Dirk Nowitzki',0,0,0,1,9,1.00,1.00,NULL,NULL,2);
/*!40000 ALTER TABLE `all_star_players` ENABLE KEYS */;
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
