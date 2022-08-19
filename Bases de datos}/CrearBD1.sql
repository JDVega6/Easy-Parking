-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema EasyParking
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema EasyParking
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `EasyParking` DEFAULT CHARACTER SET utf8 ;
USE `EasyParking` ;

-- -----------------------------------------------------
-- Table `EasyParking`.`Empleado`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EasyParking`.`Empleado` (
  `idEmpleado` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(45) NOT NULL,
  `Apellido` VARCHAR(45) NOT NULL,
  `Telefono` INT(10) NOT NULL,
  `Contraseña` VARCHAR(45) NOT NULL,
  `Usuario` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idEmpleado`),
  UNIQUE INDEX `Contraseña_UNIQUE` (`Contraseña` ASC) VISIBLE,
  UNIQUE INDEX `Usuario_UNIQUE` (`Usuario` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EasyParking`.`Vehiculos`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `EasyParking`.`Vehiculos` (
  `idVehiculo` INT NOT NULL AUTO_INCREMENT,
  `Empleado_idEmpleado` INT NOT NULL,
  `TipoVehiculo` VARCHAR(1) NOT NULL,
  `Placa` VARCHAR(6) NOT NULL,
  `HoraEntrada` DATETIME NOT NULL,
  `HoraSalida` DATETIME NULL,
  `Estado` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`idVehiculo`),
  INDEX `fk_Carros_Empleado_idx` (`Empleado_idEmpleado` ASC) VISIBLE,
  CONSTRAINT `fk_Carros_Empleado`
    FOREIGN KEY (`Empleado_idEmpleado`)
    REFERENCES `EasyParking`.`Empleado` (`idEmpleado`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
