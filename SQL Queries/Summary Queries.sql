/*
Summary SQL Queries of Philadelphia's Reportable
Motor Vehicle Collision 2015 - 2020
*/

-- Total Number of Collisions, Injuries, Fatalities Per Year

SELECT 
	crash_year AS "Year"
	, SUM(CRASH_REPORT_NUMBER) AS "Collisions"
	, SUM(injury_count) AS "Injuries"
	, SUM(fatal_count) AS "Deaths"
FROM
	crash
GROUP BY crash_year
ORDER BY crash_year



-- Total Number of Reportable Collisions Per Year
SELECT 
	crash_year AS "Year"
	, SUM(CRASH_REPORT_NUMBER) AS "Collisions"
FROM
	crash
GROUP BY crash_year
ORDER BY crash_year

-- Total Number of Traffic Fatalities
SELECT 
	SUM(fatal_count) AS "Deaths"
FROM
	crash

-- Total Number of Injuries Per Year
SELECT 
	crash_year AS "Year"
	, SUM(injury_count) AS "Injuries"
FROM
	crash
GROUP BY crash_year
ORDER BY crash_year
	
-- Total Number of Reportable Collisions Per Year
SELECT 
	crash_year
	, SUM(CRASH_REPORT_NUMBER) AS "Collisions"
FROM
	crash
GROUP BY crash_year
ORDER BY crash_year

-- Total Number of Traffic Fatalities Per Year
SELECT 
	crash_year
	, SUM(fatal_count) AS "Deaths"
FROM
	crash
GROUP BY crash_year
ORDER BY crash_year

-- Average Number of Reportable Collisions Per Year
WITH Reportable_Coll_Per_YR AS (
SELECT 
	crash_year
	, SUM(CRASH_REPORT_NUMBER) AS "Collisions"
FROM
	crash
GROUP BY crash_year
ORDER BY crash_year
)
SELECT
 	ROUND(AVG("Collisions"),0) AS "Average Number of Collisions Per Year"
FROM 
	Reportable_Coll_Per_YR
	
-- Average Number of Traffic Fatalies Per Year
WITH Traffic_Deaths_Per_Year AS (
SELECT 
	crash_year
	, SUM(fatal_count) AS "Deaths"
FROM
	crash
GROUP BY crash_year
ORDER BY crash_year
)
SELECT
 	ROUND(AVG("Deaths"),0) AS "Average Number of Traffic Fatalities Per Year"
FROM 
	Traffic_Deaths_Per_Year

-- Average Number of Injuries Per Year
WITH Injuries_Per_Year AS (
SELECT 
	crash_year
	, SUM(injury_count) AS "Injuries"
FROM
	crash
GROUP BY crash_year
ORDER BY crash_year
)
SELECT
 	ROUND(AVG("Injuries"),0) AS "Average Number of Injuries Per Year"
FROM 
	Injuries_Per_Year
	
	
-- Total Number of Deaths by Year & Collision Type
SELECT 
	crash_year
	, CASE 
		WHEN collision_type = 0 THEN 'Non-collision'
		WHEN collision_type = 1 THEN 'Rear-end'
		WHEN collision_type = 2 THEN 'Head-on'
		WHEN collision_type = 3 THEN 'Rear-to-rear (backing)'
		WHEN collision_type = 4 THEN 'Angle'
		WHEN collision_type = 5 THEN 'Sideswipe (same dir.)'
		WHEN collision_type = 6 THEN 'Sideswipe (opposite dir.)'
		WHEN collision_type = 7 THEN 'Hit fixed object'
		WHEN collision_type = 8 THEN 'Hit pedestrian'
		WHEN collision_type = 9 THEN 'Other or Unknown'
		END AS "Collision Type"
	, SUM(fatal_count) AS "Deaths"
	, RANK() OVER (PARTITION BY crash_year ORDER BY SUM(fatal_count) DESC) AS "Rank"
FROM
	crash
WHERE collision_type NOT IN (98, 99)
GROUP BY crash_year, collision_type
ORDER BY crash_year, "Rank"


