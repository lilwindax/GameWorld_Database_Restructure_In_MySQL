/*
//
// Bachelor of Software Engineering (Artificial Intelligence)
// Media Design School
// Auckland
// New Zealand
//
// (c) 2021 Media Design School
//
// File Name : Task 3 - Query 8
// Description : Databasing Project (MySQL) 
// Author : Rawinder Singh
// Mail : rawinder.singh@mds.ac.nz
//
*/


/* ----------- Query Eight ------------ */ 

ALTER TABLE gameworlddb.nnpctable MODIFY COLUMN GGender char(24);

SELECT FFirstName, LLastName,  
CASE when GGender = 'M' then 'Male' when GGender = 'F' then 'Female' end
FROM gameworlddb.nnpctable;