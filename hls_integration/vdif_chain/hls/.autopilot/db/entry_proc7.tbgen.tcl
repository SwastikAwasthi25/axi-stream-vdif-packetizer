set moduleName entry_proc7
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set restart_counter_num 0
set isOneStateSeq 1
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set DLRegFirstOffset 0
set DLRegItemOffset 0
set svuvm_can_support 1
set cdfgNum 24
set C_modelName {entry_proc7}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ epoch int 6 regular  }
	{ epoch_c int 6 regular {fifo 1}  }
	{ station_id int 16 regular  }
	{ station_id_c int 16 regular {fifo 1}  }
	{ thread_id int 10 regular  }
	{ thread_id_c int 10 regular {fifo 1}  }
	{ complex_data int 1 regular  }
	{ complex_data_c int 1 regular {fifo 1}  }
	{ pps int 1 regular  }
	{ pps_c int 1 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "epoch", "interface" : "wire", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "epoch_c", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "station_id", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "station_id_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "thread_id", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "thread_id_c", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "complex_data", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "complex_data_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "pps", "interface" : "wire", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "pps_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 40
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ start_full_n sc_in sc_logic 1 signal -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ start_out sc_out sc_logic 1 signal -1 } 
	{ start_write sc_out sc_logic 1 signal -1 } 
	{ epoch sc_in sc_lv 6 signal 0 } 
	{ epoch_c_din sc_out sc_lv 6 signal 1 } 
	{ epoch_c_full_n sc_in sc_logic 1 signal 1 } 
	{ epoch_c_write sc_out sc_logic 1 signal 1 } 
	{ epoch_c_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ epoch_c_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ station_id sc_in sc_lv 16 signal 2 } 
	{ station_id_c_din sc_out sc_lv 16 signal 3 } 
	{ station_id_c_full_n sc_in sc_logic 1 signal 3 } 
	{ station_id_c_write sc_out sc_logic 1 signal 3 } 
	{ station_id_c_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ station_id_c_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ thread_id sc_in sc_lv 10 signal 4 } 
	{ thread_id_c_din sc_out sc_lv 10 signal 5 } 
	{ thread_id_c_full_n sc_in sc_logic 1 signal 5 } 
	{ thread_id_c_write sc_out sc_logic 1 signal 5 } 
	{ thread_id_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ thread_id_c_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ complex_data sc_in sc_lv 1 signal 6 } 
	{ complex_data_c_din sc_out sc_lv 1 signal 7 } 
	{ complex_data_c_full_n sc_in sc_logic 1 signal 7 } 
	{ complex_data_c_write sc_out sc_logic 1 signal 7 } 
	{ complex_data_c_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ complex_data_c_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ pps sc_in sc_lv 1 signal 8 } 
	{ pps_c_din sc_out sc_lv 1 signal 9 } 
	{ pps_c_full_n sc_in sc_logic 1 signal 9 } 
	{ pps_c_write sc_out sc_logic 1 signal 9 } 
	{ pps_c_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ pps_c_fifo_cap sc_in sc_lv 3 signal 9 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "start_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_full_n", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "start_out", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_out", "role": "default" }} , 
 	{ "name": "start_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "start_write", "role": "default" }} , 
 	{ "name": "epoch", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "epoch", "role": "default" }} , 
 	{ "name": "epoch_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "epoch_c", "role": "din" }} , 
 	{ "name": "epoch_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "epoch_c", "role": "full_n" }} , 
 	{ "name": "epoch_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "epoch_c", "role": "write" }} , 
 	{ "name": "epoch_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "epoch_c", "role": "num_data_valid" }} , 
 	{ "name": "epoch_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "epoch_c", "role": "fifo_cap" }} , 
 	{ "name": "station_id", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "station_id", "role": "default" }} , 
 	{ "name": "station_id_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "station_id_c", "role": "din" }} , 
 	{ "name": "station_id_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "station_id_c", "role": "full_n" }} , 
 	{ "name": "station_id_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "station_id_c", "role": "write" }} , 
 	{ "name": "station_id_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "station_id_c", "role": "num_data_valid" }} , 
 	{ "name": "station_id_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "station_id_c", "role": "fifo_cap" }} , 
 	{ "name": "thread_id", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "thread_id", "role": "default" }} , 
 	{ "name": "thread_id_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "thread_id_c", "role": "din" }} , 
 	{ "name": "thread_id_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thread_id_c", "role": "full_n" }} , 
 	{ "name": "thread_id_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thread_id_c", "role": "write" }} , 
 	{ "name": "thread_id_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "thread_id_c", "role": "num_data_valid" }} , 
 	{ "name": "thread_id_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "thread_id_c", "role": "fifo_cap" }} , 
 	{ "name": "complex_data", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data", "role": "default" }} , 
 	{ "name": "complex_data_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data_c", "role": "din" }} , 
 	{ "name": "complex_data_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data_c", "role": "full_n" }} , 
 	{ "name": "complex_data_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data_c", "role": "write" }} , 
 	{ "name": "complex_data_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "complex_data_c", "role": "num_data_valid" }} , 
 	{ "name": "complex_data_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "complex_data_c", "role": "fifo_cap" }} , 
 	{ "name": "pps", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pps", "role": "default" }} , 
 	{ "name": "pps_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "pps_c", "role": "din" }} , 
 	{ "name": "pps_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pps_c", "role": "full_n" }} , 
 	{ "name": "pps_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pps_c", "role": "write" }} , 
 	{ "name": "pps_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pps_c", "role": "num_data_valid" }} , 
 	{ "name": "pps_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "pps_c", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	entry_proc7 {
		epoch {Type I LastRead 0 FirstWrite -1}
		epoch_c {Type O LastRead -1 FirstWrite 0}
		station_id {Type I LastRead 0 FirstWrite -1}
		station_id_c {Type O LastRead -1 FirstWrite 0}
		thread_id {Type I LastRead 0 FirstWrite -1}
		thread_id_c {Type O LastRead -1 FirstWrite 0}
		complex_data {Type I LastRead 0 FirstWrite -1}
		complex_data_c {Type O LastRead -1 FirstWrite 0}
		pps {Type I LastRead 0 FirstWrite -1}
		pps_c {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	epoch { ap_none {  { epoch in_data 0 6 } } }
	epoch_c { ap_fifo {  { epoch_c_din fifo_data_out 1 6 }  { epoch_c_full_n fifo_status_empty 0 1 }  { epoch_c_write fifo_data_in 1 1 }  { epoch_c_num_data_valid fifo_update 0 3 }  { epoch_c_fifo_cap fifo_data 0 3 } } }
	station_id { ap_none {  { station_id in_data 0 16 } } }
	station_id_c { ap_fifo {  { station_id_c_din fifo_data_out 1 16 }  { station_id_c_full_n fifo_status_empty 0 1 }  { station_id_c_write fifo_data_in 1 1 }  { station_id_c_num_data_valid fifo_update 0 3 }  { station_id_c_fifo_cap fifo_data 0 3 } } }
	thread_id { ap_none {  { thread_id in_data 0 10 } } }
	thread_id_c { ap_fifo {  { thread_id_c_din fifo_data_out 1 10 }  { thread_id_c_full_n fifo_status_empty 0 1 }  { thread_id_c_write fifo_data_in 1 1 }  { thread_id_c_num_data_valid fifo_update 0 3 }  { thread_id_c_fifo_cap fifo_data 0 3 } } }
	complex_data { ap_none {  { complex_data in_data 0 1 } } }
	complex_data_c { ap_fifo {  { complex_data_c_din fifo_data_out 1 1 }  { complex_data_c_full_n fifo_status_empty 0 1 }  { complex_data_c_write fifo_data_in 1 1 }  { complex_data_c_num_data_valid fifo_update 0 3 }  { complex_data_c_fifo_cap fifo_data 0 3 } } }
	pps { ap_none {  { pps in_data 0 1 } } }
	pps_c { ap_fifo {  { pps_c_din fifo_data_out 1 1 }  { pps_c_full_n fifo_status_empty 0 1 }  { pps_c_write fifo_data_in 1 1 }  { pps_c_num_data_valid fifo_update 0 3 }  { pps_c_fifo_cap fifo_data 0 3 } } }
}
