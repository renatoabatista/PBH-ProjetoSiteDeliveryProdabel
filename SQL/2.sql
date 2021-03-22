-- MySQL Script generated by MySQL Workbench
-- sáb 20 mar 2021 22:53:35 -03
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema PACAI_JA
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema PACAI_JA
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `PACAI_JA` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;
USE `PACAI_JA` ;

-- -----------------------------------------------------
-- Table `PACAI_JA`.`ESTADOS`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PACAI_JA`.`ESTADOS` (
  `ID_ESTADO` INT NOT NULL,
  `NOME` VARCHAR(100) NULL,
  PRIMARY KEY (`ID_ESTADO`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PACAI_JA`.`CIDADES`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PACAI_JA`.`CIDADES` (
  `ID_CIDADES` INT NOT NULL,
  `NOME` VARCHAR(100) NOT NULL,
  `ESTADOS_ID_ESTADO` INT NOT NULL,
  PRIMARY KEY (`ID_CIDADES`, `ESTADOS_ID_ESTADO`),
  UNIQUE INDEX `ID_CIDADES_UNIQUE` (`ID_CIDADES` ASC) VISIBLE,
  INDEX `fk_CIDADES_ESTADOS1_idx` (`ESTADOS_ID_ESTADO` ASC) VISIBLE,
  CONSTRAINT `fk_CIDADES_ESTADOS1`
    FOREIGN KEY (`ESTADOS_ID_ESTADO`)
    REFERENCES `PACAI_JA`.`ESTADOS` (`ID_ESTADO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `PACAI_JA`.`TB_CLIENTE`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `PACAI_JA`.`TB_CLIENTE` (
  `ID_CLIENTE` INT NOT NULL AUTO_INCREMENT,
  `NomeCliente` VARCHAR(150) NOT NULL,
  `DataNasc` DATE NOT NULL,
  `CPF` INT(11) NOT NULL,
  `RUA` VARCHAR(120) NOT NULL,
  `NUMERO` INT NULL,
  `COMPLEMENTO` VARCHAR(100) NULL,
  `BAIRRO` VARCHAR(80) NOT NULL,
  `CEP` VARCHAR(45) NULL,
  `CIDADES_ID_CIDADES` INT NOT NULL,
  `ESTADOS_ID_ESTADO` INT NOT NULL,
  PRIMARY KEY (`ID_CLIENTE`, `CIDADES_ID_CIDADES`, `ESTADOS_ID_ESTADO`),
  UNIQUE INDEX `ID_CLIENTE_UNIQUE` (`ID_CLIENTE` ASC) VISIBLE,
  INDEX `fk_TB_CLIENTE_CIDADES_idx` (`CIDADES_ID_CIDADES` ASC) VISIBLE,
  INDEX `fk_TB_CLIENTE_ESTADOS1_idx` (`ESTADOS_ID_ESTADO` ASC) VISIBLE,
  CONSTRAINT `fk_TB_CLIENTE_CIDADES`
    FOREIGN KEY (`CIDADES_ID_CIDADES`)
    REFERENCES `PACAI_JA`.`CIDADES` (`ID_CIDADES`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_TB_CLIENTE_ESTADOS1`
    FOREIGN KEY (`ESTADOS_ID_ESTADO`)
    REFERENCES `PACAI_JA`.`ESTADOS` (`ID_ESTADO`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
