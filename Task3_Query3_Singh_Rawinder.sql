/*
//
// Bachelor of Software Engineering (Artificial Intelligence)
// Media Design School
// Auckland
// New Zealand
//
// (c) 2021 Media Design School
//
// File Name : Task 3 - Query 3
// Description : Databasing Project (MySQL) 
// Author : Rawinder Singh
// Mail : rawinder.singh@mds.ac.nz
//
*/


/* ------------ Query Three --------------- */
/* ------------ Show all members of ROG in ASC Order --------------- */

SELECT FirstName, LastName, Gender, FactionCode FROM gameworlddb.npctable
WHERE FactionCode = 'ROG'
ORDER BY FactionCode ASC;