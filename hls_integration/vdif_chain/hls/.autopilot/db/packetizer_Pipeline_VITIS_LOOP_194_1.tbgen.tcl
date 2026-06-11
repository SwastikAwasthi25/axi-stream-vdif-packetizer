set moduleName packetizer_Pipeline_VITIS_LOOP_194_1
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
set cdfgNum 9
set C_modelName {packetizer_Pipeline_VITIS_LOOP_194_1}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ payload_words int 16 regular  }
	{ packetizer_in int 32 regular {fifo 0 volatile }  }
	{ fifo int 32 regular {fifo 1 volatile }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "payload_words", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "packetizer_in", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "fifo", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 13
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ packetizer_in_dout sc_in sc_lv 32 signal 1 } 
	{ packetizer_in_empty_n sc_in sc_logic 1 signal 1 } 
	{ packetizer_in_read sc_out sc_logic 1 signal 1 } 
	{ fifo_din sc_out sc_lv 32 signal 2 } 
	{ fifo_full_n sc_in sc_logic 1 signal 2 } 
	{ fifo_write sc_out sc_logic 1 signal 2 } 
	{ payload_words sc_in sc_lv 16 signal 0 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "packetizer_in_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "packetizer_in", "role": "dout" }} , 
 	{ "name": "packetizer_in_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packetizer_in", "role": "empty_n" }} , 
 	{ "name": "packetizer_in_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packetizer_in", "role": "read" }} , 
 	{ "name": "fifo_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo", "role": "din" }} , 
 	{ "name": "fifo_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo", "role": "full_n" }} , 
 	{ "name": "fifo_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo", "role": "write" }} , 
 	{ "name": "payload_words", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "payload_words", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	packetizer_Pipeline_VITIS_LOOP_194_1 {
		payload_words {Type I LastRead 0 FirstWrite -1}
		packetizer_in {Type I LastRead 1 FirstWrite -1}
		fifo {Type O LastRead -1 FirstWrite 1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2", "Max" : "65537"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "65536"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	payload_words { ap_none {  { payload_words in_data 0 16 } } }
	packetizer_in { ap_fifo {  { packetizer_in_dout fifo_data_out 0 32 }  { packetizer_in_empty_n fifo_status_empty 0 1 }  { packetizer_in_read fifo_data_in 1 1 } } }
	fifo { ap_fifo {  { fifo_din fifo_data_out 1 32 }  { fifo_full_n fifo_status_empty 0 1 }  { fifo_write fifo_data_in 1 1 } } }
}
