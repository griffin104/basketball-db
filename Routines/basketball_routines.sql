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
-- Temporary view structure for view `most_points_per_game`
--

DROP TABLE IF EXISTS `most_points_per_game`;
/*!50001 DROP VIEW IF EXISTS `most_points_per_game`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `most_points_per_game` AS SELECT 
 1 AS `Name`,
 1 AS `Points per game`,
 1 AS `Championship points per game`,
 1 AS `total points scored`*/;
SET character_set_client = @saved_cs_client;

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
-- Temporary view structure for view `allstar_vs_regular_season`
--

DROP TABLE IF EXISTS `allstar_vs_regular_season`;
/*!50001 DROP VIEW IF EXISTS `allstar_vs_regular_season`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `allstar_vs_regular_season` AS SELECT 
 1 AS `Name`,
 1 AS `Age`,
 1 AS `All-Star Game Points`,
 1 AS `Regular Season Points Average`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `regular_season_vs_championship`
--

DROP TABLE IF EXISTS `regular_season_vs_championship`;
/*!50001 DROP VIEW IF EXISTS `regular_season_vs_championship`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `regular_season_vs_championship` AS SELECT 
 1 AS `Name`,
 1 AS `Position`,
 1 AS `Championship Game Average Points`,
 1 AS `Regular Season Points Average`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `championships_played_and_won`
--

DROP TABLE IF EXISTS `championships_played_and_won`;
/*!50001 DROP VIEW IF EXISTS `championships_played_and_won`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `championships_played_and_won` AS SELECT 
 1 AS `Team Name`,
 1 AS `Championships Played`,
 1 AS `Championships Won`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `avg_points_all_star_players`
--

DROP TABLE IF EXISTS `avg_points_all_star_players`;
/*!50001 DROP VIEW IF EXISTS `avg_points_all_star_players`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `avg_points_all_star_players` AS SELECT 
 1 AS `Average Points of All Star Players`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `most_points_per_game`
--

/*!50001 DROP VIEW IF EXISTS `most_points_per_game`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `most_points_per_game` AS select `players`.`player_name` AS `Name`,`players`.`player_avg_points` AS `Points per game`,`championship_players`.`champ_player_points` AS `Championship points per game`,(`players`.`player_avg_points` + `championship_players`.`champ_player_points`) AS `total points scored` from (`players` join `championship_players` on((`players`.`player_id` = `championship_players`.`player_id`))) where (`players`.`player_avg_points` >= `championship_players`.`champ_player_id`) order by (`players`.`player_avg_points` + `championship_players`.`champ_player_points`) desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

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

--
-- Final view structure for view `allstar_vs_regular_season`
--

/*!50001 DROP VIEW IF EXISTS `allstar_vs_regular_season`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `allstar_vs_regular_season` AS select `all_star_players`.`asp_name` AS `Name`,`players`.`player_age` AS `Age`,`all_star_players`.`asp_points` AS `All-Star Game Points`,`players`.`player_avg_points` AS `Regular Season Points Average` from (`all_star_players` join `players` on((`all_star_players`.`player_id` = `players`.`player_id`))) where (`all_star_players`.`asp_points` > (select avg(`all_star_players`.`asp_points`) from `all_star_players`)) order by `all_star_players`.`asp_points` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `regular_season_vs_championship`
--

/*!50001 DROP VIEW IF EXISTS `regular_season_vs_championship`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `regular_season_vs_championship` AS select `players`.`player_name` AS `Name`,`players`.`player_position` AS `Position`,format((`championship_players`.`champ_player_points` / (`championship_teams`.`championship_games_won` + `championship_teams`.`championship_games_lost`)),2) AS `Championship Game Average Points`,`players`.`player_avg_points` AS `Regular Season Points Average` from ((`championship_players` join `players` on((`championship_players`.`player_id` = `players`.`player_id`))) join `championship_teams` on((`championship_players`.`championship_team_id` = `championship_teams`.`championship_team_id`))) where (`championship_players`.`champ_player_points` > (select avg(`championship_players`.`champ_player_points`) from `championship_players`)) order by `championship_players`.`champ_player_points` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `championships_played_and_won`
--

/*!50001 DROP VIEW IF EXISTS `championships_played_and_won`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `championships_played_and_won` AS select `teams`.`team_name` AS `Team Name`,count(`championship_teams`.`team_id`) AS `Championships Played`,sum((case when (`championship_teams`.`championship_games_won` > `championship_teams`.`championship_games_lost`) then 1 else 0 end)) AS `Championships Won` from (`championship_teams` join `teams` on((`championship_teams`.`team_id` = `teams`.`team_id`))) group by `championship_teams`.`team_id` order by `Championships Won` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `avg_points_all_star_players`
--

/*!50001 DROP VIEW IF EXISTS `avg_points_all_star_players`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `avg_points_all_star_players` AS select avg(`players`.`player_avg_points`) AS `Average Points of All Star Players` from (`all_star_players` join `players` on((`all_star_players`.`player_id` = `players`.`player_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'basketball'
--

--
-- Dumping routines for database 'basketball'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-12-07 17:28:02
