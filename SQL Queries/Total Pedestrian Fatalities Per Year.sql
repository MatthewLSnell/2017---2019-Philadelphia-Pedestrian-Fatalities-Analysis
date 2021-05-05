/*Total Pedestrian Fatalities*/
SELECT 
	c.crash_year AS "Year"
    , SUM(c.ped_death_count) AS "Total Pedestrian Fatalities"
FROM 
	crash c
	JOIN flag f ON c.crn = f.crn
WHERE f.pedestrian = 1 AND c.ped_death_count > 0 
GROUP BY c.crash_year


