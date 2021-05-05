/*Reported Contributing Factors in Pedestrian Fatal Crashes*/
SELECT
	CASE
    	WHEN (f.aggressive_driving = 1) THEN 'Aggressive Driving'
        END AS "Contributing Factor"
    	, SUM(c.ped_death_count) AS "Number of Pedestrian Fatalities"
FROM 
	crash c
    JOIN flag f ON c.crn = f.crn
WHERE (f.aggressive_driving = 1)
GROUP BY f.aggressive_driving
UNION
SELECT
	CASE
    	WHEN (f.distracted = 1) THEN 'Distracted Driving'
        END AS "Contributing Factor"
    , SUM(c.ped_death_count) AS "Number of Pedestrian Fatalities"
FROM 
	crash c
    JOIN flag f ON c.crn = f.crn
WHERE (f.distracted = 1)
GROUP BY f.distracted
UNION 
SELECT
	CASE
    	WHEN (f.drinking_driver = 1) THEN 'Drinking Driver'
        END AS "Contributing Factor"
    , SUM(c.ped_death_count) AS "Number of Pedestrian Fatalities"
FROM 
	crash c
    JOIN flag f ON c.crn = f.crn
WHERE (f.drinking_driver = 1)
GROUP BY f.drinking_driver
UNION
SELECT
	CASE
    	WHEN (f.fatigue_asleep = 1) THEN 'Drowsy Driver'
        END AS "Contributing Factor"
    , SUM(c.ped_death_count) AS "Number of Pedestrian Fatalities"
FROM 
	crash c
    JOIN flag f ON c.crn = f.crn
WHERE (f.fatigue_asleep = 1)
GROUP BY f.fatigue_asleep
UNION
SELECT
	CASE
    	WHEN (f.drugged_driver = 1) THEN 'Drugged Driver'
        END AS "Contributing Factor"
    , SUM(c.ped_death_count) AS "Number of Pedestrian Fatalities"
FROM 
	crash c
    JOIN flag f ON c.crn = f.crn
WHERE (f.drugged_driver = 1)
GROUP BY f.drugged_driver
ORDER BY 2 DESC
 
 
 


