create schema `loyalto`;

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema loyalto
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema loyalto
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `loyalto` DEFAULT CHARACTER SET utf8 ;
USE `loyalto` ;

-- -----------------------------------------------------
-- Table `loyalto`.`Employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `loyalto`.`Employee` ;

CREATE TABLE IF NOT EXISTS `loyalto`.`Employee` (
  `Employee_id` INT NOT NULL,
  `Name` VARCHAR(45) NULL,
  `Address` VARCHAR(256) NULL,
  `Salary` FLOAT NULL,
  `Gender` CHAR(1) NULL,
  `SSN` VARCHAR(45) NULL,
  `Start_date` DATETIME NULL,
  `End_date` DATETIME NULL,
  `Occupation` VARCHAR(45) NULL,
  PRIMARY KEY (`Employee_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loyalto`.`Customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `loyalto`.`Customer` ;

CREATE TABLE IF NOT EXISTS `loyalto`.`Customer` (
  `Address` VARCHAR(256) NULL,
  `Phone_number` VARCHAR(22) NULL,
  `Customer_id` INT NOT NULL,
  PRIMARY KEY (`Customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loyalto`.`Order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `loyalto`.`Order` ;

CREATE TABLE IF NOT EXISTS `loyalto`.`Order` (
  `Order_id` INT NOT NULL,
  `Order_date` DATETIME NULL,
  `Order_Amount` FLOAT NULL,
  `Order_type` VARCHAR(45) NULL,
  `Order_status` VARCHAR(45) NULL,
  `Employee_id` INT NOT NULL,
  `Customer_id` INT NOT NULL,
  PRIMARY KEY (`Order_id`, `Employee_id`, `Customer_id`),
  INDEX `fk_Order_Employee1_idx` (`Employee_id` ASC),
  INDEX `fk_Order_Customer1_idx` (`Customer_id` ASC),
  CONSTRAINT `fk_Order_Employee1`
    FOREIGN KEY (`Employee_id`)
    REFERENCES `loyalto`.`Employee` (`Employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Customer1`
    FOREIGN KEY (`Customer_id`)
    REFERENCES `loyalto`.`Customer` (`Customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loyalto`.`Reservation`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `loyalto`.`Reservation` ;

CREATE TABLE IF NOT EXISTS `loyalto`.`Reservation` (
  `Reservation_date` DATETIME NULL,
  `Customer_id` INT NOT NULL,
  PRIMARY KEY (`Customer_id`),
  CONSTRAINT `fk_Reservation_Customer1`
    FOREIGN KEY (`Customer_id`)
    REFERENCES `loyalto`.`Customer` (`Customer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loyalto`.`Review`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `loyalto`.`Review` ;

CREATE TABLE IF NOT EXISTS `loyalto`.`Review` (
  `Service_rating` FLOAT NULL,
  `Satisfaction_level` FLOAT NULL,
  `Comments` VARCHAR(1000) NULL,
  `reviewid` INT NOT NULL,
  `Order_id` INT NOT NULL,
  PRIMARY KEY (`reviewid`, `Order_id`),
  INDEX `fk_Review_Order1_idx` (`Order_id` ASC),
  CONSTRAINT `fk_Review_Order1`
    FOREIGN KEY (`Order_id`)
    REFERENCES `loyalto`.`Order` (`Order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loyalto`.`Items`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `loyalto`.`Items` ;

CREATE TABLE IF NOT EXISTS `loyalto`.`Items` (
  `Item_id` INT NOT NULL,
  `Item_name` VARCHAR(45) NULL,
  `Item_price` FLOAT NULL,
  `Stocked_units` INT NULL,
  PRIMARY KEY (`Item_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loyalto`.`Supplier`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `loyalto`.`Supplier` ;

CREATE TABLE IF NOT EXISTS `loyalto`.`Supplier` (
  `Supplier_id` INT NOT NULL,
  `SupplierName` VARCHAR(45) NULL,
  PRIMARY KEY (`Supplier_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loyalto`.`Supplier_invoice`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `loyalto`.`Supplier_invoice` ;

CREATE TABLE IF NOT EXISTS `loyalto`.`Supplier_invoice` (
  `Item_cost` FLOAT NULL,
  `Order_date` DATETIME NULL,
  `Delivery_date` DATETIME NULL,
  `Item_quantity` INT NULL,
  `Item_id` INT NOT NULL,
  `Supplier_id` INT NOT NULL,
  PRIMARY KEY (`Item_id`, `Supplier_id`),
  INDEX `fk_Supplier_Items1_idx` (`Item_id` ASC),
  INDEX `fk_Supplier_invoice_Supplier1_idx` (`Supplier_id` ASC),
  CONSTRAINT `fk_Supplier_Items1`
    FOREIGN KEY (`Item_id`)
    REFERENCES `loyalto`.`Items` (`Item_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Supplier_invoice_Supplier1`
    FOREIGN KEY (`Supplier_id`)
    REFERENCES `loyalto`.`Supplier` (`Supplier_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loyalto`.`Order_Detail`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `loyalto`.`Order_Detail` ;

CREATE TABLE IF NOT EXISTS `loyalto`.`Order_Detail` (
  `Item_count` FLOAT NULL,
  `Order_id` INT NOT NULL,
  `Item_id` INT NOT NULL,
  INDEX `fk_Order_id_Order1_idx` (`Order_id` ASC),
  INDEX `fk_Order_id_Items1_idx` (`Item_id` ASC),
  CONSTRAINT `fk_Order_id_Order1`
    FOREIGN KEY (`Order_id`)
    REFERENCES `loyalto`.`Order` (`Order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_id_Items1`
    FOREIGN KEY (`Item_id`)
    REFERENCES `loyalto`.`Items` (`Item_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `loyalto`.`food_rating`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `loyalto`.`food_rating` ;

CREATE TABLE IF NOT EXISTS `loyalto`.`food_rating` (
  `food_rating` FLOAT NULL,
  `Review_reviewid` INT NOT NULL,
  `Item_id` INT NOT NULL,
  INDEX `fk_foodrating_Review1_idx` (`Review_reviewid` ASC),
  INDEX `fk_foodrating_Items1_idx` (`Item_id` ASC),
  CONSTRAINT `fk_foodrating_Review1`
    FOREIGN KEY (`Review_reviewid`)
    REFERENCES `loyalto`.`Review` (`reviewid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_foodrating_Items1`
    FOREIGN KEY (`Item_id`)
    REFERENCES `loyalto`.`Items` (`Item_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
