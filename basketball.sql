-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema basketball
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema basketball
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `basketball` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `basketball` ;

-- -----------------------------------------------------
-- Table `basketball`.`venues`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `basketball`.`venues` (
  `venue_id` INT(11) NOT NULL AUTO_INCREMENT,
  `venue_name` VARCHAR(45) NOT NULL,
  `venue_location` VARCHAR(45) NOT NULL,
  `venue_capacity` INT(11) NOT NULL,
  `venue_home_team` VARCHAR(45) NOT NULL,
  `venue_year_opened` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`venue_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `basketball`.`all_star_teams`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `basketball`.`all_star_teams` (
  `ast_id` INT(11) NOT NULL AUTO_INCREMENT,
  `ast_name` VARCHAR(45) NOT NULL,
  `ast_year` INT(11) NOT NULL,
  `ast_q1_score` INT(11) NOT NULL,
  `ast_q2_score` INT(11) NOT NULL,
  `ast_q3_score` INT(11) NOT NULL,
  `ast_q4_score` INT(11) NOT NULL,
  `ast_total_score` INT(11) NOT NULL,
  `ast_venue_id` INT(11) NOT NULL,
  PRIMARY KEY (`ast_id`),
  INDEX `all-star-venue_idx` (`ast_venue_id` ASC),
  CONSTRAINT `all-star-venue`
    FOREIGN KEY (`ast_venue_id`)
    REFERENCES `basketball`.`venues` (`venue_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `basketball`.`teams`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `basketball`.`teams` (
  `team_id` INT(11) NOT NULL AUTO_INCREMENT,
  `team_rank` INT(11) NOT NULL,
  `team_name` VARCHAR(45) NOT NULL,
  `team_games_played` INT(11) NOT NULL,
  `team_wins` INT(11) NOT NULL,
  `team_losses` INT(11) NOT NULL,
  `team_avg_points` DECIMAL(9,1) NOT NULL,
  `team_field_goal_rate` DECIMAL(9,1) NOT NULL,
  `team_3_point_rate` DECIMAL(9,1) NOT NULL,
  `team_free_throw_rate` DECIMAL(9,1) NOT NULL,
  `team_avg_rebounds` DECIMAL(9,1) NOT NULL,
  `team_avg_assists` DECIMAL(9,1) NOT NULL,
  `team_avg_turnovers` DECIMAL(9,1) NOT NULL,
  `team_avg_steals` DECIMAL(9,1) NOT NULL,
  `team_avg_blocks` DECIMAL(9,1) NOT NULL,
  `team_venue_id` INT(11) NOT NULL,
  PRIMARY KEY (`team_id`),
  INDEX `fk_teams_venues1_idx` (`team_venue_id` ASC),
  CONSTRAINT `fk_teams_venues1`
    FOREIGN KEY (`team_venue_id`)
    REFERENCES `basketball`.`venues` (`venue_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 31
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `basketball`.`players`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `basketball`.`players` (
  `player_id` INT(11) NOT NULL AUTO_INCREMENT,
  `player_rank` INT(11) NOT NULL,
  `player_name` VARCHAR(45) NOT NULL,
  `player_age` INT(11) NOT NULL,
  `player_position` VARCHAR(45) NOT NULL,
  `player_games` INT(11) NOT NULL,
  `player_avg_minutes_played` DECIMAL(9,1) NOT NULL,
  `player_field_goal_rate` DECIMAL(9,1) NOT NULL,
  `player_3_point_rate` DECIMAL(9,1) NOT NULL,
  `player_free_throw_rate` DECIMAL(9,1) NOT NULL,
  `player_avg_assists` DECIMAL(9,1) NOT NULL,
  `player_avg_steals` DECIMAL(9,1) NOT NULL,
  `player_avg_blocks` DECIMAL(9,1) NOT NULL,
  `player_avg_turnovers` DECIMAL(9,1) NOT NULL,
  `player_avg_points` DECIMAL(9,1) NOT NULL,
  `current_team_id` INT(11) NOT NULL,
  PRIMARY KEY (`player_id`),
  INDEX `current_team_idx` (`current_team_id` ASC),
  CONSTRAINT `current_team`
    FOREIGN KEY (`current_team_id`)
    REFERENCES `basketball`.`teams` (`team_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 344
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `basketball`.`all_star_players`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `basketball`.`all_star_players` (
  `all_star_player_id` INT(11) NOT NULL AUTO_INCREMENT,
  `asp_name` VARCHAR(45) NOT NULL,
  `asp_assists` INT(11) NOT NULL,
  `asp_steals` INT(11) NOT NULL,
  `asp_blocks` INT(11) NOT NULL,
  `asp_turnovers` INT(11) NOT NULL,
  `asp_points` INT(11) NOT NULL,
  `asp_field_goal_rate` DECIMAL(9,2) NOT NULL,
  `asp_3_point_rate` DECIMAL(9,2) NULL DEFAULT NULL,
  `asp_free_throw_rate` DECIMAL(9,2) NULL DEFAULT NULL,
  `player_id` INT(11) NULL DEFAULT NULL,
  `all_star_team_id` INT(11) NOT NULL COMMENT 'Add game stats\\n',
  PRIMARY KEY (`all_star_player_id`),
  INDEX `player_id_idx` (`player_id` ASC),
  INDEX `all_star_team_id_idx` (`all_star_team_id` ASC),
  CONSTRAINT `all_star_team_id`
    FOREIGN KEY (`all_star_team_id`)
    REFERENCES `basketball`.`all_star_teams` (`ast_id`),
  CONSTRAINT `player_id`
    FOREIGN KEY (`player_id`)
    REFERENCES `basketball`.`players` (`player_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 27
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `basketball`.`championship_teams`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `basketball`.`championship_teams` (
  `championship_team_id` INT(11) NOT NULL AUTO_INCREMENT,
  `championship_year` INT(11) NOT NULL,
  `championship_games_won` INT(11) NOT NULL,
  `championship_games_lost` INT(11) NOT NULL,
  `championship_final_score` INT(11) NOT NULL,
  `championship_average_points` DECIMAL(9,1) NOT NULL,
  `team_id` INT(11) NOT NULL,
  PRIMARY KEY (`championship_team_id`),
  INDEX `champ-team-id_idx` (`team_id` ASC),
  CONSTRAINT `champ-team-id`
    FOREIGN KEY (`team_id`)
    REFERENCES `basketball`.`teams` (`team_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 3
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `basketball`.`championship_players`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `basketball`.`championship_players` (
  `champ_player_id` INT(11) NOT NULL AUTO_INCREMENT,
  `player_id` INT(11) NULL DEFAULT NULL,
  `championship_team_id` INT(11) NOT NULL,
  `champ_player_assists` INT(11) NOT NULL,
  `champ_player_steals` INT(11) NOT NULL,
  `champ_player_blocks` INT(11) NOT NULL,
  `champ_player_turnovers` INT(11) NOT NULL,
  `champ_player_points` INT(11) NOT NULL,
  `champ_player_field_goal_rate` DECIMAL(9,1) NULL DEFAULT NULL,
  `champ_player_3_point_rate` DECIMAL(9,1) NULL DEFAULT NULL,
  `champ_player_free_throw_rate` DECIMAL(9,1) NULL DEFAULT NULL,
  PRIMARY KEY (`champ_player_id`),
  INDEX `champ-player-game_idx` (`championship_team_id` ASC),
  INDEX `champ-player-id_idx` (`player_id` ASC),
  CONSTRAINT `champ-player-game`
    FOREIGN KEY (`championship_team_id`)
    REFERENCES `basketball`.`championship_teams` (`championship_team_id`),
  CONSTRAINT `champ-player-id`
    FOREIGN KEY (`player_id`)
    REFERENCES `basketball`.`players` (`player_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 28
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `basketball`.`offseason_transactions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `basketball`.`offseason_transactions` (
  `transaction_id` INT(11) NOT NULL AUTO_INCREMENT,
  `new_salary` INT(11) NULL DEFAULT NULL,
  `former_team_id` INT(11) NOT NULL,
  `new_team_id` INT(11) NOT NULL,
  `player_id` INT(11) NOT NULL,
  PRIMARY KEY (`transaction_id`),
  INDEX `former_id_idx` (`former_team_id` ASC),
  INDEX `new_team_idx` (`new_team_id` ASC),
  INDEX `player_id_idx` (`player_id` ASC),
  CONSTRAINT `former_id`
    FOREIGN KEY (`former_team_id`)
    REFERENCES `basketball`.`teams` (`team_id`),
  CONSTRAINT `new_team`
    FOREIGN KEY (`new_team_id`)
    REFERENCES `basketball`.`teams` (`team_id`),
  CONSTRAINT `transaction_player_id`
    FOREIGN KEY (`player_id`)
    REFERENCES `basketball`.`players` (`player_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
