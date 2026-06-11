#include "hls_design_meta.h"
const Port_Property HLS_Design_Meta::port_props[]={
	Port_Property("ap_clk", 1, hls_in, -1, "", "", 1),
	Port_Property("ap_rst_n", 1, hls_in, -1, "", "", 1),
	Port_Property("adc_in_TDATA", 8, hls_in, 0, "axis", "in_data", 1),
	Port_Property("adc_in_TVALID", 1, hls_in, 0, "axis", "in_vld", 1),
	Port_Property("adc_in_TREADY", 1, hls_out, 0, "axis", "in_acc", 1),
	Port_Property("out_stream_TDATA", 32, hls_out, 1, "axis", "out_data", 1),
	Port_Property("out_stream_TVALID", 1, hls_out, 4, "axis", "out_vld", 1),
	Port_Property("out_stream_TREADY", 1, hls_in, 4, "axis", "out_acc", 1),
	Port_Property("out_stream_TKEEP", 4, hls_out, 2, "axis", "out_data", 1),
	Port_Property("out_stream_TSTRB", 4, hls_out, 3, "axis", "out_data", 1),
	Port_Property("out_stream_TLAST", 1, hls_out, 4, "axis", "out_data", 1),
	Port_Property("epoch", 6, hls_in, 5, "ap_none", "in_data", 1),
	Port_Property("station_id", 16, hls_in, 6, "ap_none", "in_data", 1),
	Port_Property("thread_id", 10, hls_in, 7, "ap_none", "in_data", 1),
	Port_Property("bits_per_sample", 5, hls_in, 8, "ap_none", "in_data", 1),
	Port_Property("complex_data", 1, hls_in, 9, "ap_none", "in_data", 1),
	Port_Property("pps", 1, hls_in, 10, "ap_none", "in_data", 1),
	Port_Property("payload_words", 16, hls_in, 11, "ap_none", "in_data", 1),
};
const char* HLS_Design_Meta::dut_name = "vdif_chain";
