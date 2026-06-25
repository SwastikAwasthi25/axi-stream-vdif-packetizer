set moduleName packetizer
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type dataflow
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 24
set C_modelName {packetizer}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ packetizer_in int 32 regular {fifo 0 volatile }  }
	{ out_stream_V_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 4 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 4 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ epoch int 6 regular {fifo 0}  }
	{ station_id int 16 regular {fifo 0}  }
	{ thread_id int 10 regular {fifo 0}  }
	{ bits_per_sample int 5 regular {fifo 0}  }
	{ complex_data int 1 regular {fifo 0}  }
	{ pps int 1 regular {fifo 0}  }
	{ payload_words int 16 regular {fifo 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "packetizer_in", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "epoch", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "station_id", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "thread_id", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "bits_per_sample", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "complex_data", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pps", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "payload_words", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 37
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ packetizer_in_dout sc_in sc_lv 32 signal 0 } 
	{ packetizer_in_empty_n sc_in sc_logic 1 signal 0 } 
	{ packetizer_in_read sc_out sc_logic 1 signal 0 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 1 } 
	{ out_stream_TKEEP sc_out sc_lv 4 signal 2 } 
	{ out_stream_TSTRB sc_out sc_lv 4 signal 3 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 4 } 
	{ epoch_dout sc_in sc_lv 6 signal 5 } 
	{ epoch_empty_n sc_in sc_logic 1 signal 5 } 
	{ epoch_read sc_out sc_logic 1 signal 5 } 
	{ station_id_dout sc_in sc_lv 16 signal 6 } 
	{ station_id_empty_n sc_in sc_logic 1 signal 6 } 
	{ station_id_read sc_out sc_logic 1 signal 6 } 
	{ thread_id_dout sc_in sc_lv 10 signal 7 } 
	{ thread_id_empty_n sc_in sc_logic 1 signal 7 } 
	{ thread_id_read sc_out sc_logic 1 signal 7 } 
	{ bits_per_sample_dout sc_in sc_lv 5 signal 8 } 
	{ bits_per_sample_empty_n sc_in sc_logic 1 signal 8 } 
	{ bits_per_sample_read sc_out sc_logic 1 signal 8 } 
	{ complex_data_dout sc_in sc_lv 1 signal 9 } 
	{ complex_data_empty_n sc_in sc_logic 1 signal 9 } 
	{ complex_data_read sc_out sc_logic 1 signal 9 } 
	{ pps_dout sc_in sc_lv 1 signal 10 } 
	{ pps_empty_n sc_in sc_logic 1 signal 10 } 
	{ pps_read sc_out sc_logic 1 signal 10 } 
	{ payload_words_dout sc_in sc_lv 16 signal 11 } 
	{ payload_words_empty_n sc_in sc_logic 1 signal 11 } 
	{ payload_words_read sc_out sc_logic 1 signal 11 } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 4 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 4 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "packetizer_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "packetizer_in", "role": "dout" }} , 
 	{ "name": "packetizer_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packetizer_in", "role": "empty_n" }} , 
 	{ "name": "packetizer_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packetizer_in", "role": "read" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "epoch_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "epoch", "role": "dout" }} , 
 	{ "name": "epoch_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "epoch", "role": "empty_n" }} , 
 	{ "name": "epoch_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "epoch", "role": "read" }} , 
 	{ "name": "station_id_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "station_id", "role": "dout" }} , 
 	{ "name": "station_id_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "station_id", "role": "empty_n" }} , 
 	{ "name": "station_id_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "station_id", "role": "read" }} , 
 	{ "name": "thread_id_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "thread_id", "role": "dout" }} , 
 	{ "name": "thread_id_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thread_id", "role": "empty_n" }} , 
 	{ "name": "thread_id_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thread_id", "role": "read" }} , 
 	{ "name": "bits_per_sample_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "dout" }} , 
 	{ "name": "bits_per_sample_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "empty_n" }} , 
 	{ "name": "bits_per_sample_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "read" }} , 
 	{ "name": "complex_data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data", "role": "dout" }} , 
 	{ "name": "complex_data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data", "role": "empty_n" }} , 
 	{ "name": "complex_data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data", "role": "read" }} , 
 	{ "name": "pps_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pps", "role": "dout" }} , 
 	{ "name": "pps_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pps", "role": "empty_n" }} , 
 	{ "name": "pps_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pps", "role": "read" }} , 
 	{ "name": "payload_words_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "payload_words", "role": "dout" }} , 
 	{ "name": "payload_words_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words", "role": "empty_n" }} , 
 	{ "name": "payload_words_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words", "role": "read" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	packetizer {
		packetizer_in {Type I LastRead 1 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		epoch {Type I LastRead 0 FirstWrite -1}
		station_id {Type I LastRead 0 FirstWrite -1}
		thread_id {Type I LastRead 0 FirstWrite -1}
		bits_per_sample {Type I LastRead 0 FirstWrite -1}
		complex_data {Type I LastRead 0 FirstWrite -1}
		pps {Type I LastRead 0 FirstWrite -1}
		payload_words {Type I LastRead 0 FirstWrite -1}
		second_counter {Type IO LastRead -1 FirstWrite -1}
		frame_counter {Type IO LastRead -1 FirstWrite -1}
		fsm_state {Type IO LastRead -1 FirstWrite -1}}
	entry_proc {
		return_r {Type O LastRead -1 FirstWrite 0}
		epoch {Type I LastRead 0 FirstWrite -1}
		epoch_c {Type O LastRead -1 FirstWrite 0}
		station_id {Type I LastRead 0 FirstWrite -1}
		station_id_c {Type O LastRead -1 FirstWrite 0}
		thread_id {Type I LastRead 0 FirstWrite -1}
		thread_id_c {Type O LastRead -1 FirstWrite 0}
		bits_per_sample {Type I LastRead 0 FirstWrite -1}
		bits_per_sample_c {Type O LastRead -1 FirstWrite 0}
		complex_data {Type I LastRead 0 FirstWrite -1}
		complex_data_c {Type O LastRead -1 FirstWrite 0}
		payload_words {Type I LastRead 0 FirstWrite -1}
		payload_words_c1 {Type O LastRead -1 FirstWrite 0}}
	timestamp_engine {
		pps {Type I LastRead 0 FirstWrite -1}
		second_counter {Type IO LastRead -1 FirstWrite -1}
		frame_counter {Type IO LastRead -1 FirstWrite -1}}
	packetizer_Block_entry_fsm_state_fb_proc {
		fsm_state {Type IO LastRead -1 FirstWrite -1}}
	packet_fsm_1 {
		current_state {Type I LastRead 0 FirstWrite -1}}
	packet_fsm_2 {
		current_state {Type I LastRead 0 FirstWrite -1}}
	packet_fsm {
		current_state {Type I LastRead 0 FirstWrite -1}}
	header_generator {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		epoch {Type I LastRead 0 FirstWrite -1}
		station_id {Type I LastRead 0 FirstWrite -1}
		thread_id {Type I LastRead 0 FirstWrite -1}
		bits_per_sample {Type I LastRead 0 FirstWrite -1}
		complex_data {Type I LastRead 0 FirstWrite -1}
		payload_words {Type I LastRead 0 FirstWrite -1}
		header {Type O LastRead -1 FirstWrite 0}}
	read_payload {
		packetizer_in {Type I LastRead 1 FirstWrite -1}
		fifo {Type O LastRead -1 FirstWrite 1}
		payload_words {Type I LastRead 0 FirstWrite -1}}
	packetizer_Block_entry_out_stream_V_data_V_wr_proc {
		header {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		fifo {Type I LastRead 1 FirstWrite -1}
		p_read {Type I LastRead 1 FirstWrite -1}}
	write_header {
		header {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}}
	write_payload {
		fifo {Type I LastRead 1 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}
		payload_words {Type I LastRead 0 FirstWrite -1}}
	write_payload_Pipeline_VITIS_LOOP_16_1 {
		payload_words {Type I LastRead 0 FirstWrite -1}
		fifo {Type I LastRead 1 FirstWrite -1}
		add_ln22 {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1027", "Max" : "65558"}
	, {"Name" : "Interval", "Min" : "1025", "Max" : "65553"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	packetizer_in { ap_fifo {  { packetizer_in_dout fifo_data_out 0 32 }  { packetizer_in_empty_n fifo_status_empty 0 1 }  { packetizer_in_read fifo_data_in 1 1 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 4 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 4 } } }
	out_stream_V_last_V { axis {  { out_stream_TLAST out_data 1 1 }  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 } } }
	epoch { ap_fifo {  { epoch_dout fifo_data_out 0 6 }  { epoch_empty_n fifo_status_empty 0 1 }  { epoch_read fifo_data_in 1 1 } } }
	station_id { ap_fifo {  { station_id_dout fifo_data_out 0 16 }  { station_id_empty_n fifo_status_empty 0 1 }  { station_id_read fifo_data_in 1 1 } } }
	thread_id { ap_fifo {  { thread_id_dout fifo_data_out 0 10 }  { thread_id_empty_n fifo_status_empty 0 1 }  { thread_id_read fifo_data_in 1 1 } } }
	bits_per_sample { ap_fifo {  { bits_per_sample_dout fifo_data_out 0 5 }  { bits_per_sample_empty_n fifo_status_empty 0 1 }  { bits_per_sample_read fifo_data_in 1 1 } } }
	complex_data { ap_fifo {  { complex_data_dout fifo_data_out 0 1 }  { complex_data_empty_n fifo_status_empty 0 1 }  { complex_data_read fifo_data_in 1 1 } } }
	pps { ap_fifo {  { pps_dout fifo_data_out 0 1 }  { pps_empty_n fifo_status_empty 0 1 }  { pps_read fifo_data_in 1 1 } } }
	payload_words { ap_fifo {  { payload_words_dout fifo_data_out 0 16 }  { payload_words_empty_n fifo_status_empty 0 1 }  { payload_words_read fifo_data_in 1 1 } } }
}
