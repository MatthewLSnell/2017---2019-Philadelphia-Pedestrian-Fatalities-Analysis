WITH Deaths_By_Year_Zip AS (
SELECT
	crash_year AS "Year"
	, Zip AS "Zip Code"
	, COUNT(CRASH_REPORT_NUMBER) AS "Collisions"
	, SUM(injury_count) AS "Injuries"
	, SUM(fatal_count) AS "Deaths"
FROM
	crash
GROUP BY crash_year, Zip
ORDER BY crash_year, Zip ASC
	)
SELECT 
	*
	, ROUND(SUM("Deaths")::DECIMAL/SUM("Collisions") OVER (PARTITION BY "Year", "Zip Code")*1000, 2) AS "Deaths Per 1000 Collisions"
FROM Deaths_By_Year_Zip
GROUP BY "Year", "Zip Code", "Collisions", "Injuries", "Deaths"


