/*Create Person Table*/
CREATE TABLE IF NOT EXISTS person (
	crn INTEGER
	, 	age INTEGER
	, 	airbag_pads INTEGER
	, 	airbag1 TEXT
	, 	airbag2 TEXT
	, 	airbag3 TEXT
	, 	airbag4 TEXT
	, 	cdl_lic_stat INTEGER
	, 	clothing_type INTEGER
	, 	dvr_lic_state TEXT
	, 	dvr_ped_condition INTEGER
	, 	ejection_ind INTEGER
	, 	eject_path_cd INTEGER
	,	extric_ind INTEGER
	, 	inj_severity INTEGER
	, 	ped_location INTEGER
	, 	ped_signal INTEGER
	, 	person_num INTEGER
	, 	person_type INTEGER
	, 	restraint_helmet INTEGER
	, 	seat_position INTEGER
	, 	sex TEXT
	, 	transported TEXT
	, 	unit_num INTEGER
	, 	drug_result1 TEXT
	, 	drug_result2 TEXT
	, 	drug_result3 TEXT
	, 	drug_result4 TEXT
	, 	year_county TEXT
	, 	crash_year TEXT
	, 	county TEXT
)