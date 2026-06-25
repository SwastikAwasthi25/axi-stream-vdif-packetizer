set moduleName axis_bram_writer
set isTopModule 0
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
set cdfgNum 24
set C_modelName {axis_bram_writer}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ bram_stream int 32 regular {fifo 0 volatile }  }
	{ payload_words_0_0_0 int 16 regular {fifo 0}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "bram_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "payload_words_0_0_0", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 17
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ bram_stream_dout sc_in sc_lv 32 signal 0 } 
	{ bram_stream_empty_n sc_in sc_logic 1 signal 0 } 
	{ bram_stream_read sc_out sc_logic 1 signal 0 } 
	{ bram_stream_num_data_valid sc_in sc_lv 12 signal 0 } 
	{ bram_stream_fifo_cap sc_in sc_lv 12 signal 0 } 
	{ payload_words_0_0_0_dout sc_in sc_lv 16 signal 1 } 
	{ payload_words_0_0_0_empty_n sc_in sc_logic 1 signal 1 } 
	{ payload_words_0_0_0_read sc_out sc_logic 1 signal 1 } 
	{ payload_words_0_0_0_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ payload_words_0_0_0_fifo_cap sc_in sc_lv 3 signal 1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "bram_stream_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bram_stream", "role": "dout" }} , 
 	{ "name": "bram_stream_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bram_stream", "role": "empty_n" }} , 
 	{ "name": "bram_stream_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bram_stream", "role": "read" }} , 
 	{ "name": "bram_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bram_stream", "role": "num_data_valid" }} , 
 	{ "name": "bram_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bram_stream", "role": "fifo_cap" }} , 
 	{ "name": "payload_words_0_0_0_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "payload_words_0_0_0", "role": "dout" }} , 
 	{ "name": "payload_words_0_0_0_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words_0_0_0", "role": "empty_n" }} , 
 	{ "name": "payload_words_0_0_0_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words_0_0_0", "role": "read" }} , 
 	{ "name": "payload_words_0_0_0_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "payload_words_0_0_0", "role": "num_data_valid" }} , 
 	{ "name": "payload_words_0_0_0_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "payload_words_0_0_0", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	axis_bram_writer {
		bram_stream {Type I LastRead 1 FirstWrite -1}
		payload_words_0_0_0 {Type I LastRead 0 FirstWrite -1}}
	axis_bram_writer_Pipeline_VITIS_LOOP_15_1 {
		payload_words {Type I LastRead 0 FirstWrite -1}
		bram_stream {Type I LastRead 1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "4", "Max" : "65539"}
	, {"Name" : "Interval", "Min" : "4", "Max" : "65539"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	bram_stream { ap_fifo {  { bram_stream_dout fifo_data_out 0 32 }  { bram_stream_empty_n fifo_status_empty 0 1 }  { bram_stream_read fifo_data_in 1 1 }  { bram_stream_num_data_valid fifo_update 0 12 }  { bram_stream_fifo_cap fifo_data 0 12 } } }
	payload_words_0_0_0 { ap_fifo {  { payload_words_0_0_0_dout fifo_data_out 0 16 }  { payload_words_0_0_0_empty_n fifo_status_empty 0 1 }  { payload_words_0_0_0_read fifo_data_in 1 1 }  { payload_words_0_0_0_num_data_valid fifo_update 0 3 }  { payload_words_0_0_0_fifo_cap fifo_data 0 3 } } }
}
