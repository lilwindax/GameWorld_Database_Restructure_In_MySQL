/*
//
// Bachelor of Software Engineering (Artificial Intelligence)
// Media Design School
// Auckland
// New Zealand
//
// (c) 2021 Media Design School
//
// File Name : Assessment3_All_Tasks_In_One_File
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
  
INSERT INTO gameworlddb.skilltable (SkillName, SkillType)

VALUES 
('Hamstring', 'Melee'), 
('Water Torrent', 'Magic'),
('Fireball', 'Magic'),
('Heart Strike', 'Melee'),
('Cleave', 'Melee'),
('Lunging Stike', 'Melee'),
('Overpower', 'Melee'),
('Backstab', 'Melee'),
('Steal', 'Non Lethal'),
( 'Eye Gouge', 'Melee'),
( 'Sap', 'Non Lethal'),
( 'Wounding Strike', 'Melee'),
( 'Thunder Bolt', 'Magic'),
( 'Arcane Strom', 'Magic');


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
    
INSERT INTO gameworlddb.factiontable (FactionCode, FactionName, FactionMotto, SkillName)

VALUES 
('MAG', 'School of Magicians', 'Always a spell for the job', null), 
('WAR', 'Warriors United', 'Ready for war!', null), 
('ROG', 'Rogues Guild', 'Never get caught', null); 


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
    
INSERT INTO gameworlddb.npctable (NpcID, FirstName, LastName, Gender, FactionCode)

VALUES 
(1, 'Adelina', 'Dragonscream', 'F', 'MAG'), 
(2, 'Adelina', 'Dragonscream', 'F', 'WAR'), 
(3, 'Agaell', 'Clavira', 'F', 'MAG'), 
(4, 'Alicia', 'Stormmane', 'F', 'WAR'), 
(5, 'Cara', 'the Menace', 'F', 'ROG'), 
(6, 'Cara', 'the Menace', 'F', 'WAR'), 
(7, 'Davis', 'Smokes', 'M', 'ROG'), 
(8, 'Donavan', 'One Eye', 'M', 'ROG'), 
(9, 'Emelyne', 'Brightgrip', 'F', 'WAR'), 
(10, 'Mya', 'the Snake', 'F', 'ROG'), 
(11, 'Namari', 'Anakey', 'F', 'MAG'), 
(12, 'Paule', 'Frostfang', 'M', 'ROG'), 
(13, 'Paule', 'Frostfang', 'M', 'WAR'), 
(14, 'Pikipius', 'Tepewrick', 'M', 'MAG'), 
(15, 'Pikipius', 'Tepewrick', 'M', 'WAR'), 
(16, 'Podel', 'Nabin', 'M', 'MAG'), 
(17, 'Podel', 'Nabin', 'M', 'ROG'), 
(18, 'Radalf', 'Paxium', 'M', 'MAG'), 
(19, 'Radalf', 'Paxium', 'M', 'ROG'), 
(20, 'Reeve', 'Darktalon', 'M', 'WAR'), 
(21, 'Reeve', 'Darktalon', 'M', 'MAG'), 
(22, 'Scarlet', 'Grimm', 'F', 'WAR'),
(23, 'Scarlet', 'Grimm', 'F', 'ROG'),
(24, 'Scarlet', 'Grimm', 'F', 'MAG');


CREATE TABLE `gameworlddb`.`regiontable` (
  `RegionID` INT NOT NULL,
  `RegionCode` VARCHAR(45) NULL,
  `RegionName` VARCHAR(45) NULL,
  `RegionType` VARCHAR(45) NULL,
  PRIMARY KEY (`RegionID`));
  
INSERT INTO gameworlddb.regiontable (RegionID, RegionCode, RegionName, RegionType)

VALUES 
(1, 'ARC', 'Arcanum', 'Large Scale City'), 
(2, 'HER', 'Herodi', 'Magic Demiplane');


CREATE TABLE `gameworlddb`.`locationtable` (
  `LocationName` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`LocationName`));

INSERT INTO gameworlddb.locationtable (LocationName)

VALUES 
('Warriors HQ'), 
('The Void'),
('Arena Pits'),
('Poor Quarter'),
('Herod Starscape'),
('Arcane Capital');


CREATE TABLE `gameworlddb`.`nnpctable` (
  `FFirstName` VARCHAR(45) NOT NULL,
  `LLastName` VARCHAR(45) NULL,
  `GGender` VARCHAR(45) NULL,
  PRIMARY KEY (`FFirstName`));
  
INSERT INTO gameworlddb.nnpctable (FFirstName, LLastName, GGender)

VALUES 
('Adelina', 'Dragonscream', 'F'), 
('Agaell', 'Clavira', 'F'), 
('Alicia', 'Stormmane', 'F'), 
('Cara', 'the Menace', 'F'), 
('Davis', 'Smokes', 'M'), 
('Donavan', 'One Eye', 'M'), 
('Emelyne', 'Brightgrip', 'F'), 
('Mya', 'the Snake', 'F'), 
('Namari', 'Anakey', 'F'), 
('Paule', 'Frostfang', 'M'), 
('Pikipius', 'Tepewrick', 'M'), 
('Podel', 'Nabin', 'M'), 
('Radalf', 'Paxium', 'M'), 
('Reeve', 'Darktalon', 'M'), 
('Scarlet', 'Grimm', 'F');


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

INSERT INTO gameworlddB.qquesttable (QuestID, QuestName, FirstName, LLocationName, FFactionCode)

VALUES 
(1, 'Kill the dragon load: Aegeras', 'Adelina', 'Warriors HQ', 'MAG'),
(2, 'Kill the dragon load: Aegeras', 'Adelina', 'Warriors HQ', 'WAR'),
(3, 'Clear the training ', 'Agaell', 'The Void', 'MAG'),
(4, 'Capture a storm giant', 'Alicia', 'Arena Pits', 'WAR'),
(5, 'Track Golden Dagger Jim and steal his dagger', 'Donavan', 'Poor Quarter', 'ROG'),
(6, 'Retrieve the heart gem', 'Donavan', 'Poor Quarter', 'ROG'),
(7, 'Craft me a steel rapier', 'Emelyn', 'Arena Pits', 'WAR'),
(8, 'Bring me a basilisk scale', 'Namari', 'Arena Pits', 'MAG'),
(9, 'Find the hunting grounds of the frost wolves', 'Paule', 'Warriors HQ', 'WAR'),
(10, 'Find the hunting grounds of the frost wolves', 'Paule', 'Warriors HQ', 'ROG'),
(11, 'Research the blue crystal', 'Pikipius', 'Arcane Capital', 'WAR'),
(12, 'Research the blue crystal', 'Pikipius', 'Arcane Capital', 'MAG'),
(13, 'Research the red crystal', 'Pikipius', 'Arcane Capital', 'WAR'),
(14, 'Research the red crystal', 'Pikipius', 'Arcane Capital', 'MAG'),
(15, 'Research the green crystal', 'Pikipius', 'Arcane Capital', 'WAR'),
(16, 'Research the green crystal', 'Pikipius', 'Arcane Capital', 'MAG'),
(17, 'Research the yellow crystal', 'Pikipius', 'Arcane Capital', 'WAR'),
(18, 'Research the yellow crystal', 'Pikipius', 'Arcane Capital', 'MAG'),
(19, 'Train in the skill Fireball', 'Radalf', 'Arcane Capital', 'ROG'),
(20, 'Train in the skill Fireball', 'Radalf', 'Arcane Capital', 'MAG'),
(21, 'Locate the source of the disturbance', 'Radalf', 'Arcane Capital', 'ROG'),
(22, 'Locate the source of the disturbance', 'Radalf', 'Arcane Capital', 'MAG'),
(23, 'Prove yourself: Kill 19 darkwings', 'Reeve', 'The Void', 'WAR'),
(24, 'Defeat me in a duel', 'Scarlet', 'Arcane Capital', 'MAG'),
(25, 'Defeat me in a duel', 'Scarlet', 'Arcane Capital', 'ROG'),
(26, 'Defeat me in a duel', 'Scarlet', 'Arcane Capital', 'WAR');


/* ------------ Query One --------------- */
/* ------------ Show all skills --------------- */

SELECT SkillName, SkillType FROM gameworlddb.skilltable;

/* ------------ Query Two --------------- */
/* ------------ Show all females --------------- */

SELECT FFirstName, LLastName FROM gameworlddb.nnpctable
WHERE GGender = 'F';

/* ------------ Query Three --------------- */
/* ------------ Show all members of ROG in ASC Order --------------- */

SELECT FirstName, LastName, Gender, FactionCode FROM gameworlddb.npctable
WHERE FactionCode = 'ROG'
ORDER BY FactionCode ASC;

/* ------------ Query Four --------------- */
/* ------------ Show all Quests in Arcane Captial --------------- */

SELECT QuestName, FirstName FROM gameworlddb.qquesttable
WHERE LLocationName = 'Arcane Capital';

/* ------------ Query Five --------------- */
/* ------------ Show all Quests by Warriors United in Large City --------------- */

SELECT QuestName, FirstName FROM gameworlddb.qquesttable 
WHERE FFactionCode = 'WAR' and LLocationName = 'Warriors HQ' or LLocationName = 'Arena Pits' or LLocationName = 'Poor Quarter' or 'Arcane Capital'; 

/* ------------ Query Six --------------- */
/* ------------ Show all number of Quest in Each location --------------- */

SELECT QuestName, LLocationName, COUNT(QuestName) FROM gameworlddb.qquesttable 
WHERE LLocationName = 'Warriors HQ'; 

SELECT QuestName, LLocationName, COUNT(QuestName) FROM gameworlddb.qquesttable 
WHERE LLocationName = 'The Void';

SELECT QuestName, LLocationName, COUNT(QuestName) FROM gameworlddb.qquesttable 
WHERE LLocationName = 'Arena Pits';

SELECT QuestName, LLocationName, COUNT(QuestName) FROM gameworlddb.qquesttable 
WHERE LLocationName = 'Poor Quarter';

SELECT QuestName, LLocationName, COUNT(QuestName) FROM gameworlddb.qquesttable 
WHERE LLocationName = 'Herod Starscape';

SELECT QuestName, LLocationName, COUNT(QuestName) FROM gameworlddb.qquesttable 
WHERE LLocationName = 'Arcane Capital';

/* ------------ Query Seven --------------- */
/* ------------ Relationship - Favourite Skill --------------- */

ALTER TABLE gameworlddb.factiontable
ADD CONSTRAINT FavouriteSkill1 FOREIGN KEY (SkillName) 
references skilltable(SkillName);

ALTER TABLE gameworlddb.factiontable
RENAME COLUMN SkillName TO FavouriteSkill;

UPDATE gameworlddb.factiontable SET FavouriteSkill = 'Fireball' WHERE FactionCode = 'MAG';
UPDATE gameworlddb.factiontable SET FavouriteSkill = 'Steal' WHERE FactionCode = 'ROG';

SELECT * FROM gameworlddb.factiontable;

/* ----------- Query Eight ------------ */ 

ALTER TABLE gameworlddb.nnpctable MODIFY COLUMN GGender char(24);

SELECT FFirstName, LLastName,  
CASE when GGender = 'M' then 'Male' when GGender = 'F' then 'Female' end
FROM gameworlddb.nnpctable;

/* ------------------------------------------------------------------------------------ End of SQL File --------------------------------------------------------------------------------- */ 