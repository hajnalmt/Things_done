SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

DROP SCHEMA IF EXISTS `hazi` ;
CREATE SCHEMA IF NOT EXISTS `hazi` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `hazi` ;

-- -----------------------------------------------------
-- Table `hazi`.`Track`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `hazi`.`Track` ;

CREATE  TABLE IF NOT EXISTS `hazi`.`Track` (
  `idTrack` INT NOT NULL AUTO_INCREMENT ,
  `Title` VARCHAR(200) NOT NULL ,
  `Length` INT NULL ,
  `Remark` VARCHAR(500) NULL ,
  `Path` VARCHAR(250) NOT NULL ,
  PRIMARY KEY (`idTrack`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hazi`.`Artists`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `hazi`.`Artists` ;

CREATE  TABLE IF NOT EXISTS `hazi`.`Artists` (
  `idArtists` INT NOT NULL AUTO_INCREMENT ,
  `Artist` VARCHAR(100) NOT NULL ,
  PRIMARY KEY (`idArtists`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hazi`.`Genres`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `hazi`.`Genres` ;

CREATE  TABLE IF NOT EXISTS `hazi`.`Genres` (
  `idGenres` INT NOT NULL AUTO_INCREMENT ,
  `Genre` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`idGenres`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hazi`.`Album`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `hazi`.`Album` ;

CREATE  TABLE IF NOT EXISTS `hazi`.`Album` (
  `idAlbum` INT NOT NULL AUTO_INCREMENT ,
  `Title` VARCHAR(100) NULL ,
  `Artist` INT NULL ,
  `Genre` INT NULL ,
  `PublishingTime` YEAR NULL ,
  `Remark` VARCHAR(500) NULL ,
  PRIMARY KEY (`idAlbum`) ,
  INDEX `idArtists_idx` (`Artist` ASC) ,
  INDEX `idGenres_idx` (`Genre` ASC) ,
  CONSTRAINT `idArtists`
    FOREIGN KEY (`Artist` )
    REFERENCES `hazi`.`Artists` (`idArtists` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `idGenres`
    FOREIGN KEY (`Genre` )
    REFERENCES `hazi`.`Genres` (`idGenres` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `hazi`.`List`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `hazi`.`List` ;

CREATE  TABLE IF NOT EXISTS `hazi`.`List` (
  `Album_id` INT NOT NULL ,
  `Track_id` INT NOT NULL ,
  `Num` INT NOT NULL ,
  INDEX `fk_Album_has_Track_Track1_idx` (`Track_id` ASC) ,
  INDEX `fk_Album_has_Track_Album1_idx` (`Album_id` ASC) ,
  PRIMARY KEY (`Track_id`, `Album_id`) ,
  CONSTRAINT `fk_Album_has_Track_Album1`
    FOREIGN KEY (`Album_id` )
    REFERENCES `hazi`.`Album` (`idAlbum` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Album_has_Track_Track1`
    FOREIGN KEY (`Track_id` )
    REFERENCES `hazi`.`Track` (`idTrack` )
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `hazi` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
