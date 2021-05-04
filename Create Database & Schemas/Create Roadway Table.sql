/*Create Roadway Table*/
CREATE TABLE IF NOT EXISTS roadway (
	crn INTEGER
	, 	rdwy_seq_num INTEGER
	, 	adj_rdwy_seq INTEGER
	, 	county INTEGER
	, 	route INTEGER
	, 	segment INTEGER
	, 	"offset" INTEGER
	, 	rdwy_orient TEXT
	, 	lane_count INTEGER
	, 	speed_limit INTEGER
	, 	street_name TEXT
	, 	road_owner INTEGER
	,	access_ctrl INTEGER
	, 	year_county TEXT
)