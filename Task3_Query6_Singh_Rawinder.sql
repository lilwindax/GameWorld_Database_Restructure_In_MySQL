/*
//
// Bachelor of Software Engineering (Artificial Intelligence)
// Media Design School
// Auckland
// New Zealand
//
// (c) 2021 Media Design School
//
// File Name : Task 3 - Query 6
// Description : Databasing Project (MySQL) 
// Author : Rawinder Singh
// Mail : rawinder.singh@mds.ac.nz
//
*/


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