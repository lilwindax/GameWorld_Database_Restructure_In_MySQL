/*
//
// Bachelor of Software Engineering (Artificial Intelligence)
// Media Design School
// Auckland
// New Zealand
//
// (c) 2021 Media Design School
//
// File Name : Task 3 - Query 7
// Description : Databasing Project (MySQL) 
// Author : Rawinder Singh
// Mail : rawinder.singh@mds.ac.nz
//
*/


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