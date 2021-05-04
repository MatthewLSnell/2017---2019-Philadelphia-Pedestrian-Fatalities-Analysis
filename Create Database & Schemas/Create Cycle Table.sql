/*Create Cycle Table */
CREATE TABLE IF NOT EXISTS cycle (
	crn INTEGER
	,	mc_bag_ind TEXT
	, 	mc_dvr_boots_ind TEXT
	, 	mc_dvr_edc_ind TEXT
	, 	mc_dvr_eyeprt_ind TEXT
	, 	mc_dvr_hlmtdot_ind TEXT
	, 	mc_dvr_hlmton_ind TEXT
	, 	mc_dvr_hlmt_type INTEGER
	, 	mc_dvr_lngpnts_ind TEXT
	, 	mc_dvr_lngslv_ind TEXT
	, 	mc_engine_size INTEGER
	, 	mc_passngr_ind TEXT
	, 	mc_pas_boots_ind TEXT
	, 	mc_pas_eyeprt_ind TEXT
	, 	mc_pas_hlmtdot_ind TEXT
	, 	mc_pas_hlmton_ind TEXT
	, 	mc_pas_hlmt_type INTEGER
	, 	mc_pas_lngpnts_ind TEXT
	, 	mc_pas_lngslv_ind TEXT
	, 	mc_trail_ind TEXT
	, 	pc_hdlght_ind TEXT
	, 	pc_hlmt_ind TEXT
	, 	pc_passngr_ind TEXT
	, 	pc_rear_rfltr_ind TEXT
	, 	unit_num INTEGER
	, 	year_county TEXT
	, 	county TEXT
)