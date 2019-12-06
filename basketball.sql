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

--
-- Table structure for table `championship_teams`
--

DROP TABLE IF EXISTS `championship_teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `championship_teams` (
  `championship_team_id` int(11) NOT NULL AUTO_INCREMENT,
  `championship_year` int(11) NOT NULL,
  `championship_games_won` int(11) NOT NULL,
  `championship_games_lost` int(11) NOT NULL,
  `championship_final_score` int(11) NOT NULL,
  `championship_average_points` decimal(9,1) NOT NULL,
  `team_id` int(11) NOT NULL,
  PRIMARY KEY (`championship_team_id`),
  KEY `champ-team-id_idx` (`team_id`),
  CONSTRAINT `champ-team-id` FOREIGN KEY (`team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `championship_teams`
--

LOCK TABLES `championship_teams` WRITE;
/*!40000 ALTER TABLE `championship_teams` DISABLE KEYS */;
INSERT INTO `championship_teams` VALUES (1,2019,2,4,110,105.8,30),(2,2019,4,2,114,111.5,4);
/*!40000 ALTER TABLE `championship_teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `new_team_increase_in_points`
--

DROP TABLE IF EXISTS `new_team_increase_in_points`;
/*!50001 DROP VIEW IF EXISTS `new_team_increase_in_points`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `new_team_increase_in_points` AS SELECT 
 1 AS `Name`,
 1 AS `Age`,
 1 AS `Current Average Points`,
 1 AS `Former Average Points`,
 1 AS `Increase in Points Scored`*/;
SET character_set_client = @saved_cs_client;

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

--
-- Table structure for table `players`
--

DROP TABLE IF EXISTS `players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `players` (
  `player_id` int(11) NOT NULL AUTO_INCREMENT,
  `player_rank` int(11) NOT NULL,
  `player_name` varchar(45) NOT NULL,
  `player_age` int(11) NOT NULL,
  `player_position` varchar(45) NOT NULL,
  `player_games` int(11) NOT NULL,
  `player_avg_minutes_played` decimal(9,1) NOT NULL,
  `player_field_goal_rate` decimal(9,1) NOT NULL,
  `player_3_point_rate` decimal(9,1) NOT NULL,
  `player_free_throw_rate` decimal(9,1) NOT NULL,
  `player_avg_assists` decimal(9,1) NOT NULL,
  `player_avg_steals` decimal(9,1) NOT NULL,
  `player_avg_blocks` decimal(9,1) NOT NULL,
  `player_avg_turnovers` decimal(9,1) NOT NULL,
  `player_avg_points` decimal(9,1) NOT NULL,
  `current_team_id` int(11) NOT NULL,
  PRIMARY KEY (`player_id`),
  KEY `current_team_idx` (`current_team_id`),
  KEY `player_name_idx` (`player_name`),
  CONSTRAINT `current_team` FOREIGN KEY (`current_team_id`) REFERENCES `teams` (`team_id`)
) ENGINE=InnoDB AUTO_INCREMENT=344 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `players`
--

LOCK TABLES `players` WRITE;
/*!40000 ALTER TABLE `players` DISABLE KEYS */;
INSERT INTO `players` VALUES (1,1,'Alex Abrines',24,'SG',75,15.1,0.4,0.4,0.8,0.4,0.5,0.1,0.3,4.7,18),(2,2,'Quincy Acy',27,'PF',70,19.4,0.4,0.3,0.8,0.8,0.5,0.4,0.9,5.9,13),(3,3,'Steven Adams',24,'C',76,32.7,0.6,0.0,0.6,1.2,1.2,1.0,1.7,13.9,18),(4,4,'Bam Adebayo',20,'C',69,19.8,0.5,0.0,0.7,1.5,0.5,0.6,1.0,6.9,8),(5,5,'Arron Afflalo',32,'SG',53,12.9,0.4,0.4,0.8,0.6,0.1,0.2,0.4,3.4,15),(6,7,'LaMarcus Aldridge',32,'C',75,33.5,0.5,0.3,0.8,2.0,0.6,1.2,1.5,23.1,23),(7,8,'Jarrett Allen',19,'C',72,20.0,0.6,0.3,0.8,0.7,0.4,1.2,1.1,8.2,13),(8,9,'Kadeem Allen',25,'PG',18,5.9,0.3,0.0,0.8,0.7,0.2,0.1,0.5,1.1,3),(9,10,'Tony Allen',36,'SF',22,12.4,0.5,0.3,0.5,0.4,0.5,0.1,0.9,4.7,26),(10,11,'Al-Farouq Aminu',27,'PF',69,30.0,0.4,0.4,0.7,1.2,1.1,0.6,1.1,9.3,17),(11,12,'Justin Anderson',24,'SF',38,13.7,0.4,0.3,0.7,0.7,0.4,0.2,0.4,6.2,9),(12,13,'Kyle Anderson',24,'SF',74,26.7,0.5,0.3,0.7,2.7,1.6,0.8,1.3,7.9,23),(13,14,'Ryan Anderson',29,'PF',66,26.1,0.4,0.4,0.8,0.9,0.4,0.3,0.6,9.3,11),(14,16,'Giannis Antetokounmpo',23,'PF',75,36.7,0.5,0.3,0.8,4.8,1.5,1.4,3.0,26.9,2),(15,17,'Carmelo Anthony',33,'PF',78,32.1,0.4,0.4,0.8,1.3,0.6,0.6,1.3,16.2,18),(16,18,'OG Anunoby',20,'SF',74,20.0,0.5,0.4,0.6,0.7,0.7,0.2,0.6,5.9,4),(17,19,'Ryan Arcidiacono',23,'PG',24,12.7,0.4,0.3,0.8,1.5,0.5,0.0,0.5,2.0,21),(18,20,'Trevor Ariza',32,'SF',67,33.9,0.4,0.4,0.9,1.6,1.5,0.2,0.8,11.7,11),(19,21,'Darrell Arthur',29,'PF',19,7.4,0.5,0.3,0.7,0.5,0.4,0.2,0.8,2.8,6),(20,22,'Jamel Artis',25,'SG',15,18.6,0.4,0.3,0.6,1.2,0.1,0.2,0.5,5.1,15),(21,26,'Dwayne Bacon',22,'SG',53,13.5,0.4,0.3,0.8,0.7,0.3,0.0,0.4,3.3,20),(22,27,'Ron Baker',24,'SG',29,13.3,0.3,0.3,0.8,1.6,0.9,0.2,0.6,2.4,29),(23,28,'Wade Baldwin',21,'PG',7,11.4,0.7,0.8,0.6,0.7,0.3,0.1,0.6,5.4,17),(24,29,'Lonzo Ball',20,'PG',52,34.2,0.4,0.3,0.5,7.2,1.7,0.8,2.6,10.2,1),(25,30,'J.J. Barea',33,'PG',69,23.2,0.4,0.4,0.8,6.3,0.5,0.0,2.1,11.6,7),(26,31,'Harrison Barnes',25,'PF',77,34.2,0.4,0.4,0.8,2.0,0.6,0.2,1.5,18.9,7),(27,32,'Will Barton',27,'SG',81,33.1,0.5,0.4,0.8,4.1,1.0,0.6,1.8,15.7,6),(28,33,'Nicolas Batum',29,'SG',64,31.0,0.4,0.3,0.8,5.5,1.0,0.4,2.0,11.6,20),(29,34,'Jerryd Bayless',29,'SG',39,23.7,0.4,0.4,0.8,1.4,0.6,0.2,1.2,7.9,9),(30,35,'Aron Baynes',31,'C',81,18.3,0.5,0.1,0.8,1.1,0.3,0.6,1.0,6.0,3),(31,36,'Kent Bazemore',28,'SG',65,27.5,0.4,0.4,0.8,3.5,1.5,0.7,2.4,12.9,28),(32,37,'Bradley Beal',24,'SG',82,36.3,0.5,0.4,0.8,4.5,1.2,0.4,2.6,22.6,24),(33,38,'Malik Beasley',21,'SG',62,9.4,0.4,0.3,0.7,0.5,0.2,0.1,0.4,3.2,6),(34,39,'Michael Beasley',29,'PF',74,22.3,0.5,0.4,0.8,1.7,0.5,0.6,1.9,13.2,29),(35,40,'Marco Belinelli',31,'SG',28,26.3,0.5,0.4,0.9,1.6,0.7,0.3,1.4,13.6,9),(36,41,'Jordan Bell',23,'C',57,14.2,0.6,0.0,0.7,1.8,0.6,1.0,0.9,4.6,30),(37,44,'DÄvis BertÄns',25,'PF',77,14.1,0.4,0.4,0.8,1.0,0.3,0.4,0.5,5.9,23),(38,45,'Patrick Beverley',29,'SG',11,30.4,0.4,0.4,0.8,2.9,1.7,0.5,2.3,12.2,5),(39,47,'Jabari Bird',23,'SG',13,8.8,0.6,0.4,0.5,0.6,0.2,0.1,0.6,3.0,3),(40,48,'Bismack Biyombo',25,'C',82,18.2,0.5,0.0,0.7,0.8,0.3,1.2,1.0,5.7,15),(41,49,'Nemanja Bjelica',29,'PF',67,20.5,0.5,0.4,0.8,1.3,0.7,0.2,0.8,6.8,14),(42,50,'Tarik Black',26,'C',51,10.5,0.6,0.1,0.5,0.3,0.4,0.6,0.7,3.5,11),(43,51,'Antonio Blakeney',21,'SG',19,16.5,0.4,0.3,0.8,1.1,0.4,0.1,0.6,7.9,21),(44,52,'Eric Bledsoe',28,'PG',71,31.5,0.5,0.3,0.8,5.1,2.0,0.6,2.9,17.8,2),(45,53,'Vander Blue',25,'SG',5,9.0,0.2,0.0,0.5,0.6,0.2,0.0,0.6,0.6,1),(46,54,'Bogdan BogdanoviÄ',25,'SG',78,27.9,0.4,0.4,0.8,3.3,0.9,0.2,1.6,11.8,19),(47,55,'Bojan BogdanoviÄ',28,'SF',80,30.8,0.5,0.4,0.9,1.5,0.7,0.1,1.3,14.3,10),(48,57,'Joel Bolomboy',24,'PF',6,6.3,0.5,0.0,0.5,0.0,0.3,0.0,0.3,1.5,2),(49,58,'Devin Booker',21,'SG',54,34.5,0.4,0.4,0.9,4.7,0.9,0.3,3.6,24.9,16),(50,59,'Trevor Booker',30,'PF',17,15.8,0.5,0.2,0.9,1.0,0.2,0.3,0.5,5.4,10),(51,61,'Avery Bradley',27,'SG',6,27.5,0.5,0.1,1.0,1.8,0.8,0.2,1.3,9.2,5),(52,62,'Tony Bradley',20,'C',9,3.2,0.3,0.0,1.0,0.1,0.0,0.0,0.0,0.9,12),(53,63,'Corey Brewer',31,'SG',18,28.6,0.4,0.3,0.8,1.3,2.1,0.3,0.6,10.1,18),(54,64,'Malcolm Brogdon',25,'PG',48,29.9,0.5,0.4,0.9,3.2,0.9,0.3,1.4,13.0,2),(55,65,'Aaron Brooks',33,'PG',32,5.9,0.4,0.4,0.7,0.6,0.2,0.0,0.3,2.3,14),(56,66,'Dillon Brooks',22,'SF',82,28.7,0.4,0.4,0.7,1.6,0.9,0.2,1.5,11.0,25),(57,67,'MarShon Brooks',29,'SG',7,27.6,0.5,0.6,0.9,3.6,1.6,0.4,2.3,20.1,25),(58,69,'Bobby Brown',33,'PG',20,5.8,0.3,0.3,0.5,0.6,0.2,0.0,0.5,2.5,11),(59,70,'Jaylen Brown',21,'SG',70,30.7,0.5,0.4,0.6,1.6,1.0,0.4,1.8,14.5,3),(60,71,'Lorenzo Brown',27,'PG',14,9.9,0.4,0.2,1.0,0.9,0.4,0.0,0.2,2.3,4),(61,73,'Sterling Brown',22,'SG',54,14.4,0.4,0.4,0.9,0.5,0.6,0.2,0.5,4.0,2),(62,75,'Thomas Bryant',20,'C',15,4.8,0.4,0.1,0.6,0.4,0.1,0.1,0.1,1.5,1),(63,76,'Reggie Bullock',26,'SF',62,27.9,0.5,0.4,0.8,1.5,0.8,0.2,0.8,11.3,22),(64,77,'Trey Burke',25,'PG',36,21.8,0.5,0.4,0.6,4.7,0.7,0.1,1.2,12.8,29),(65,78,'Alec Burks',26,'SG',64,16.5,0.4,0.3,0.9,1.0,0.6,0.1,0.9,7.7,12),(66,79,'Jimmy Butler',28,'SG',59,36.7,0.5,0.4,0.9,4.9,2.0,0.4,1.8,22.2,14),(67,80,'Dwight Buycks',28,'PG',29,14.7,0.4,0.3,0.9,2.0,0.7,0.1,1.3,7.4,22),(68,81,'Bruno Caboclo',22,'SF',10,10.0,0.3,0.2,0.8,0.3,0.2,0.4,0.4,2.6,19),(69,82,'JosÃ© CalderÃ³n',36,'PG',57,16.0,0.5,0.5,0.8,2.1,0.5,0.0,0.7,4.5,27),(70,83,'Kentavious Caldwell-Pope',24,'SG',74,33.2,0.4,0.4,0.8,2.2,1.4,0.2,1.3,13.4,1),(71,84,'Isaiah Canaan',26,'PG',19,22.0,0.4,0.3,0.9,4.0,0.8,0.1,1.5,9.1,16),(72,85,'Clint Capela',23,'C',74,27.5,0.7,0.0,0.6,0.9,0.8,1.9,1.4,13.9,11),(73,86,'DeMarre Carroll',31,'PF',73,29.9,0.4,0.4,0.8,2.0,0.8,0.4,1.4,13.5,13),(74,87,'Vince Carter',41,'SF',58,17.7,0.4,0.3,0.8,1.2,0.7,0.4,0.6,5.4,19),(75,88,'Michael Carter-Williams',26,'PG',52,16.1,0.3,0.2,0.8,2.2,0.8,0.4,1.0,4.6,20),(76,89,'Alex Caruso',23,'PG',37,15.2,0.4,0.3,0.7,2.0,0.6,0.3,1.1,3.6,1),(77,90,'Omri Casspi',29,'SF',53,14.0,0.6,0.5,0.7,1.0,0.3,0.4,0.7,5.7,30),(78,91,'Willie Cauley-Stein',24,'C',73,28.0,0.5,0.3,0.6,2.4,1.1,0.9,1.5,12.8,19),(79,92,'Tyler Cavanaugh',23,'PF',39,13.3,0.4,0.4,0.8,0.7,0.2,0.1,0.4,4.7,28),(80,93,'Mario Chalmers',31,'PG',66,21.5,0.4,0.3,0.9,3.0,1.2,0.2,1.8,7.7,25),(81,95,'Wilson Chandler',30,'SF',74,31.7,0.4,0.4,0.8,2.1,0.6,0.5,1.2,10.0,6),(82,96,'Marquese Chriss',20,'PF',72,21.2,0.4,0.3,0.6,1.2,0.7,1.0,1.5,7.7,16),(83,97,'Ian Clark',26,'SG',74,19.7,0.4,0.3,0.8,1.5,0.4,0.1,0.8,7.4,26),(84,98,'Jordan Clarkson',25,'SG',28,22.6,0.5,0.4,0.8,1.7,0.7,0.1,1.1,12.6,27),(85,99,'Gian Clavell',24,'SG',7,9.1,0.3,0.4,1.0,0.4,0.3,0.0,0.3,2.9,7),(86,100,'Antonius Cleveland',23,'SG',4,10.5,0.6,1.0,1.0,0.0,0.3,0.3,1.3,3.3,28),(87,101,'John Collins',20,'PF',74,24.1,0.6,0.3,0.7,1.3,0.6,1.1,1.4,10.5,28),(88,102,'Zach Collins',20,'C',66,15.8,0.4,0.3,0.6,0.8,0.3,0.5,0.9,4.4,17),(89,103,'Kyle Collinsworth',26,'SF',32,15.0,0.4,0.2,0.5,1.8,0.5,0.3,0.8,3.2,7),(90,104,'Darren Collison',30,'PG',69,29.2,0.5,0.5,0.9,5.3,1.3,0.2,1.2,12.4,10),(91,106,'Mike Conley',30,'PG',12,31.1,0.4,0.3,0.8,4.1,1.0,0.3,1.5,17.1,25),(92,107,'Pat Connaughton',25,'SG',82,18.1,0.4,0.4,0.8,1.1,0.3,0.3,0.5,5.4,17),(93,108,'Quinn Cook',24,'PG',33,22.4,0.5,0.4,0.9,2.7,0.4,0.0,1.0,9.5,30),(94,109,'Charles Cooke',23,'SG',13,2.9,0.1,0.1,0.5,0.1,0.1,0.0,0.1,0.5,26),(95,112,'DeMarcus Cousins',27,'C',48,36.2,0.5,0.4,0.7,5.4,1.6,1.6,5.0,25.2,26),(96,113,'Robert Covington',27,'SF',80,31.7,0.4,0.4,0.9,2.0,1.7,0.9,1.6,12.6,9),(97,114,'Allen Crabbe',25,'SG',75,29.3,0.4,0.4,0.9,1.6,0.6,0.5,1.0,13.2,13),(98,115,'Torrey Craig',27,'SF',39,16.1,0.5,0.3,0.6,0.6,0.3,0.4,0.5,4.2,6),(99,116,'Jamal Crawford',37,'SG',80,20.7,0.4,0.3,0.9,2.3,0.5,0.1,1.2,10.3,14),(100,117,'Jordan Crawford',29,'SG',5,10.6,0.4,0.6,1.0,2.6,0.2,0.2,1.0,6.6,26),(101,118,'Jae Crowder',27,'SF',27,27.6,0.4,0.3,0.8,1.5,0.9,0.3,1.2,11.8,12),(102,119,'Dante Cunningham',30,'SF',22,20.3,0.5,0.4,0.7,1.0,0.5,0.6,0.8,7.5,13),(103,120,'Stephen Curry',29,'PG',51,32.0,0.5,0.4,0.9,6.1,1.6,0.2,3.0,26.4,30),(104,121,'Troy Daniels',26,'SG',79,20.5,0.4,0.4,0.9,0.6,0.3,0.1,0.7,8.9,16),(105,122,'Anthony Davis',24,'PF',75,36.4,0.5,0.3,0.8,2.3,1.5,2.6,2.2,28.1,26),(106,124,'Ed Davis',28,'C',78,18.9,0.6,0.0,0.7,0.5,0.4,0.7,0.8,5.3,17),(107,125,'Dewayne Dedmon',28,'C',62,24.9,0.5,0.4,0.8,1.5,0.6,0.8,1.4,10.0,28),(108,126,'Sam Dekker',23,'PF',73,12.1,0.5,0.2,0.7,0.5,0.3,0.1,0.5,4.2,5),(109,127,'Malcolm Delaney',28,'PG',54,18.8,0.4,0.4,0.8,3.0,0.6,0.1,1.2,6.3,28),(110,128,'Matthew Dellavedova',27,'PG',38,18.7,0.4,0.4,0.9,3.8,0.4,0.0,1.3,4.3,2),(111,130,'DeMar DeRozan',28,'SG',80,33.9,0.5,0.3,0.8,5.2,1.1,0.3,2.2,23.0,4),(112,132,'Gorgui Dieng',28,'C',79,16.9,0.5,0.3,0.8,0.9,0.6,0.5,0.7,5.9,14),(113,133,'Spencer Dinwiddie',24,'PG',80,28.8,0.4,0.3,0.8,6.6,0.9,0.3,1.6,12.6,13),(114,134,'Tyler Dorsey',21,'SG',56,17.4,0.4,0.4,0.7,1.4,0.3,0.1,0.7,7.2,28),(115,135,'Damyean Dotson',23,'SG',44,10.8,0.4,0.3,0.7,0.7,0.3,0.0,0.4,4.1,29),(116,136,'Milton Doyle',24,'SG',10,12.5,0.3,0.2,0.5,1.0,0.6,0.2,0.2,3.4,13),(117,138,'Goran DragiÄ',31,'PG',75,31.7,0.5,0.4,0.8,4.8,0.8,0.2,2.2,17.3,8),(118,140,'Andre Drummond',24,'C',78,33.7,0.5,0.0,0.6,3.0,1.5,1.6,2.6,15.0,22),(119,141,'Jared Dudley',32,'PF',48,14.3,0.4,0.4,0.8,1.6,0.5,0.2,0.6,3.2,16),(120,142,'Kris Dunn',23,'PG',52,29.3,0.4,0.3,0.7,6.0,2.0,0.5,2.9,13.4,21),(121,143,'Kevin Durant',29,'SF',68,34.2,0.5,0.4,0.9,5.4,0.7,1.8,3.0,26.4,30),(122,145,'Henry Ellenson',21,'PF',38,8.7,0.4,0.3,0.9,0.5,0.1,0.0,0.5,4.0,22),(123,146,'Wayne Ellington',30,'SG',77,26.5,0.4,0.4,0.9,1.0,0.7,0.1,0.7,11.2,8),(124,147,'Joel Embiid',23,'C',63,30.3,0.5,0.3,0.8,3.2,0.6,1.8,3.7,22.9,9),(125,148,'James Ennis',27,'SF',27,20.4,0.5,0.3,0.8,0.8,0.6,0.2,0.7,7.5,22),(126,149,'Tyler Ennis',23,'PG',54,12.6,0.4,0.3,0.8,1.9,0.6,0.2,0.7,4.1,1),(127,150,'Jawun Evans',21,'PG',48,16.2,0.4,0.3,0.8,2.1,0.8,0.1,0.9,4.8,5),(128,152,'Tyreke Evans',28,'PG',52,30.9,0.5,0.4,0.8,5.2,1.1,0.3,2.3,19.4,25),(129,153,'Dante Exum',22,'PG',14,16.8,0.5,0.3,0.8,3.1,0.6,0.2,1.4,8.1,12),(130,154,'Kenneth Faried',28,'PF',32,14.4,0.5,0.0,0.7,0.6,0.4,0.4,0.7,5.9,6),(131,155,'Derrick Favors',26,'C',77,28.0,0.6,0.2,0.7,1.3,0.7,1.1,1.1,12.3,12),(132,157,'Cristiano FelÃ­cio',25,'C',55,17.8,0.6,0.0,0.7,1.0,0.3,0.2,1.0,5.6,21),(133,158,'Raymond Felton',33,'PG',82,16.6,0.4,0.4,0.8,2.5,0.6,0.2,0.9,6.9,18),(134,159,'Terrance Ferguson',19,'SG',61,12.5,0.4,0.3,0.9,0.3,0.4,0.2,0.2,3.1,18),(135,160,'Yogi Ferrell',24,'SG',82,27.8,0.4,0.4,0.8,2.5,0.8,0.1,1.0,10.2,7),(136,161,'Dorian Finney-Smith',24,'PF',21,21.3,0.4,0.3,0.7,1.2,0.5,0.2,1.0,5.9,7),(137,162,'Bryn Forbes',24,'SG',80,19.0,0.4,0.4,0.7,1.0,0.4,0.0,0.5,6.9,23),(138,163,'Evan Fournier',25,'SF',57,32.2,0.5,0.4,0.9,2.9,0.8,0.3,1.7,17.8,15),(139,164,'De\'Aaron Fox',20,'PG',73,27.8,0.4,0.3,0.7,4.4,1.0,0.3,2.4,11.6,19),(140,165,'Tim Frazier',27,'PG',59,14.2,0.4,0.3,0.8,3.3,0.8,0.1,1.0,3.0,24),(141,166,'Channing Frye',34,'C',9,16.7,0.5,0.4,0.8,1.1,0.1,0.1,0.4,5.8,1),(142,167,'Markelle Fultz',19,'SG',14,18.1,0.4,0.0,0.5,3.8,0.9,0.3,1.2,7.1,9),(143,168,'Danilo Gallinari',29,'SF',21,32.0,0.4,0.3,0.9,2.0,0.6,0.5,1.2,15.3,5),(144,169,'Langston Galloway',26,'SG',58,14.9,0.4,0.3,0.8,1.0,0.6,0.1,0.3,6.2,22),(145,170,'Marc Gasol',33,'C',73,33.0,0.4,0.3,0.8,4.2,0.7,1.4,2.7,17.2,25),(146,171,'Pau Gasol',37,'C',77,23.5,0.5,0.4,0.8,3.1,0.3,1.0,1.4,10.1,23),(147,172,'Rudy Gay',31,'PF',57,21.6,0.5,0.3,0.8,1.3,0.8,0.7,1.4,11.5,23),(148,173,'Paul George',27,'SF',79,36.6,0.4,0.4,0.8,3.3,2.0,0.5,2.7,21.9,18),(149,174,'Marcus Georges-Hunt',23,'SG',42,5.3,0.4,0.3,0.6,0.2,0.1,0.0,0.1,1.4,14),(150,176,'Taj Gibson',32,'PF',82,33.2,0.6,0.2,0.8,1.2,0.8,0.7,1.1,12.2,14),(151,177,'Manu GinÃ³bili',40,'SG',65,20.0,0.4,0.3,0.8,2.5,0.7,0.2,1.6,8.9,23),(152,179,'Aaron Gordon',22,'PF',58,32.9,0.4,0.3,0.7,2.3,1.0,0.8,1.8,17.6,15),(153,180,'Eric Gordon',29,'SG',69,31.2,0.4,0.4,0.8,2.2,0.6,0.4,1.9,18.0,11),(154,182,'Treveon Graham',24,'SG',63,16.7,0.4,0.4,0.7,0.9,0.5,0.0,0.4,4.3,20),(155,183,'Jerami Grant',23,'PF',81,20.3,0.5,0.3,0.7,0.7,0.4,1.0,0.7,8.4,18),(156,184,'Jerian Grant',25,'PG',74,22.8,0.4,0.3,0.7,4.6,0.9,0.1,1.2,8.4,21),(157,185,'Josh Gray',24,'PG',5,17.2,0.3,0.2,0.6,2.4,1.6,0.4,1.4,6.4,16),(158,186,'Danny Green',30,'SG',70,25.6,0.4,0.4,0.8,1.6,0.9,1.1,1.1,8.6,23),(159,187,'Draymond Green',27,'PF',70,32.7,0.5,0.3,0.8,7.3,1.4,1.3,2.9,11.0,30),(160,188,'Gerald Green',32,'SG',41,22.7,0.4,0.4,0.9,0.6,0.6,0.4,0.8,12.1,11),(161,189,'JaMychal Green',27,'PF',55,28.0,0.5,0.3,0.7,1.4,0.6,0.5,1.4,10.3,25),(162,190,'Jeff Green',31,'PF',78,23.4,0.5,0.3,0.9,1.3,0.5,0.4,1.0,10.8,27),(163,191,'Blake Griffin',28,'PF',33,34.5,0.4,0.3,0.8,5.4,0.9,0.3,3.0,22.6,5),(164,191,'Blake Griffin',28,'PF',25,33.2,0.4,0.3,0.8,6.2,0.4,0.4,2.6,19.8,22),(165,193,'Tim Hardaway',25,'SG',57,33.1,0.4,0.3,0.8,2.7,1.1,0.2,1.6,17.5,29),(166,194,'James Harden',28,'SG',72,35.4,0.4,0.4,0.9,8.8,1.8,0.7,4.4,30.4,11),(167,195,'Maurice Harkless',24,'SF',59,21.4,0.5,0.4,0.7,0.9,0.8,0.7,0.7,6.5,17),(168,196,'Montrezl Harrell',24,'C',76,17.0,0.6,0.1,0.6,1.0,0.5,0.7,0.9,11.0,5),(169,197,'Devin Harris',34,'PG',27,19.7,0.4,0.3,0.8,2.5,0.5,0.1,1.0,8.2,6),(170,198,'Gary Harris',23,'SG',67,34.4,0.5,0.4,0.8,2.9,1.8,0.2,1.8,17.5,6),(171,199,'Joe Harris',26,'SG',78,25.3,0.5,0.4,0.8,1.6,0.4,0.3,1.2,10.8,13),(172,200,'Tobias Harris',25,'PF',32,34.5,0.5,0.4,0.8,3.1,1.2,0.6,1.7,19.3,5),(173,201,'Aaron Harrison',23,'SG',9,25.9,0.3,0.2,0.8,1.2,1.0,0.2,0.3,6.7,7),(174,202,'Andrew Harrison',23,'PG',56,23.7,0.4,0.3,0.8,3.2,0.7,0.5,1.4,9.5,25),(175,203,'Shaquille Harrison',24,'PG',23,16.7,0.5,0.2,0.7,2.4,1.1,0.3,1.0,6.6,16),(176,204,'Josh Hart',22,'SG',63,23.2,0.5,0.4,0.7,1.3,0.7,0.3,0.7,7.9,1),(177,205,'Udonis Haslem',37,'C',14,5.1,0.2,0.1,0.5,0.4,0.0,0.1,0.1,0.6,8),(178,206,'Nigel Hayes',23,'SF',5,21.0,0.3,0.2,0.0,0.8,0.4,0.6,0.2,3.6,19),(179,209,'Myke Henry',25,'SF',20,18.9,0.4,0.3,0.6,1.1,1.6,0.3,1.0,5.4,25),(180,210,'John Henson',27,'C',76,25.9,0.6,0.1,0.6,1.5,0.6,1.4,1.1,8.8,2),(181,211,'Juan HernangÃ³mez',22,'PF',25,11.1,0.4,0.3,0.8,0.5,0.2,0.1,0.4,3.3,6),(182,212,'Willy HernangÃ³mez',23,'C',22,11.9,0.5,0.6,0.8,0.5,0.5,0.4,0.4,6.1,20),(183,213,'Mario Hezonja',22,'SF',75,22.1,0.4,0.3,0.8,1.4,1.1,0.4,1.1,9.6,15),(184,214,'Isaiah Hicks',23,'PF',18,13.3,0.5,0.2,0.7,0.9,0.1,0.2,0.9,4.4,29),(185,215,'Buddy Hield',25,'SG',80,25.3,0.4,0.4,0.9,1.9,1.1,0.3,1.6,13.5,19),(186,216,'NenÃª HilÃ¡rio',35,'C',52,14.6,0.6,0.0,0.6,0.9,0.5,0.3,0.7,6.5,11),(187,217,'George Hill',31,'PG',24,27.9,0.4,0.4,0.8,2.8,0.9,0.6,1.2,9.4,27),(188,218,'Solomon Hill',26,'SF',12,15.6,0.3,0.2,0.5,1.8,0.6,0.1,0.8,2.4,26),(189,219,'Darrun Hilliard',24,'SG',14,6.8,0.3,0.0,0.9,0.8,0.1,0.0,0.3,1.1,23),(190,220,'Jrue Holiday',27,'SG',81,36.1,0.5,0.3,0.8,6.0,1.5,0.8,2.6,19.0,26),(191,221,'Justin Holiday',28,'SG',72,31.5,0.4,0.4,0.8,2.1,1.1,0.4,1.3,12.2,21),(192,222,'John Holland',29,'SF',24,7.3,0.3,0.3,0.7,0.2,0.3,0.1,0.3,2.3,27),(193,223,'Rondae Hollis-Jefferson',23,'SF',68,28.2,0.5,0.2,0.8,2.5,1.0,0.7,1.8,13.9,13),(194,224,'Richaun Holmes',24,'C',48,15.5,0.6,0.1,0.7,1.3,0.4,0.6,0.5,6.5,9),(195,225,'Rodney Hood',25,'SG',21,25.3,0.4,0.4,0.8,1.4,0.7,0.2,0.3,10.8,27),(196,227,'Al Horford',31,'C',72,31.6,0.5,0.4,0.8,4.7,0.6,1.1,1.8,12.9,3),(197,228,'Danuel House',24,'SG',23,17.5,0.4,0.3,0.8,1.1,0.3,0.3,0.5,6.6,16),(198,229,'Dwight Howard',32,'C',81,30.4,0.6,0.1,0.6,1.3,0.6,1.6,2.6,16.6,20),(199,230,'Josh Huestis',26,'PF',69,14.2,0.3,0.3,0.3,0.3,0.2,0.6,0.4,2.3,18),(200,231,'R.J. Hunter',24,'SG',5,9.0,0.4,0.2,1.0,0.6,0.6,0.0,0.4,3.8,11),(201,233,'Serge Ibaka',28,'PF',76,27.5,0.5,0.4,0.8,0.8,0.4,1.3,1.2,12.6,4),(202,234,'Andre Iguodala',34,'SF',64,25.3,0.5,0.3,0.6,3.3,0.8,0.6,1.0,6.0,30),(203,235,'Ersan Ä°lyasova',30,'PF',23,24.1,0.4,0.4,0.7,1.7,0.7,0.4,1.3,10.8,9),(204,236,'Joe Ingles',30,'SF',82,31.4,0.5,0.4,0.8,4.8,1.1,0.2,1.9,11.5,12),(205,237,'Andre Ingram',32,'SG',2,32.0,0.5,0.6,1.0,3.5,1.5,1.5,1.5,12.0,1),(206,238,'Brandon Ingram',20,'SF',59,33.5,0.5,0.4,0.7,3.9,0.8,0.7,2.5,16.1,1),(207,239,'Kyrie Irving',25,'PG',60,32.2,0.5,0.4,0.9,5.1,1.1,0.3,2.3,24.4,3),(208,240,'Jonathan Isaac',20,'PF',27,19.9,0.4,0.3,0.8,0.7,1.2,1.1,1.0,5.4,15),(209,241,'Wesley Iwundu',23,'SF',62,16.5,0.4,0.2,0.7,0.9,0.5,0.2,0.5,3.7,15),(210,242,'Jarrett Jack',34,'PG',62,25.0,0.4,0.3,0.8,5.6,0.6,0.1,1.9,7.5,29),(211,243,'Aaron Jackson',31,'PG',1,35.0,0.3,0.3,0.5,1.0,0.0,0.0,1.0,8.0,11),(212,244,'Demetrius Jackson',23,'PG',3,5.7,0.8,1.0,0.5,1.3,0.3,0.0,0.3,2.7,9),(213,245,'Josh Jackson',20,'SF',77,25.4,0.4,0.3,0.6,1.5,1.0,0.5,1.9,13.1,16),(214,246,'Justin Jackson',22,'SF',68,22.1,0.4,0.3,0.7,1.1,0.4,0.2,0.6,6.7,19),(215,247,'Reggie Jackson',27,'PG',45,26.7,0.4,0.3,0.8,5.3,0.6,0.1,2.2,14.6,22),(216,248,'LeBron James',33,'PF',82,36.9,0.5,0.4,0.7,9.1,1.4,0.9,4.2,27.5,27),(217,250,'Al Jefferson',33,'C',36,13.4,0.5,0.0,0.8,0.8,0.4,0.6,0.6,7.0,10),(218,251,'Richard Jefferson',37,'SF',20,8.2,0.4,0.3,0.6,0.8,0.1,0.1,0.3,1.5,6),(219,252,'Brandon Jennings',28,'PG',14,14.6,0.4,0.3,1.0,3.1,0.4,0.3,1.3,5.2,2),(220,253,'Jonas Jerebko',30,'PF',74,15.3,0.5,0.4,0.8,0.6,0.3,0.2,0.4,5.8,12),(221,254,'Amir Johnson',30,'C',74,15.8,0.5,0.3,0.6,1.6,0.6,0.6,0.7,4.6,9),(222,257,'James Johnson',30,'PF',73,26.6,0.5,0.3,0.7,3.8,1.0,0.7,1.9,10.8,8),(223,258,'Joe Johnson',36,'SF',23,22.0,0.4,0.3,1.0,1.7,0.3,0.0,0.8,6.0,11),(224,260,'Stanley Johnson',21,'SF',69,27.4,0.4,0.3,0.8,1.6,1.4,0.2,1.1,8.7,22),(225,261,'Tyler Johnson',25,'PG',72,28.5,0.4,0.4,0.8,2.3,0.8,0.5,1.1,11.7,8),(226,262,'Wesley Johnson',30,'SF',74,20.1,0.4,0.3,0.7,0.8,1.0,0.8,0.7,5.4,5),(227,263,'Nikola JokiÄ',22,'C',75,32.6,0.5,0.4,0.9,6.1,1.2,0.8,2.8,18.5,6),(228,265,'Derrick Jones',20,'SF',14,15.1,0.4,0.2,0.6,0.4,0.2,0.6,0.4,3.7,8),(229,266,'Jalen Jones',24,'SF',12,13.5,0.4,0.4,0.6,0.3,0.4,0.1,0.6,5.8,7),(230,267,'Tyus Jones',21,'PG',82,17.9,0.5,0.3,0.9,2.8,1.2,0.1,0.7,5.1,14),(231,269,'Cory Joseph',26,'PG',82,27.0,0.4,0.4,0.7,3.2,1.0,0.2,1.1,7.9,10),(232,270,'Frank Kaminsky',24,'PF',79,23.2,0.4,0.4,0.8,1.6,0.5,0.2,0.8,11.1,20),(233,271,'Enes Kanter',25,'C',71,25.8,0.6,0.0,0.8,1.5,0.5,0.5,1.7,14.1,29),(234,272,'Luke Kennard',21,'SG',73,20.0,0.4,0.4,0.9,1.7,0.6,0.2,0.9,7.6,22),(235,273,'Michael Kidd-Gilchrist',24,'SF',74,25.0,0.5,0.0,0.7,1.0,0.7,0.4,0.7,9.2,20),(236,274,'Sean Kilpatrick',28,'SG',9,23.8,0.4,0.4,0.8,1.4,0.7,0.3,1.3,15.4,21),(237,275,'Maxi Kleber',26,'PF',72,16.8,0.5,0.3,0.7,0.7,0.4,0.7,0.4,5.4,7),(238,276,'Furkan Korkmaz',20,'SG',14,5.7,0.3,0.3,0.5,0.3,0.1,0.1,0.1,1.6,9),(239,277,'Luke Kornet',22,'PF',20,16.3,0.4,0.4,0.7,1.3,0.3,0.8,0.6,6.7,29),(240,278,'Kyle Korver',36,'SG',73,21.6,0.5,0.4,0.9,1.2,0.4,0.4,0.8,9.2,27),(241,280,'Kyle Kuzma',22,'PF',77,31.2,0.5,0.4,0.7,1.8,0.6,0.4,1.8,16.1,1),(242,282,'Skal LabissiÃ¨re',21,'PF',60,20.7,0.4,0.4,0.8,1.2,0.4,0.8,1.2,8.7,19),(243,283,'Jeremy Lamb',25,'SG',80,24.6,0.5,0.4,0.9,2.3,0.8,0.4,1.2,12.9,20),(244,284,'Shane Larkin',25,'PG',54,14.4,0.4,0.4,0.9,1.8,0.5,0.0,0.6,4.3,3),(245,285,'Joffrey Lauvergne',26,'C',55,9.7,0.5,0.0,0.6,0.7,0.2,0.1,0.6,4.1,23),(246,286,'Zach LaVine',22,'SG',24,27.3,0.4,0.3,0.8,3.0,1.0,0.2,1.8,16.7,21),(247,287,'Jake Layman',23,'SF',35,4.6,0.3,0.2,0.7,0.3,0.2,0.1,0.1,1.0,17),(248,288,'T.J. Leaf',20,'PF',53,8.7,0.5,0.4,0.6,0.2,0.1,0.1,0.2,2.9,10),(249,289,'Courtney Lee',32,'SG',76,30.4,0.5,0.4,0.9,2.4,1.1,0.2,1.1,12.0,29),(250,290,'Damion Lee',25,'SG',15,26.9,0.4,0.3,0.8,1.9,1.3,0.1,0.9,10.7,28),(251,291,'Walt Lemon',25,'PG',5,7.0,0.4,1.0,0.7,1.0,0.0,0.2,0.8,3.4,26),(252,292,'Alex Len',24,'C',69,20.2,0.6,0.3,0.7,1.2,0.4,0.9,1.1,8.5,16),(253,293,'Kawhi Leonard',26,'SF',9,23.3,0.5,0.3,0.8,2.3,2.0,1.0,1.8,16.2,23),(254,294,'Meyers Leonard',25,'C',33,7.7,0.6,0.4,0.8,0.5,0.2,0.0,0.3,3.4,17),(255,295,'Jon Leuer',28,'PF',8,17.0,0.4,0.0,0.9,0.6,0.1,0.4,0.9,5.4,22),(256,296,'Caris LeVert',23,'SF',71,26.3,0.4,0.3,0.7,4.2,1.2,0.3,2.2,12.1,13),(257,298,'Damian Lillard',27,'PG',73,36.6,0.4,0.4,0.9,6.6,1.1,0.4,2.8,26.9,17),(258,299,'Jeremy Lin',29,'PG',1,25.0,0.4,0.5,1.0,4.0,0.0,0.0,3.0,18.0,13),(259,300,'Shaun Livingston',32,'PG',71,15.9,0.5,0.0,0.8,2.0,0.5,0.3,0.8,5.5,30),(260,301,'Kevon Looney',21,'C',66,13.8,0.6,0.2,0.5,0.6,0.5,0.8,0.5,4.0,30),(261,302,'Brook Lopez',29,'C',74,23.4,0.5,0.3,0.7,1.7,0.4,1.3,1.3,13.0,1),(262,303,'Robin Lopez',29,'C',64,26.4,0.5,0.3,0.8,1.9,0.2,0.8,1.7,11.8,21),(263,304,'Kevin Love',29,'C',59,28.0,0.5,0.4,0.9,1.7,0.7,0.4,1.5,17.6,27),(264,305,'Kyle Lowry',31,'PG',78,32.2,0.4,0.4,0.9,6.9,1.1,0.2,2.3,16.2,4),(265,306,'TimothÃ© Luwawu-Cabarrot',22,'SF',52,15.5,0.4,0.3,0.8,1.0,0.2,0.1,0.7,5.8,9),(266,308,'Trey Lyles',22,'PF',73,19.1,0.5,0.4,0.7,1.2,0.4,0.5,0.8,9.9,6),(267,309,'Shelvin Mack',27,'PG',69,19.8,0.4,0.3,0.7,3.9,0.8,0.1,1.3,6.9,15),(268,310,'Josh Magette',28,'PG',18,12.0,0.3,0.4,1.0,3.2,0.4,0.1,0.5,2.6,28),(269,311,'Ian Mahinmi',31,'C',77,14.9,0.6,0.0,0.7,0.7,0.5,0.5,1.3,4.8,24),(270,312,'Thon Maker',20,'C',74,16.7,0.4,0.3,0.7,0.6,0.5,0.7,0.6,4.8,2),(271,314,'Lauri Markkanen',20,'PF',68,29.7,0.4,0.4,0.8,1.2,0.6,0.6,1.2,15.2,21),(272,315,'Jarell Martin',23,'PF',73,22.8,0.4,0.3,0.8,1.0,0.5,0.7,1.2,7.7,25),(273,316,'Frank Mason',23,'PG',52,18.9,0.4,0.4,0.8,2.8,0.7,0.2,1.3,7.9,19),(274,318,'Wesley Matthews',31,'SF',63,33.8,0.4,0.4,0.8,2.7,1.2,0.3,1.3,12.7,7),(275,319,'Luc Mbah a Moute',31,'PF',61,25.6,0.5,0.4,0.7,0.9,1.2,0.4,1.1,7.5,11),(276,320,'James Michael McAdoo',25,'PF',3,6.0,0.3,0.3,1.0,0.0,0.0,0.3,0.3,2.7,9),(277,321,'Patrick McCaw',22,'SG',57,16.9,0.4,0.2,0.8,1.4,0.8,0.2,0.7,4.0,30),(278,322,'CJ McCollum',26,'SG',81,36.1,0.4,0.4,0.8,3.4,1.0,0.4,1.9,21.4,17),(279,323,'T.J. McConnell',25,'PG',76,22.4,0.5,0.4,0.8,4.0,1.2,0.2,1.5,6.3,9),(280,325,'Chris McCullough',22,'PF',19,4.7,0.4,0.1,0.6,0.2,0.0,0.3,0.1,2.4,24),(281,326,'Doug McDermott',26,'SF',26,22.9,0.5,0.5,0.9,1.1,0.3,0.2,0.8,9.0,7),(282,327,'JaVale McGee',30,'C',65,9.5,0.6,0.0,0.7,0.5,0.3,0.9,0.4,4.8,30),(283,328,'Rodney McGruder',26,'SG',18,16.6,0.5,0.4,0.5,0.9,0.4,0.2,0.2,5.1,8),(284,330,'Alfonzo McKinnie',25,'SF',14,3.8,0.5,0.3,0.7,0.1,0.1,0.1,0.2,1.5,4),(285,331,'Ben Mclemore',24,'SG',56,19.5,0.4,0.3,0.8,0.9,0.7,0.3,1.1,7.5,25),(286,333,'Jodie Meeks',30,'SG',77,14.5,0.4,0.3,0.9,0.9,0.4,0.1,0.5,6.3,24),(287,334,'Salah Mejri',31,'C',61,12.0,0.6,0.0,0.6,0.6,0.4,1.1,0.6,3.5,7),(288,335,'Jordan Mickey',23,'PF',23,12.3,0.5,0.1,0.7,0.4,0.3,0.4,0.8,4.0,8),(289,336,'Khris Middleton',26,'SF',82,36.4,0.5,0.4,0.9,4.0,1.5,0.3,2.3,20.1,2),(290,337,'C.J. Miles',30,'SF',70,19.1,0.4,0.4,0.8,0.8,0.5,0.3,0.6,10.0,4),(291,338,'Darius Miller',27,'SF',82,23.7,0.4,0.4,0.9,1.4,0.3,0.2,0.7,7.8,26),(292,339,'Malcolm Miller',24,'SF',15,8.4,0.5,0.4,1.0,0.2,0.1,0.1,0.3,2.5,4),(293,340,'Patty Mills',29,'PG',82,25.7,0.4,0.4,0.9,2.8,0.7,0.1,1.3,10.0,23),(294,341,'Paul Millsap',32,'PF',38,30.1,0.5,0.3,0.7,2.8,1.0,1.2,1.9,14.6,6),(295,342,'Nikola MirotiÄ',26,'PF',30,29.1,0.4,0.3,0.8,1.4,1.0,0.9,1.0,14.6,26),(296,343,'Donovan Mitchell',21,'SG',79,33.4,0.4,0.3,0.8,3.7,1.5,0.3,2.7,20.5,12),(297,345,'Malik Monk',19,'SG',63,13.6,0.4,0.3,0.8,1.4,0.3,0.1,0.8,6.7,20),(298,349,'E\'Twaun Moore',28,'SG',82,31.5,0.5,0.4,0.7,2.3,1.0,0.1,1.2,12.5,26),(299,352,'Marcus Morris',28,'PF',54,26.8,0.4,0.4,0.8,1.3,0.6,0.2,1.2,13.6,3),(300,353,'Markieff Morris',28,'PF',73,27.0,0.5,0.4,0.8,1.9,0.8,0.5,1.7,11.5,24),(301,354,'Monte Morris',22,'PG',3,8.3,0.7,0.0,1.0,2.3,1.0,0.0,0.3,3.3,6),(302,355,'Johnathan Motley',22,'PF',11,16.0,0.5,0.2,0.5,0.6,0.3,0.2,0.8,8.7,7),(303,356,'Timofey Mozgov',31,'C',31,11.6,0.6,0.2,0.8,0.4,0.2,0.4,1.1,4.2,13),(304,357,'Emmanuel Mudiay',21,'PG',22,22.4,0.4,0.2,0.7,3.9,0.9,0.3,1.9,8.8,29),(305,358,'Shabazz Muhammad',25,'SG',11,10.6,0.6,0.4,0.9,0.6,0.4,0.1,0.1,8.5,2),(306,359,'Xavier Munford',25,'SG',6,3.5,0.2,0.0,0.5,0.7,0.2,0.0,0.3,0.5,2),(307,360,'Dejounte Murray',21,'PG',81,21.5,0.4,0.3,0.7,2.9,1.2,0.4,1.7,8.1,23),(308,361,'Jamal Murray',20,'PG',81,31.7,0.5,0.4,0.9,3.4,1.0,0.3,2.1,16.7,6),(309,362,'Mike Muscala',26,'C',53,20.0,0.5,0.4,0.9,1.0,0.6,0.5,0.8,7.6,28),(310,363,'Abdel Nader',24,'SF',48,10.9,0.3,0.4,0.6,0.5,0.3,0.2,0.7,3.0,3),(311,364,'Larry Nance',25,'C',24,20.8,0.6,0.1,0.7,1.0,1.2,0.8,0.4,8.9,27),(312,365,'Shabazz Napier',26,'PG',74,20.7,0.4,0.4,0.8,2.0,1.1,0.2,1.2,8.7,17),(313,366,'Jameer Nelson',35,'PG',43,20.9,0.4,0.4,0.8,3.6,0.5,0.1,1.3,5.1,26),(314,366,'Jameer Nelson',35,'PG',7,16.6,0.3,0.1,1.0,3.3,0.6,0.1,1.6,3.7,22),(315,368,'Georges Niang',24,'PF',9,3.6,0.4,0.0,0.5,0.3,0.2,0.0,0.3,1.0,12),(316,370,'Nerlens Noel',23,'C',30,15.7,0.5,0.0,0.8,0.7,1.0,0.7,0.9,4.4,7),(317,371,'Lucas Nogueira',25,'C',49,8.5,0.6,0.3,0.7,0.4,0.5,0.9,0.3,2.5,4),(318,373,'Frank Ntilikina',19,'PG',78,21.9,0.4,0.3,0.7,3.2,0.8,0.2,1.7,5.9,29),(319,374,'Jusuf NurkiÄ',23,'C',79,26.4,0.5,0.0,0.6,1.8,0.8,1.4,2.3,14.3,17),(320,375,'David Nwaba',25,'SG',70,23.5,0.5,0.3,0.7,1.5,0.8,0.4,1.1,7.9,21),(321,376,'Johnny O\'Bryant',24,'PF',36,10.5,0.4,0.3,0.8,0.4,0.3,0.2,0.4,4.8,20),(322,377,'Royce O\'Neale',24,'SF',69,16.7,0.4,0.4,0.8,1.4,0.5,0.2,0.8,5.0,12),(323,378,'Kyle O\'Quinn',27,'C',77,18.0,0.6,0.2,0.8,2.1,0.5,1.3,1.3,7.1,29),(324,379,'Semi Ojeleye',23,'PF',73,15.8,0.3,0.3,0.6,0.3,0.3,0.1,0.3,2.7,3),(325,381,'Jahlil Okafor',22,'C',26,12.6,0.6,0.3,0.8,0.4,0.1,0.6,0.7,6.4,13),(326,382,'Victor Oladipo',25,'SG',75,34.0,0.5,0.4,0.8,4.3,2.4,0.8,2.9,23.1,10),(327,383,'Kelly Olynyk',26,'PF',76,23.4,0.5,0.4,0.8,2.7,0.8,0.5,1.9,11.5,8),(328,385,'Cedi Osman',22,'SF',61,11.0,0.5,0.4,0.6,0.7,0.4,0.0,0.5,3.9,27),(329,386,'Kelly Oubre',22,'SF',81,27.5,0.4,0.3,0.8,1.2,1.0,0.4,1.1,11.8,24),(330,387,'Zaza Pachulia',33,'C',69,14.1,0.6,0.0,0.8,1.6,0.6,0.2,1.0,5.4,30),(331,388,'Marcus Paige',24,'PG',5,5.6,0.3,0.3,1.0,0.6,0.0,0.0,0.0,2.4,20),(332,390,'Jabari Parker',22,'PF',31,24.0,0.5,0.4,0.7,1.9,0.8,0.3,1.5,12.6,2),(333,391,'Tony Parker',35,'PG',55,19.5,0.5,0.3,0.7,3.5,0.5,0.0,1.2,7.7,23),(334,392,'Chandler Parsons',29,'SF',36,19.2,0.5,0.4,0.6,1.9,0.5,0.3,1.0,7.9,25),(335,393,'Patrick Patterson',28,'PF',82,15.5,0.4,0.4,0.9,0.7,0.6,0.3,0.4,3.9,18),(336,395,'Brandon Paul',26,'SG',64,9.0,0.4,0.3,0.5,0.6,0.4,0.1,0.5,2.3,23),(337,396,'Chris Paul',32,'PG',58,31.8,0.5,0.4,0.9,7.9,1.7,0.2,2.2,18.6,11),(338,397,'Adreian Payne',26,'PF',5,8.6,0.7,0.7,0.8,0.0,0.4,0.0,0.4,4.2,15),(339,398,'Cameron Payne',23,'PG',25,23.3,0.4,0.4,0.8,4.5,1.0,0.4,1.4,8.8,21),(340,399,'Elfrid Payton',23,'PG',19,29.0,0.4,0.2,0.7,6.2,1.0,0.3,2.8,11.8,16),(341,400,'Gary Payton',25,'PG',11,10.5,0.4,0.3,0.2,1.1,0.4,0.2,0.4,3.5,1),(342,402,'London Perrantes',23,'PG',14,4.7,0.2,0.0,0.6,0.4,0.1,0.1,0.1,0.5,27),(343,403,'Alec Peters',22,'PF',20,11.3,0.4,0.3,0.8,0.6,0.1,0.1,0.2,4.1,16);
/*!40000 ALTER TABLE `players` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `venues`
--

DROP TABLE IF EXISTS `venues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `venues` (
  `venue_id` int(11) NOT NULL AUTO_INCREMENT,
  `venue_name` varchar(45) NOT NULL,
  `venue_location` varchar(45) NOT NULL,
  `venue_capacity` int(11) NOT NULL,
  `venue_home_team` varchar(45) NOT NULL,
  `venue_year_opened` varchar(45) NOT NULL,
  PRIMARY KEY (`venue_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `venues`
--

LOCK TABLES `venues` WRITE;
/*!40000 ALTER TABLE `venues` DISABLE KEYS */;
INSERT INTO `venues` VALUES (1,'American Airlines Arena','Miami, Florida',19600,'Miami Heat','1999'),(2,'American Airlines Center','Dallas, Texas',19200,'Dallas Mavericks','2001'),(3,'Amway Center','Orlando, Florida',18846,'Orlando Magic','2010'),(4,'AT&T Center','San Antonio, Texas',18418,'San Antonio Spurs','2002'),(5,'Bankers Life Fieldhouse','Indianapolis, Indiana',17923,'Indiana Pacers','1999'),(6,'Barclays Center','Brooklyn, New York',17732,'Brooklyn Nets','2012'),(7,'Capital One Arena','Washington, D.C.',20356,'Washington Wizards','1997'),(8,'Chase Center','San Francisco, California',18064,'Golden State Warriors','2019'),(9,'Chesapeake Energy Arena','Oklahoma City, Oklahoma',18203,'Oklahoma City Thunder','2002'),(10,'FedExForum','Memphis, Tennessee',17794,'Memphis Grizzlies','2004'),(11,'Fiserv Forum','Milwaukee, Wisconsin',17500,'Milwaukee Bucks','2018'),(12,'Golden 1 Center','Sacramento, California',17583,'Sacramento Kings','2016'),(13,'Little Caesars Arena','Detroit, Michigan',20332,'Detroit Pistons','2017'),(14,'Madison Square Garden','New York City, New York',19812,'New York Knicks','1968'),(15,'Moda Center','Portland, Oregon',19441,'Portland Trail Blazers','1995'),(16,'Pepsi Center','Denver, Colorado',19520,'Denver Nuggets','1999'),(17,'Rocket Mortgage FieldHouse','Cleveland, Ohio',19432,'Cleveland Cavaliers','1994'),(18,'Scotiabank Arena','Toronto, Ontario',19800,'Toronto Raptors','1999'),(19,'Smoothie King Center','New Orleans, Louisiana',16867,'New Orleans Pelicans','1999'),(20,'Spectrum Center','Charlotte, North Carolina',19077,'Charlotte Hornets','2005'),(21,'Staples Center','Los Angeles, California',19068,'Los Angeles Clippers','1999'),(22,'Staples Center','Los Angeles, California',18997,'Los Angeles Lakers','1999'),(23,'State Farm Arena','Atlanta, Georgia',18118,'Atlanta Hawks','1999'),(24,'Talking Stick Resort Arena','Phoenix, Arizona',18055,'Phoenix Suns','1992'),(25,'Target Center','Minneapolis, Minnesota',18978,'Minnesota Timberwolves','1990'),(26,'TD Garden','Boston, Massachusetts',18624,'Boston Celtics','1995'),(27,'Toyota Center','Houston, Texas',18055,'Houston Rockets','2003'),(28,'United Center','Chicago, Illinois',20917,'Chicago Bulls','1994'),(29,'Vivint Smart Home Arena','Salt Lake City, Utah',18306,'Utah Jazz','1991'),(30,'Wells Fargo Center','Philadelphia, Pennsylvania',20478,'Philadelphia 76ers','1996');
/*!40000 ALTER TABLE `venues` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'basketball'
--

--
-- Dumping routines for database 'basketball'
--

--
-- Final view structure for view `new_team_increase_in_points`
--

/*!50001 DROP VIEW IF EXISTS `new_team_increase_in_points`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `new_team_increase_in_points` AS select `players`.`player_name` AS `Name`,`players`.`player_age` AS `Age`,`players`.`player_avg_points` AS `Current Average Points`,`offseason_transactions`.`former_avg_points` AS `Former Average Points`,(`players`.`player_avg_points` - `offseason_transactions`.`former_avg_points`) AS `Increase in Points Scored` from (`players` join `offseason_transactions` on((`players`.`player_name` = `offseason_transactions`.`player_name`))) where (`players`.`player_avg_points` > `offseason_transactions`.`former_avg_points`) order by (`players`.`player_avg_points` - `offseason_transactions`.`former_avg_points`) desc,`players`.`player_name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-06 13:17:28
