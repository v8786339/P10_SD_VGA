#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("src_axi0_TDATA", 24, hls_out, 0, "axis", "out_data", 1),
	Port_Property("src_axi0_TKEEP", 3, hls_out, 1, "axis", "out_data", 1),
	Port_Property("src_axi0_TSTRB", 3, hls_out, 2, "axis", "out_data", 1),
	Port_Property("src_axi0_TUSER", 1, hls_out, 3, "axis", "out_data", 1),
	Port_Property("src_axi0_TLAST", 1, hls_out, 4, "axis", "out_data", 1),
	Port_Property("src_axi0_TID", 1, hls_out, 5, "axis", "out_data", 1),
	Port_Property("src_axi0_TDEST", 1, hls_out, 6, "axis", "out_data", 1),
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_start", 1, hls_in, -1, "", "", 1),
	Port_Property("src_axi0_TVALID", 1, hls_out, 6, "axis", "out_vld", 1),
	Port_Property("src_axi0_TREADY", 1, hls_in, 6, "axis", "out_acc", 1),
	Port_Property("ap_done", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_ready", 1, hls_out, -1, "", "", 1),
	Port_Property("ap_idle", 1, hls_out, -1, "", "", 1),
};
const char* HLS_Design_Meta::dut_name = "test_pattern1";
