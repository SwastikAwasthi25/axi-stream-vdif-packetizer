set moduleName entry_proc
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
set C_modelName {entry_proc}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ return_r int 16 regular {pointer 1 volatile }  }
	{ epoch int 6 regular {fifo 0}  }
	{ epoch_c int 6 regular {fifo 1}  }
	{ station_id int 16 regular {fifo 0}  }
	{ station_id_c int 16 regular {fifo 1}  }
	{ thread_id int 10 regular {fifo 0}  }
	{ thread_id_c int 10 regular {fifo 1}  }
	{ bits_per_sample int 5 regular {fifo 0}  }
	{ bits_per_sample_c int 5 regular {fifo 1}  }
	{ complex_data int 1 regular {fifo 0}  }
	{ complex_data_c int 1 regular {fifo 1}  }
	{ payload_words int 16 regular {fifo 0}  }
	{ payload_words_c1 int 16 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "return_r", "interface" : "wire", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "epoch", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "epoch_c", "interface" : "fifo", "bitwidth" : 6, "direction" : "WRITEONLY"} , 
 	{ "Name" : "station_id", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "station_id_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "thread_id", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "thread_id_c", "interface" : "fifo", "bitwidth" : 10, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bits_per_sample", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "bits_per_sample_c", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "complex_data", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "complex_data_c", "interface" : "fifo", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "payload_words", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "payload_words_c1", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 68
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ return_r sc_out sc_lv 16 signal 0 } 
	{ epoch_dout sc_in sc_lv 6 signal 1 } 
	{ epoch_empty_n sc_in sc_logic 1 signal 1 } 
	{ epoch_read sc_out sc_logic 1 signal 1 } 
	{ epoch_num_data_valid sc_in sc_lv 3 signal 1 } 
	{ epoch_fifo_cap sc_in sc_lv 3 signal 1 } 
	{ epoch_c_din sc_out sc_lv 6 signal 2 } 
	{ epoch_c_full_n sc_in sc_logic 1 signal 2 } 
	{ epoch_c_write sc_out sc_logic 1 signal 2 } 
	{ epoch_c_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ epoch_c_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ station_id_dout sc_in sc_lv 16 signal 3 } 
	{ station_id_empty_n sc_in sc_logic 1 signal 3 } 
	{ station_id_read sc_out sc_logic 1 signal 3 } 
	{ station_id_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ station_id_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ station_id_c_din sc_out sc_lv 16 signal 4 } 
	{ station_id_c_full_n sc_in sc_logic 1 signal 4 } 
	{ station_id_c_write sc_out sc_logic 1 signal 4 } 
	{ station_id_c_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ station_id_c_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ thread_id_dout sc_in sc_lv 10 signal 5 } 
	{ thread_id_empty_n sc_in sc_logic 1 signal 5 } 
	{ thread_id_read sc_out sc_logic 1 signal 5 } 
	{ thread_id_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ thread_id_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ thread_id_c_din sc_out sc_lv 10 signal 6 } 
	{ thread_id_c_full_n sc_in sc_logic 1 signal 6 } 
	{ thread_id_c_write sc_out sc_logic 1 signal 6 } 
	{ thread_id_c_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ thread_id_c_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ bits_per_sample_dout sc_in sc_lv 5 signal 7 } 
	{ bits_per_sample_empty_n sc_in sc_logic 1 signal 7 } 
	{ bits_per_sample_read sc_out sc_logic 1 signal 7 } 
	{ bits_per_sample_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ bits_per_sample_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ bits_per_sample_c_din sc_out sc_lv 5 signal 8 } 
	{ bits_per_sample_c_full_n sc_in sc_logic 1 signal 8 } 
	{ bits_per_sample_c_write sc_out sc_logic 1 signal 8 } 
	{ bits_per_sample_c_num_data_valid sc_in sc_lv 3 signal 8 } 
	{ bits_per_sample_c_fifo_cap sc_in sc_lv 3 signal 8 } 
	{ complex_data_dout sc_in sc_lv 1 signal 9 } 
	{ complex_data_empty_n sc_in sc_logic 1 signal 9 } 
	{ complex_data_read sc_out sc_logic 1 signal 9 } 
	{ complex_data_num_data_valid sc_in sc_lv 3 signal 9 } 
	{ complex_data_fifo_cap sc_in sc_lv 3 signal 9 } 
	{ complex_data_c_din sc_out sc_lv 1 signal 10 } 
	{ complex_data_c_full_n sc_in sc_logic 1 signal 10 } 
	{ complex_data_c_write sc_out sc_logic 1 signal 10 } 
	{ complex_data_c_num_data_valid sc_in sc_lv 3 signal 10 } 
	{ complex_data_c_fifo_cap sc_in sc_lv 3 signal 10 } 
	{ payload_words_dout sc_in sc_lv 16 signal 11 } 
	{ payload_words_empty_n sc_in sc_logic 1 signal 11 } 
	{ payload_words_read sc_out sc_logic 1 signal 11 } 
	{ payload_words_num_data_valid sc_in sc_lv 3 signal 11 } 
	{ payload_words_fifo_cap sc_in sc_lv 3 signal 11 } 
	{ payload_words_c1_din sc_out sc_lv 16 signal 12 } 
	{ payload_words_c1_full_n sc_in sc_logic 1 signal 12 } 
	{ payload_words_c1_write sc_out sc_logic 1 signal 12 } 
	{ payload_words_c1_num_data_valid sc_in sc_lv 3 signal 12 } 
	{ payload_words_c1_fifo_cap sc_in sc_lv 3 signal 12 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "return_r", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "return_r", "role": "default" }} , 
 	{ "name": "epoch_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "epoch", "role": "dout" }} , 
 	{ "name": "epoch_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "epoch", "role": "empty_n" }} , 
 	{ "name": "epoch_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "epoch", "role": "read" }} , 
 	{ "name": "epoch_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "epoch", "role": "num_data_valid" }} , 
 	{ "name": "epoch_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "epoch", "role": "fifo_cap" }} , 
 	{ "name": "epoch_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "epoch_c", "role": "din" }} , 
 	{ "name": "epoch_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "epoch_c", "role": "full_n" }} , 
 	{ "name": "epoch_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "epoch_c", "role": "write" }} , 
 	{ "name": "epoch_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "epoch_c", "role": "num_data_valid" }} , 
 	{ "name": "epoch_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "epoch_c", "role": "fifo_cap" }} , 
 	{ "name": "station_id_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "station_id", "role": "dout" }} , 
 	{ "name": "station_id_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "station_id", "role": "empty_n" }} , 
 	{ "name": "station_id_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "station_id", "role": "read" }} , 
 	{ "name": "station_id_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "station_id", "role": "num_data_valid" }} , 
 	{ "name": "station_id_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "station_id", "role": "fifo_cap" }} , 
 	{ "name": "station_id_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "station_id_c", "role": "din" }} , 
 	{ "name": "station_id_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "station_id_c", "role": "full_n" }} , 
 	{ "name": "station_id_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "station_id_c", "role": "write" }} , 
 	{ "name": "station_id_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "station_id_c", "role": "num_data_valid" }} , 
 	{ "name": "station_id_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "station_id_c", "role": "fifo_cap" }} , 
 	{ "name": "thread_id_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "thread_id", "role": "dout" }} , 
 	{ "name": "thread_id_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thread_id", "role": "empty_n" }} , 
 	{ "name": "thread_id_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thread_id", "role": "read" }} , 
 	{ "name": "thread_id_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "thread_id", "role": "num_data_valid" }} , 
 	{ "name": "thread_id_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "thread_id", "role": "fifo_cap" }} , 
 	{ "name": "thread_id_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "thread_id_c", "role": "din" }} , 
 	{ "name": "thread_id_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thread_id_c", "role": "full_n" }} , 
 	{ "name": "thread_id_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thread_id_c", "role": "write" }} , 
 	{ "name": "thread_id_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "thread_id_c", "role": "num_data_valid" }} , 
 	{ "name": "thread_id_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "thread_id_c", "role": "fifo_cap" }} , 
 	{ "name": "bits_per_sample_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "dout" }} , 
 	{ "name": "bits_per_sample_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "empty_n" }} , 
 	{ "name": "bits_per_sample_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "read" }} , 
 	{ "name": "bits_per_sample_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "num_data_valid" }} , 
 	{ "name": "bits_per_sample_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "fifo_cap" }} , 
 	{ "name": "bits_per_sample_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bits_per_sample_c", "role": "din" }} , 
 	{ "name": "bits_per_sample_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bits_per_sample_c", "role": "full_n" }} , 
 	{ "name": "bits_per_sample_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bits_per_sample_c", "role": "write" }} , 
 	{ "name": "bits_per_sample_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bits_per_sample_c", "role": "num_data_valid" }} , 
 	{ "name": "bits_per_sample_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bits_per_sample_c", "role": "fifo_cap" }} , 
 	{ "name": "complex_data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data", "role": "dout" }} , 
 	{ "name": "complex_data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data", "role": "empty_n" }} , 
 	{ "name": "complex_data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data", "role": "read" }} , 
 	{ "name": "complex_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "complex_data", "role": "num_data_valid" }} , 
 	{ "name": "complex_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "complex_data", "role": "fifo_cap" }} , 
 	{ "name": "complex_data_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data_c", "role": "din" }} , 
 	{ "name": "complex_data_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data_c", "role": "full_n" }} , 
 	{ "name": "complex_data_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data_c", "role": "write" }} , 
 	{ "name": "complex_data_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "complex_data_c", "role": "num_data_valid" }} , 
 	{ "name": "complex_data_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "complex_data_c", "role": "fifo_cap" }} , 
 	{ "name": "payload_words_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "payload_words", "role": "dout" }} , 
 	{ "name": "payload_words_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words", "role": "empty_n" }} , 
 	{ "name": "payload_words_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words", "role": "read" }} , 
 	{ "name": "payload_words_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "payload_words", "role": "num_data_valid" }} , 
 	{ "name": "payload_words_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "payload_words", "role": "fifo_cap" }} , 
 	{ "name": "payload_words_c1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "payload_words_c1", "role": "din" }} , 
 	{ "name": "payload_words_c1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words_c1", "role": "full_n" }} , 
 	{ "name": "payload_words_c1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words_c1", "role": "write" }} , 
 	{ "name": "payload_words_c1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "payload_words_c1", "role": "num_data_valid" }} , 
 	{ "name": "payload_words_c1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "payload_words_c1", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
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
		payload_words_c1 {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "0", "Max" : "0"}
	, {"Name" : "Interval", "Min" : "0", "Max" : "0"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	return_r { ap_none {  { return_r out_data 1 16 } } }
	epoch { ap_fifo {  { epoch_dout fifo_data_out 0 6 }  { epoch_empty_n fifo_status_empty 0 1 }  { epoch_read fifo_data_in 1 1 }  { epoch_num_data_valid fifo_update 0 3 }  { epoch_fifo_cap fifo_data 0 3 } } }
	epoch_c { ap_fifo {  { epoch_c_din fifo_data_out 1 6 }  { epoch_c_full_n fifo_status_empty 0 1 }  { epoch_c_write fifo_data_in 1 1 }  { epoch_c_num_data_valid fifo_update 0 3 }  { epoch_c_fifo_cap fifo_data 0 3 } } }
	station_id { ap_fifo {  { station_id_dout fifo_data_out 0 16 }  { station_id_empty_n fifo_status_empty 0 1 }  { station_id_read fifo_data_in 1 1 }  { station_id_num_data_valid fifo_update 0 3 }  { station_id_fifo_cap fifo_data 0 3 } } }
	station_id_c { ap_fifo {  { station_id_c_din fifo_data_out 1 16 }  { station_id_c_full_n fifo_status_empty 0 1 }  { station_id_c_write fifo_data_in 1 1 }  { station_id_c_num_data_valid fifo_update 0 3 }  { station_id_c_fifo_cap fifo_data 0 3 } } }
	thread_id { ap_fifo {  { thread_id_dout fifo_data_out 0 10 }  { thread_id_empty_n fifo_status_empty 0 1 }  { thread_id_read fifo_data_in 1 1 }  { thread_id_num_data_valid fifo_update 0 3 }  { thread_id_fifo_cap fifo_data 0 3 } } }
	thread_id_c { ap_fifo {  { thread_id_c_din fifo_data_out 1 10 }  { thread_id_c_full_n fifo_status_empty 0 1 }  { thread_id_c_write fifo_data_in 1 1 }  { thread_id_c_num_data_valid fifo_update 0 3 }  { thread_id_c_fifo_cap fifo_data 0 3 } } }
	bits_per_sample { ap_fifo {  { bits_per_sample_dout fifo_data_out 0 5 }  { bits_per_sample_empty_n fifo_status_empty 0 1 }  { bits_per_sample_read fifo_data_in 1 1 }  { bits_per_sample_num_data_valid fifo_update 0 3 }  { bits_per_sample_fifo_cap fifo_data 0 3 } } }
	bits_per_sample_c { ap_fifo {  { bits_per_sample_c_din fifo_data_out 1 5 }  { bits_per_sample_c_full_n fifo_status_empty 0 1 }  { bits_per_sample_c_write fifo_data_in 1 1 }  { bits_per_sample_c_num_data_valid fifo_update 0 3 }  { bits_per_sample_c_fifo_cap fifo_data 0 3 } } }
	complex_data { ap_fifo {  { complex_data_dout fifo_data_out 0 1 }  { complex_data_empty_n fifo_status_empty 0 1 }  { complex_data_read fifo_data_in 1 1 }  { complex_data_num_data_valid fifo_update 0 3 }  { complex_data_fifo_cap fifo_data 0 3 } } }
	complex_data_c { ap_fifo {  { complex_data_c_din fifo_data_out 1 1 }  { complex_data_c_full_n fifo_status_empty 0 1 }  { complex_data_c_write fifo_data_in 1 1 }  { complex_data_c_num_data_valid fifo_update 0 3 }  { complex_data_c_fifo_cap fifo_data 0 3 } } }
	payload_words { ap_fifo {  { payload_words_dout fifo_data_out 0 16 }  { payload_words_empty_n fifo_status_empty 0 1 }  { payload_words_read fifo_data_in 1 1 }  { payload_words_num_data_valid fifo_update 0 3 }  { payload_words_fifo_cap fifo_data 0 3 } } }
	payload_words_c1 { ap_fifo {  { payload_words_c1_din fifo_data_out 1 16 }  { payload_words_c1_full_n fifo_status_empty 0 1 }  { payload_words_c1_write fifo_data_in 1 1 }  { payload_words_c1_num_data_valid fifo_update 0 3 }  { payload_words_c1_fifo_cap fifo_data 0 3 } } }
}
