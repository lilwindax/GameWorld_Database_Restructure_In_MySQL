/*
//
// Bachelor of Software Engineering (Artificial Intelligence)
// Media Design School
// Auckland
// New Zealand
//
// (c) 2021 Media Design School
//
// File Name : Task 3 - Query 5
// Description : Databasing Project (MySQL) 
// Author : Rawinder Singh
// Mail : rawinder.singh@mds.ac.nz
//
*/


/* ------------ Query Five --------------- */
/* ------------ Show all Quests by Warriors United in Large City --------------- */

SELECT QuestName, FirstName FROM gameworlddb.qquesttable 
WHERE FFactionCode = 'WAR' and LLocationName = 'Warriors HQ' or LLocationName = 'Arena Pits' or LLocationName = 'Poor Quarter' or 'Arcane Capital'; 