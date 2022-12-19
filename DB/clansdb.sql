-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema clansdb
-- -----------------------------------------------------
--  
DROP SCHEMA IF EXISTS `clansdb` ;

-- -----------------------------------------------------
-- Schema clansdb
--
--  
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `clansdb` DEFAULT CHARACTER SET utf8 ;
USE `clansdb` ;

-- -----------------------------------------------------
-- Table `category`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `category` ;

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` INT NOT NULL,
  `name` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`category_id`));


-- -----------------------------------------------------
-- Table `drop_ship`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `drop_ship` ;

CREATE TABLE IF NOT EXISTS `drop_ship` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `clan` VARCHAR(45) NOT NULL,
  `mech` VARCHAR(45) NOT NULL,
  `pilot` VARCHAR(45) NOT NULL,
  `aerospace_fighter` VARCHAR(45) NOT NULL,
  `elemental` VARCHAR(45) NOT NULL,
  `combat_vehicle` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS clansdb@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'clansdb'@'localhost' IDENTIFIED BY 'clansdb';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'clansdb'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `drop_ship`
-- -----------------------------------------------------
START TRANSACTION;
USE `clansdb`;
INSERT INTO `drop_ship` (`id`, `clan`, `mech`, `pilot`, `aerospace_fighter`, `elemental`, `combat_vehicle`) VALUES (1, 'jade_falcon', 'summoner', 'elizabeth_hazen', 'scytha', 'armored_heavy', 'hachiman');
INSERT INTO `drop_ship` (`id`, `clan`, `mech`, `pilot`, `aerospace_fighter`, `elemental`, `combat_vehicle`) VALUES (2, 'jade_falcon', 'direwolf', 'adler_malthus', 'vandal', 'armored_laser', 'mars');
INSERT INTO `drop_ship` (`id`, `clan`, `mech`, `pilot`, `aerospace_fighter`, `elemental`, `combat_vehicle`) VALUES (3, 'jade_falcon', 'warhawk', 'aidan_pryde', 'tomahawk', 'constable', 'zorya');
INSERT INTO `drop_ship` (`id`, `clan`, `mech`, `pilot`, `aerospace_fighter`, `elemental`, `combat_vehicle`) VALUES (4, 'wolf', 'gargoyle', 'ulrich_kerensky', 'jagatai', 'pulse_laser', 'ishtar');
INSERT INTO `drop_ship` (`id`, `clan`, `mech`, `pilot`, `aerospace_fighter`, `elemental`, `combat_vehicle`) VALUES (5, 'wolf', 'timber_wolf', 'natasha_kerensky', 'batu', 'armored_flame', 'odin');
INSERT INTO `drop_ship` (`id`, `clan`, `mech`, `pilot`, `aerospace_fighter`, `elemental`, `combat_vehicle`) VALUES (6, 'wolf', 'mad_dog', 'zheng_cuffe', 'visigoth', 'armored_gauss', 'svantovit');

COMMIT;

