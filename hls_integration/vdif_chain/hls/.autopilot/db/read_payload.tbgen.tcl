set moduleName read_payload
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set isPipelined_legacy 1
set pipeline_type loop_auto_rewind
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
set C_modelName {read_payload}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ packetizer_in int 32 regular {fifo 0 volatile }  }
	{ fifo int 32 regular {fifo 1 volatile }  }
	{ payload_words int 16 regular {pointer 0 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "packetizer_in", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "payload_words", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 18
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ packetizer_in_dout sc_in sc_lv 32 signal 0 } 
	{ packetizer_in_empty_n sc_in sc_logic 1 signal 0 } 
	{ packetizer_in_read sc_out sc_logic 1 signal 0 } 
	{ packetizer_in_num_data_valid sc_in sc_lv 12 signal 0 } 
	{ packetizer_in_fifo_cap sc_in sc_lv 12 signal 0 } 
	{ fifo_din sc_out sc_lv 32 signal 1 } 
	{ fifo_full_n sc_in sc_logic 1 signal 1 } 
	{ fifo_write sc_out sc_logic 1 signal 1 } 
	{ fifo_num_data_valid sc_in sc_lv 32 signal 1 } 
	{ fifo_fifo_cap sc_in sc_lv 32 signal 1 } 
	{ payload_words sc_in sc_lv 16 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "packetizer_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "packetizer_in", "role": "dout" }} , 
 	{ "name": "packetizer_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packetizer_in", "role": "empty_n" }} , 
 	{ "name": "packetizer_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packetizer_in", "role": "read" }} , 
 	{ "name": "packetizer_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "packetizer_in", "role": "num_data_valid" }} , 
 	{ "name": "packetizer_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "packetizer_in", "role": "fifo_cap" }} , 
 	{ "name": "fifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo", "role": "din" }} , 
 	{ "name": "fifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo", "role": "full_n" }} , 
 	{ "name": "fifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo", "role": "write" }} , 
 	{ "name": "fifo_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo", "role": "num_data_valid" }} , 
 	{ "name": "fifo_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo", "role": "fifo_cap" }} , 
 	{ "name": "payload_words", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "payload_words", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	read_payload {
		packetizer_in {Type I LastRead 1 FirstWrite -1}
		fifo {Type O LastRead -1 FirstWrite 1}
		payload_words {Type I LastRead 0 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1026", "Max" : "65537"}
	, {"Name" : "Interval", "Min" : "1025", "Max" : "65536"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	packetizer_in { ap_fifo {  { packetizer_in_dout fifo_data_out 0 32 }  { packetizer_in_empty_n fifo_status_empty 0 1 }  { packetizer_in_read fifo_data_in 1 1 }  { packetizer_in_num_data_valid fifo_update 0 12 }  { packetizer_in_fifo_cap fifo_data 0 12 } } }
	fifo { ap_fifo {  { fifo_din fifo_data_out 1 32 }  { fifo_full_n fifo_status_empty 0 1 }  { fifo_write fifo_data_in 1 1 }  { fifo_num_data_valid fifo_update 0 32 }  { fifo_fifo_cap fifo_data 0 32 } } }
	payload_words { ap_none {  { payload_words in_data 0 16 } } }
}
