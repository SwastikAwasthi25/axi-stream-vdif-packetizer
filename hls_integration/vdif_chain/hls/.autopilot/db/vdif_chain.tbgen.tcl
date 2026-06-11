set moduleName vdif_chain
set isTopModule 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_none
set restart_counter_num 0
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 9
set C_modelName {vdif_chain}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ adc_in int 8 regular {axi_s 0 volatile  { adc_in Data } }  }
	{ out_stream_V_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 4 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 4 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ epoch int 6 regular  }
	{ station_id int 16 regular  }
	{ thread_id int 10 regular  }
	{ bits_per_sample int 5 regular  }
	{ complex_data int 1 regular  }
	{ pps int 1 regular  }
	{ payload_words int 16 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "adc_in", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "epoch", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "station_id", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "thread_id", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "bits_per_sample", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "complex_data", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pps", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "payload_words", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ adc_in_TDATA sc_in sc_lv 8 signal 0 } 
	{ adc_in_TVALID sc_in sc_logic 1 invld 0 } 
	{ adc_in_TREADY sc_out sc_logic 1 inacc 0 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 1 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 4 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 4 } 
	{ out_stream_TKEEP sc_out sc_lv 4 signal 2 } 
	{ out_stream_TSTRB sc_out sc_lv 4 signal 3 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 4 } 
	{ epoch sc_in sc_lv 6 signal 5 } 
	{ station_id sc_in sc_lv 16 signal 6 } 
	{ thread_id sc_in sc_lv 10 signal 7 } 
	{ bits_per_sample sc_in sc_lv 5 signal 8 } 
	{ complex_data sc_in sc_lv 1 signal 9 } 
	{ pps sc_in sc_lv 1 signal 10 } 
	{ payload_words sc_in sc_lv 16 signal 11 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "adc_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adc_in", "role": "TDATA" }} , 
 	{ "name": "adc_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "adc_in", "role": "TVALID" }} , 
 	{ "name": "adc_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "adc_in", "role": "TREADY" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "epoch", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "epoch", "role": "default" }} , 
 	{ "name": "station_id", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "station_id", "role": "default" }} , 
 	{ "name": "thread_id", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "thread_id", "role": "default" }} , 
 	{ "name": "bits_per_sample", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "default" }} , 
 	{ "name": "complex_data", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data", "role": "default" }} , 
 	{ "name": "pps", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pps", "role": "default" }} , 
 	{ "name": "payload_words", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "payload_words", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	vdif_chain {
		adc_in {Type I LastRead 1 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 0}
		epoch {Type I LastRead 0 FirstWrite -1}
		station_id {Type I LastRead 0 FirstWrite -1}
		thread_id {Type I LastRead 0 FirstWrite -1}
		bits_per_sample {Type I LastRead 0 FirstWrite -1}
		complex_data {Type I LastRead 0 FirstWrite -1}
		pps {Type I LastRead 0 FirstWrite -1}
		payload_words {Type I LastRead 0 FirstWrite -1}
		seconds_from_epoch {Type IO LastRead -1 FirstWrite -1}
		frame_no {Type IO LastRead -1 FirstWrite -1}}
	vdif_chain_Pipeline_VITIS_LOOP_46_3 {
		adc_in {Type I LastRead 1 FirstWrite -1}
		word_4_out {Type O LastRead -1 FirstWrite 0}}
	vdif_chain_Pipeline_VITIS_LOOP_33_2 {
		adc_in {Type I LastRead 1 FirstWrite -1}
		word_2_out {Type O LastRead -1 FirstWrite 0}}
	vdif_chain_Pipeline_VITIS_LOOP_20_1 {
		adc_in {Type I LastRead 1 FirstWrite -1}
		word_out {Type O LastRead -1 FirstWrite 0}}
	packetizer {
		packetizer_in {Type I LastRead 1 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 0}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 0}
		epoch {Type I LastRead 0 FirstWrite -1}
		station_id {Type I LastRead 0 FirstWrite -1}
		thread_id {Type I LastRead 0 FirstWrite -1}
		bits_per_sample {Type I LastRead 0 FirstWrite -1}
		complex_data {Type I LastRead 0 FirstWrite -1}
		pps {Type I LastRead 0 FirstWrite -1}
		payload_words {Type I LastRead 0 FirstWrite -1}
		seconds_from_epoch {Type IO LastRead -1 FirstWrite -1}
		frame_no {Type IO LastRead -1 FirstWrite -1}}
	packetizer_Pipeline_VITIS_LOOP_194_1 {
		payload_words {Type I LastRead 0 FirstWrite -1}
		packetizer_in {Type I LastRead 1 FirstWrite -1}
		fifo {Type O LastRead -1 FirstWrite 1}}
	packetizer_Pipeline_VITIS_LOOP_253_2 {
		payload_words {Type I LastRead 0 FirstWrite -1}
		fifo {Type I LastRead 1 FirstWrite -1}
		add_ln259 {Type I LastRead 0 FirstWrite -1}
		out_stream_V_data_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_keep_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_strb_V {Type O LastRead -1 FirstWrite 1}
		out_stream_V_last_V {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "12", "Max" : "1572852"}
	, {"Name" : "Interval", "Min" : "13", "Max" : "1572853"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	adc_in { axis {  { adc_in_TDATA in_data 0 8 }  { adc_in_TVALID in_vld 0 1 }  { adc_in_TREADY in_acc 1 1 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 4 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 4 } } }
	out_stream_V_last_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 }  { out_stream_TLAST out_data 1 1 } } }
	epoch { ap_none {  { epoch in_data 0 6 } } }
	station_id { ap_none {  { station_id in_data 0 16 } } }
	thread_id { ap_none {  { thread_id in_data 0 10 } } }
	bits_per_sample { ap_none {  { bits_per_sample in_data 0 5 } } }
	complex_data { ap_none {  { complex_data in_data 0 1 } } }
	pps { ap_none {  { pps in_data 0 1 } } }
	payload_words { ap_none {  { payload_words in_data 0 16 } } }
}

set maxi_interface_dict [dict create]

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
