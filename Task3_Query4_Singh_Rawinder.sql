/*
//
// Bachelor of Software Engineering (Artificial Intelligence)
// Media Design School
// Auckland
// New Zealand
//
// (c) 2021 Media Design School
//
// File Name : Task 3 - Query 4
// Description : Databasing Project (MySQL) 
// Author : Rawinder Singh
// Mail : rawinder.singh@mds.ac.nz
//
*/


/* ------------ Query Four --------------- */
/* ------------ Show all Quests in Arcane Captial --------------- */

SELECT QuestName, FirstName FROM gameworlddb.qquesttable
WHERE LLocationName = 'Arcane Capital';