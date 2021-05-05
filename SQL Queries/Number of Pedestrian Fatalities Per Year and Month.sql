/*Number of Pedestrian Fatalities Per Year and Month*/
WITH CTE AS (
SELECT 
	c.crash_year AS "Year"
	, c.crash_month AS "Month"
	, CASE 
		WHEN c.crash_month = 1 THEN 'January'
		WHEN c.crash_month = 2 THEN 'February'
		WHEN c.crash_month = 3 THEN 'March'
		WHEN c.crash_month = 4 THEN 'April'
		WHEN c.crash_month = 5 THEN 'May'
		WHEN c.crash_month = 6 THEN 'June'
		WHEN c.crash_month = 7 THEN 'July'
		WHEN c.crash_month = 8 THEN 'August'
		WHEN c.crash_month = 9 THEN 'September'
		WHEN c.crash_month = 10 THEN 'October'
		WHEN c.crash_month = 11 THEN 'November'
		WHEN c.crash_month = 12 THEN 'December'
		END AS "Month Name"
	, SUM(c.fatal_count) AS "Number of Pedestrians Fatalities"
FROM 
	crash c
JOIN flag f ON c.crn = f.crn 
LEFT JOIN
	(SELECT 
	 	DISTINCT p.crn
		, p.person_type
	FROM person p
	WHERE p.person_type = 7) p
	ON f.crn = p.crn
WHERE f.pedestrian = 1 AND c.fatal_count > 0 AND p.person_type = 7
GROUP BY c.crash_year, c.crash_month
/* 	pedestrian 1 = pedestrian flag
	person_type 7 = pedestrian */)

SELECT 
	CTE.*
	, SUM("Number of Pedestrians Fatalities") OVER (PARTITION BY "Year") AS "Number of Pedestrians Fatalities Per Yr"
	, SUM("Number of Pedestrians Fatalities") OVER (PARTITION BY "Month") AS "Number of Pedestrians Fatalities Per Month"
FROM CTE
ORDER BY 1, 2
