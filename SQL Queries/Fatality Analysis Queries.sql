SELECT 
	crash_year AS "Year"
	, SUM(belted_death_count) AS "Motorists Deaths"
	, SUM(bicycle_death_count) AS "Bicycle Deaths"
	, SUM(mcycle_death_count) AS "Motorcycle Deaths"
	, SUM(ped_death_count) AS "Pedestrian Deaths"
FROM 
	crash
GROUP BY crash_year
ORDER BY crash_year ASC 