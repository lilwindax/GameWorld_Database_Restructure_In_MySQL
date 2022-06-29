/*
//
// Bachelor of Software Engineering (Artificial Intelligence)
// Media Design School
// Auckland
// New Zealand
//
// (c) 2021 Media Design School
//
// File Name : Task 1 - Database creation 
// Description : Databasing Project (MySQL) 
// Author : Rawinder Singh
// Mail : rawinder.singh@mds.ac.nz
//
*/

CREATE DATABASE gameworlddb;
USE gameworlddb;


CREATE TABLE `gameworlddb`.`skilltable` (
  `SkillName` VARCHAR(45) NOT NULL,
  `SkillType` VARCHAR(45) NULL,
  PRIMARY KEY (`SkillName`));
  
  
CREATE TABLE `gameworlddb`.`factiontable` (
  `FactionCode` VARCHAR(45) NOT NULL,
  `FactionName` VARCHAR(45) NULL,
  `FactionMotto` VARCHAR(45) NULL,
  `SkillName` VARCHAR(45) NULL,
  PRIMARY KEY (`FactionCode`),
  INDEX `SkillName_idx` (`SkillName` ASC) VISIBLE,
  CONSTRAINT `SkillName`
    FOREIGN KEY (`SkillName`)
    REFERENCES `gameworlddb`.`skilltable` (`SkillName`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    
CREATE TABLE `gameworlddb`.`npctable` (
  `NpcID` INT NOT NULL,
  `FirstName` VARCHAR(45) NULL,
  `LastName` VARCHAR(45) NULL,
  `Gender` VARCHAR(45) NULL,
  `FactionCode` VARCHAR(45) NULL,
  PRIMARY KEY (`NpcID`),
  INDEX `FactionCode_idx` (`FactionCode` ASC) VISIBLE,
  CONSTRAINT `FactionCode`
    FOREIGN KEY (`FactionCode`)
    REFERENCES `gameworlddb`.`factiontable` (`FactionCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
    
CREATE TABLE `gameworlddb`.`regiontable` (
  `RegionID` INT NOT NULL,
  `RegionCode` VARCHAR(45) NULL,
  `RegionName` VARCHAR(45) NULL,
  `RegionType` VARCHAR(45) NULL,
  PRIMARY KEY (`RegionID`));
  
  
CREATE TABLE `gameworlddb`.`locationtable` (
  `LocationName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`LocationName`));
  
  
CREATE TABLE `gameworlddb`.`nnpctable` (
  `FFirstName` VARCHAR(45) NOT NULL,
  `LLastName` VARCHAR(45) NULL,
  `GGender` VARCHAR(45) NULL,
  PRIMARY KEY (`FFirstName`));
  
  
CREATE TABLE `gameworlddb`.`qquesttable` (
  `QuestID` INT NOT NULL,
  `QuestName` VARCHAR(45) NULL,
  `FirstName` VARCHAR(45) NULL,
  `LLocationName` VARCHAR(45) NULL,
  `FFactionCode` VARCHAR(45) NULL,
  PRIMARY KEY (`QuestID`),
  INDEX `LLocationName_idx` (`LLocationName` ASC) VISIBLE,
  INDEX `FFactionCode_idx` (`FFactionCode` ASC) VISIBLE,
  CONSTRAINT `LocationName`
    FOREIGN KEY (`LLocationName`)
    REFERENCES `gameworlddb`.`locationtable` (`LocationName`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FFactionCode`
    FOREIGN KEY (`FFactionCode`)
    REFERENCES `gameworlddb`.`factiontable` (`FactionCode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
