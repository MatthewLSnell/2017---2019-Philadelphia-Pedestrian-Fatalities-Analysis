/*
Time Series SQL Queries of Philadelphia's Reportable
Motor Vehicle Collision 2015 - 2020
*/

-- Reportable Collisions By Time of Day
SELECT
	crash_year AS "Year"
	, hour_of_day AS "Time of Day"
	, SUM(CRASH_REPORT_NUMBER) AS "Collisions"
	, SUM(fatal_count) AS "Deaths"
FROM crash
WHERE hour_of_day != 99
GROUP BY crash_year, hour_of_day
ORDER BY crash_year, hour_of_day


-- Reportable Collisions and Deaths By Day of Week
SELECT
	crash_year AS "Year"
	, CASE 
		WHEN day_of_week = 1 THEN 'Sun'
		WHEN day_of_week = 2 THEN 'Mon'
		WHEN day_of_week = 3 THEN 'Tue'
		WHEN day_of_week = 4 THEN 'Wed'
		WHEN day_of_week = 5 THEN 'Thu'
		WHEN day_of_week = 6 THEN 'Fri'
		WHEN day_of_week = 7 THEN 'Sat'
	END AS "Day of the Week"
	, SUM(CRASH_REPORT_NUMBER) AS "Collisions"
	, SUM(fatal_count) AS "Deaths"
FROM crash
GROUP BY crash_year, day_of_week
ORDER BY crash_year, day_of_week


-- Reportable Collisions and Deaths By Month
SELECT 
	crash_year AS "Year"
	, CASE 
		WHEN crash_month = 1 THEN 'Jan'
		WHEN crash_month = 2 THEN 'Feb'
		WHEN crash_month = 3 THEN 'Mar'
		WHEN crash_month = 4 THEN 'Apr'
		WHEN crash_month = 5 THEN 'May'
		WHEN crash_month = 6 THEN 'Jun'
		WHEN crash_month = 7 THEN 'Jul'
		WHEN crash_month = 8 THEN 'Aug'
		WHEN crash_month = 9 THEN 'Sept'
		WHEN crash_month = 10 THEN 'Oct'
		WHEN crash_month = 11 THEN 'Nov'
		WHEN crash_month = 12 THEN 'Dec'
	END AS "Month"
	, SUM(CRASH_REPORT_NUMBER) AS "Collisions"
	, SUM(fatal_count) AS "Deaths"
FROM crash
GROUP BY crash_year, crash_month
ORDER BY crash_year, crash_month