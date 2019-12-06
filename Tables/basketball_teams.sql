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
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teams` (
  `team_id` int(11) NOT NULL AUTO_INCREMENT,
  `team_rank` int(11) NOT NULL,
  `team_name` varchar(45) NOT NULL,
  `team_games_played` int(11) NOT NULL,
  `team_wins` int(11) NOT NULL,
  `team_losses` int(11) NOT NULL,
  `team_avg_points` decimal(9,1) NOT NULL,
  `team_field_goal_rate` decimal(9,1) NOT NULL,
  `team_3_point_rate` decimal(9,1) NOT NULL,
  `team_free_throw_rate` decimal(9,1) NOT NULL,
  `team_avg_rebounds` decimal(9,1) NOT NULL,
  `team_avg_assists` decimal(9,1) NOT NULL,
  `team_avg_turnovers` decimal(9,1) NOT NULL,
  `team_avg_steals` decimal(9,1) NOT NULL,
  `team_avg_blocks` decimal(9,1) NOT NULL,
  `team_venue_id` int(11) NOT NULL,
  PRIMARY KEY (`team_id`),
  KEY `fk_teams_venues1_idx` (`team_venue_id`),
  CONSTRAINT `fk_teams_venues1` FOREIGN KEY (`team_venue_id`) REFERENCES `venues` (`venue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,1,'Los Angeles Lakers',22,19,3,112.3,48.3,36.1,73.4,45.4,26.5,14.9,8.7,7.4,22),(2,1,'Milwaukee Bucks',22,19,3,121.1,48.4,35.3,71.9,51.8,25.6,14.8,7.5,6.2,11),(3,3,'Boston Celtics',20,15,5,110.8,44.1,34.8,80.1,46.5,23.6,13.1,8.9,5.9,26),(4,3,'Toronto Raptors',20,15,5,113.1,45.9,39.3,80.2,46.2,25.8,15.2,7.9,5.1,18),(5,5,'LA Clippers',22,16,6,115.5,46.0,36.0,77.5,49.0,23.5,16.2,7.6,5.5,21),(6,6,'Denver Nuggets',18,13,5,106.1,44.5,34.5,74.5,46.9,25.9,13.9,8.0,5.0,16),(7,7,'Dallas Mavericks',21,15,6,118.0,46.2,36.1,77.7,47.8,24.3,12.9,6.6,4.6,2),(8,7,'Miami Heat',21,15,6,111.0,47.4,38.8,75.9,44.9,25.0,18.2,8.6,4.7,1),(9,7,'Philadelphia 76ers',21,15,6,108.6,46.6,35.7,74.8,46.3,26.1,16.5,8.9,5.7,30),(10,10,'Indiana Pacers',21,14,7,109.9,47.4,36.7,81.8,44.7,24.8,14.0,6.8,5.0,5),(11,11,'Houston Rockets',20,13,7,120.9,44.7,34.0,78.9,48.0,21.7,15.4,8.6,4.8,27),(12,12,'Utah Jazz',22,12,10,105.7,44.9,37.7,76.7,45.3,21.0,16.3,6.0,4.4,29),(13,13,'Brooklyn Nets',21,11,10,113.0,45.2,35.2,74.2,47.1,23.9,16.0,6.9,5.2,6),(14,14,'Minnesota Timberwolves',20,10,10,113.7,43.7,33.0,76.0,48.3,23.7,15.6,8.2,6.6,25),(15,15,'Orlando Magic',21,10,11,103.5,43.5,33.0,77.9,45.8,22.5,13.8,8.1,6.6,3),(16,16,'Phoenix Suns',20,9,11,114.4,46.2,36.4,80.4,41.6,28.1,14.1,7.8,3.9,24),(17,17,'Portland Trail Blazers',22,9,13,113.5,45.5,36.9,81.4,46.6,20.3,13.7,5.9,6.2,15),(18,18,'Oklahoma City Thunder',20,8,12,107.1,46.2,35.4,78.8,42.4,22.1,14.6,7.3,4.7,9),(19,18,'Sacramento Kings',20,8,12,104.9,44.8,35.1,77.7,41.9,22.9,15.8,7.7,4.9,12),(20,20,'Charlotte Hornets',23,9,14,105.4,44.7,36.5,73.2,41.9,24.2,15.7,6.8,4.3,20),(21,21,'Chicago Bulls',22,8,14,106.4,42.6,34.8,74.9,43.8,22.8,15.7,9.5,4.1,28),(22,21,'Detroit Pistons',22,8,14,108.8,47.3,39.5,73.8,42.7,25.5,16.3,6.6,5.2,13),(23,21,'San Antonio Spurs',22,8,14,112.0,46.6,35.3,78.2,45.8,24.5,13.6,6.4,5.7,4),(24,24,'Washington Wizards',19,6,13,118.9,47.8,37.1,80.6,41.8,28.4,14.6,7.4,3.8,7),(25,25,'Memphis Grizzlies',21,6,15,108.5,44.9,34.6,77.6,45.5,26.5,16.0,7.7,5.3,10),(26,25,'New Orleans Pelicans',21,6,15,113.7,45.1,37.7,73.5,45.0,24.8,15.8,7.9,4.9,19),(27,27,'Cleveland Cavaliers',20,5,15,104.2,43.6,34.2,77.8,44.0,20.4,15.1,7.4,3.2,17),(28,28,'Atlanta Hawks',22,5,17,108.0,45.3,31.2,74.6,41.7,23.3,17.7,8.8,4.9,23),(29,29,'New York Knicks',21,4,17,100.9,42.2,36.3,67.4,44.7,19.6,15.1,7.8,4.6,14),(30,30,'Golden State Warriors',23,4,19,104.9,43.0,32.5,83.1,43.3,23.8,14.7,7.9,4.6,8);
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-06 13:18:37
