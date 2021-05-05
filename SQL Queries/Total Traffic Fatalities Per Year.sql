/*Total Traffic Fatalities*/
SELECT 
	c.crash_year AS "Year"
    , SUM(c.fatal_count) AS "Total Fatalities"
FROM 
	crash c
GROUP BY c.crash_year


