/*
//
// Bachelor of Software Engineering (Artificial Intelligence)
// Media Design School
// Auckland
// New Zealand
//
// (c) 2021 Media Design School
//
// File Name : Task 3 - Query 2
// Description : Databasing Project (MySQL) 
// Author : Rawinder Singh
// Mail : rawinder.singh@mds.ac.nz
//
*/


/* ------------ Query Two --------------- */
/* ------------ Show all females --------------- */

SELECT FFirstName, LLastName FROM gameworlddb.nnpctable
WHERE GGender = 'F';