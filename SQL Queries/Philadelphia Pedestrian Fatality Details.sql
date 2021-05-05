/*Philadelphia Pedestrian Fatalities Details*/
SELECT 
	c.crn AS "Crash Report Number"
    , c.hour_of_day AS "Hour of Day"
	, CASE WHEN (c.hour_of_day = 0) THEN '12:00AM'
        WHEN (c.hour_of_day = 1) THEN '1:00AM'
        WHEN (c.hour_of_day = 2) THEN '2:00AM'
        WHEN (c.hour_of_day = 3) THEN '3:00AM'
        WHEN (c.hour_of_day = 4) THEN '4:00AM'
        WHEN (c.hour_of_day = 5) THEN '5:00AM'
        WHEN (c.hour_of_day = 6) THEN '6:00AM'
        WHEN (c.hour_of_day = 7) THEN '7:00AM'
        WHEN (c.hour_of_day = 8) THEN '8:00AM'
        WHEN (c.hour_of_day = 9) THEN '9:00AM'
        WHEN (c.hour_of_day = 10) THEN '10:00AM'
        WHEN (c.hour_of_day = 11) THEN '11:00AM'
        WHEN (c.hour_of_day = 12) THEN '12:00PM'
        WHEN (c.hour_of_day = 13) THEN '1:00PM'
        WHEN (c.hour_of_day = 14) THEN '2:00PM'
        WHEN (c.hour_of_day = 15) THEN '3:00PM'
        WHEN (c.hour_of_day = 16) THEN '4:00PM'
        WHEN (c.hour_of_day = 17) THEN '5:00PM'
        WHEN (c.hour_of_day = 18) THEN '6:00PM'
        WHEN (c.hour_of_day = 19) THEN '7:00PM'
        WHEN (c.hour_of_day = 20) THEN '8:00PM'
        WHEN (c.hour_of_day = 21) THEN '9:00PM'
        WHEN (c.hour_of_day = 22) THEN '10:00PM'
        WHEN (c.hour_of_day = 23) THEN '11:00PM'
		END AS "Time of Day"
	, c.illumination AS Visibility
	, CASE WHEN (c.illumination = 1) THEN 'Daylight'
		WHEN (c.illumination = 2) THEN 'Dark - No Streets Lights'
		WHEN (c.illumination = 3) THEN 'Dark - Streets Lights'
		WHEN (c.illumination = 4) THEN 'Dusk'
		WHEN (c.illumination = 5) THEN 'Dawn'
		WHEN (c.illumination = 6) THEN 'Dark - Unknown Roadway Lighting'
		WHEN (c.illumination = 8) THEN 'Other'
		WHEN (c.illumination = 9) THEN 'Unknown (expired)'
		END AS "Visibility Name"
   	, r.street_name AS "Street Name"
    , r2.street_name AS "Adjacent Street Name"
    , c.dec_lat AS "Latitude"
    , c.dec_long AS "Longitude"
    , r.rdwy_seq_num AS "Street Name Code"
    , r2.rdwy_seq_num AS "Adjacent Street Name Code"
    , c.intersect_type AS "Intersection Type Code"
    , CASE WHEN (c.intersect_type = 0) THEN 'Midblock'
      	WHEN (c.intersect_type = 1) THEN 'Four Way Intersection'
        WHEN (c.intersect_type = 2) THEN 'T Intersection'
        WHEN (c.intersect_type = 5) THEN 'Multi Leg Intersection'
        WHEN (c.intersect_type = 7) THEN 'Off Ramp'
        END AS "Intersection Type"
	, SUM(c.ped_death_count) AS "Number of Pedestrian Fatalities"
FROM	crash c
		JOIN flag f ON c.crn = f.crn
    	LEFT JOIN ( 
		SELECT 
			DISTINCT r.crn
            			, r.street_name
            			, r.rdwy_seq_num
						, r.lane_count
           				FROM roadway r
          				WHERE r.rdwy_seq_num = 3) r ON f.crn = r.crn
    					LEFT JOIN ( 
						SELECT 
							DISTINCT r2.crn
            				, r2.street_name
            				, r2.rdwy_seq_num
          					FROM roadway r2
          					WHERE r2.rdwy_seq_num = 4) r2 ON r.crn = r2.crn
  							WHERE (f.pedestrian = 1) AND (c.fatal_count > 0) AND (r.rdwy_seq_num = 3) AND (c.hour_of_day <> 99)
  							GROUP BY c.crn, c.hour_of_day, r.street_name, r2.street_name, c.dec_lat, c.dec_long, r.rdwy_seq_num, r2.rdwy_seq_num, c.intersect_type, c.illumination;

