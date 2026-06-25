set moduleName header_generator
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set isPipelined_legacy 0
set pipeline_type none
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
set C_modelName {header_generator}
set C_modelType { int 16 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict header { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 0 }
set C_modelArgList {
	{ p_read int 30 regular  }
	{ p_read1 int 24 regular  }
	{ epoch int 6 regular {fifo 0}  }
	{ station_id int 16 regular {fifo 0}  }
	{ thread_id int 10 regular {fifo 0}  }
	{ bits_per_sample int 5 regular {fifo 0}  }
	{ complex_data int 1 regular {fifo 0}  }
	{ payload_words int 16 regular {fifo 0}  }
	{ header int 32 regular {array 8 { 0 0 } 0 1 }  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 30, "direction" : "READONLY"} , 
 	{ "Name" : "p_read1", "interface" : "wire", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "epoch", "interface" : "fifo", "bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "station_id", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "thread_id", "interface" : "fifo", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "bits_per_sample", "interface" : "fifo", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "complex_data", "interface" : "fifo", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "payload_words", "interface" : "fifo", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "header", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 16} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ p_read sc_in sc_lv 30 signal 0 } 
	{ p_read1 sc_in sc_lv 24 signal 1 } 
	{ epoch_dout sc_in sc_lv 6 signal 2 } 
	{ epoch_empty_n sc_in sc_logic 1 signal 2 } 
	{ epoch_read sc_out sc_logic 1 signal 2 } 
	{ epoch_num_data_valid sc_in sc_lv 3 signal 2 } 
	{ epoch_fifo_cap sc_in sc_lv 3 signal 2 } 
	{ station_id_dout sc_in sc_lv 16 signal 3 } 
	{ station_id_empty_n sc_in sc_logic 1 signal 3 } 
	{ station_id_read sc_out sc_logic 1 signal 3 } 
	{ station_id_num_data_valid sc_in sc_lv 3 signal 3 } 
	{ station_id_fifo_cap sc_in sc_lv 3 signal 3 } 
	{ thread_id_dout sc_in sc_lv 10 signal 4 } 
	{ thread_id_empty_n sc_in sc_logic 1 signal 4 } 
	{ thread_id_read sc_out sc_logic 1 signal 4 } 
	{ thread_id_num_data_valid sc_in sc_lv 3 signal 4 } 
	{ thread_id_fifo_cap sc_in sc_lv 3 signal 4 } 
	{ bits_per_sample_dout sc_in sc_lv 5 signal 5 } 
	{ bits_per_sample_empty_n sc_in sc_logic 1 signal 5 } 
	{ bits_per_sample_read sc_out sc_logic 1 signal 5 } 
	{ bits_per_sample_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ bits_per_sample_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ complex_data_dout sc_in sc_lv 1 signal 6 } 
	{ complex_data_empty_n sc_in sc_logic 1 signal 6 } 
	{ complex_data_read sc_out sc_logic 1 signal 6 } 
	{ complex_data_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ complex_data_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ payload_words_dout sc_in sc_lv 16 signal 7 } 
	{ payload_words_empty_n sc_in sc_logic 1 signal 7 } 
	{ payload_words_read sc_out sc_logic 1 signal 7 } 
	{ payload_words_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ payload_words_fifo_cap sc_in sc_lv 3 signal 7 } 
	{ header_address0 sc_out sc_lv 3 signal 8 } 
	{ header_ce0 sc_out sc_logic 1 signal 8 } 
	{ header_we0 sc_out sc_logic 1 signal 8 } 
	{ header_d0 sc_out sc_lv 32 signal 8 } 
	{ header_address1 sc_out sc_lv 3 signal 8 } 
	{ header_ce1 sc_out sc_logic 1 signal 8 } 
	{ header_we1 sc_out sc_logic 1 signal 8 } 
	{ header_d1 sc_out sc_lv 32 signal 8 } 
	{ ap_return sc_out sc_lv 16 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":30, "type": "signal", "bundle":{"name": "p_read", "role": "default" }} , 
 	{ "name": "p_read1", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "p_read1", "role": "default" }} , 
 	{ "name": "epoch_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "epoch", "role": "dout" }} , 
 	{ "name": "epoch_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "epoch", "role": "empty_n" }} , 
 	{ "name": "epoch_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "epoch", "role": "read" }} , 
 	{ "name": "epoch_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "epoch", "role": "num_data_valid" }} , 
 	{ "name": "epoch_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "epoch", "role": "fifo_cap" }} , 
 	{ "name": "station_id_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "station_id", "role": "dout" }} , 
 	{ "name": "station_id_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "station_id", "role": "empty_n" }} , 
 	{ "name": "station_id_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "station_id", "role": "read" }} , 
 	{ "name": "station_id_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "station_id", "role": "num_data_valid" }} , 
 	{ "name": "station_id_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "station_id", "role": "fifo_cap" }} , 
 	{ "name": "thread_id_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "thread_id", "role": "dout" }} , 
 	{ "name": "thread_id_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thread_id", "role": "empty_n" }} , 
 	{ "name": "thread_id_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "thread_id", "role": "read" }} , 
 	{ "name": "thread_id_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "thread_id", "role": "num_data_valid" }} , 
 	{ "name": "thread_id_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "thread_id", "role": "fifo_cap" }} , 
 	{ "name": "bits_per_sample_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "dout" }} , 
 	{ "name": "bits_per_sample_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "empty_n" }} , 
 	{ "name": "bits_per_sample_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "read" }} , 
 	{ "name": "bits_per_sample_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "num_data_valid" }} , 
 	{ "name": "bits_per_sample_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "fifo_cap" }} , 
 	{ "name": "complex_data_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data", "role": "dout" }} , 
 	{ "name": "complex_data_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data", "role": "empty_n" }} , 
 	{ "name": "complex_data_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "complex_data", "role": "read" }} , 
 	{ "name": "complex_data_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "complex_data", "role": "num_data_valid" }} , 
 	{ "name": "complex_data_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "complex_data", "role": "fifo_cap" }} , 
 	{ "name": "payload_words_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "payload_words", "role": "dout" }} , 
 	{ "name": "payload_words_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words", "role": "empty_n" }} , 
 	{ "name": "payload_words_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words", "role": "read" }} , 
 	{ "name": "payload_words_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "payload_words", "role": "num_data_valid" }} , 
 	{ "name": "payload_words_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "payload_words", "role": "fifo_cap" }} , 
 	{ "name": "header_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "header", "role": "address0" }} , 
 	{ "name": "header_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "header", "role": "ce0" }} , 
 	{ "name": "header_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "header", "role": "we0" }} , 
 	{ "name": "header_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "header", "role": "d0" }} , 
 	{ "name": "header_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "header", "role": "address1" }} , 
 	{ "name": "header_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "header", "role": "ce1" }} , 
 	{ "name": "header_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "header", "role": "we1" }} , 
 	{ "name": "header_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "header", "role": "d1" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	header_generator {
		p_read {Type I LastRead 0 FirstWrite -1}
		p_read1 {Type I LastRead 0 FirstWrite -1}
		epoch {Type I LastRead 0 FirstWrite -1}
		station_id {Type I LastRead 0 FirstWrite -1}
		thread_id {Type I LastRead 0 FirstWrite -1}
		bits_per_sample {Type I LastRead 0 FirstWrite -1}
		complex_data {Type I LastRead 0 FirstWrite -1}
		payload_words {Type I LastRead 0 FirstWrite -1}
		header {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3", "Max" : "3"}
	, {"Name" : "Interval", "Min" : "3", "Max" : "3"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	p_read { ap_none {  { p_read in_data 0 30 } } }
	p_read1 { ap_none {  { p_read1 in_data 0 24 } } }
	epoch { ap_fifo {  { epoch_dout fifo_data_out 0 6 }  { epoch_empty_n fifo_status_empty 0 1 }  { epoch_read fifo_data_in 1 1 }  { epoch_num_data_valid fifo_update 0 3 }  { epoch_fifo_cap fifo_data 0 3 } } }
	station_id { ap_fifo {  { station_id_dout fifo_data_out 0 16 }  { station_id_empty_n fifo_status_empty 0 1 }  { station_id_read fifo_data_in 1 1 }  { station_id_num_data_valid fifo_update 0 3 }  { station_id_fifo_cap fifo_data 0 3 } } }
	thread_id { ap_fifo {  { thread_id_dout fifo_data_out 0 10 }  { thread_id_empty_n fifo_status_empty 0 1 }  { thread_id_read fifo_data_in 1 1 }  { thread_id_num_data_valid fifo_update 0 3 }  { thread_id_fifo_cap fifo_data 0 3 } } }
	bits_per_sample { ap_fifo {  { bits_per_sample_dout fifo_data_out 0 5 }  { bits_per_sample_empty_n fifo_status_empty 0 1 }  { bits_per_sample_read fifo_data_in 1 1 }  { bits_per_sample_num_data_valid fifo_update 0 3 }  { bits_per_sample_fifo_cap fifo_data 0 3 } } }
	complex_data { ap_fifo {  { complex_data_dout fifo_data_out 0 1 }  { complex_data_empty_n fifo_status_empty 0 1 }  { complex_data_read fifo_data_in 1 1 }  { complex_data_num_data_valid fifo_update 0 3 }  { complex_data_fifo_cap fifo_data 0 3 } } }
	payload_words { ap_fifo {  { payload_words_dout fifo_data_out 0 16 }  { payload_words_empty_n fifo_status_empty 0 1 }  { payload_words_read fifo_data_in 1 1 }  { payload_words_num_data_valid fifo_update 0 3 }  { payload_words_fifo_cap fifo_data 0 3 } } }
	header { ap_memory {  { header_address0 mem_address 1 3 }  { header_ce0 mem_ce 1 1 }  { header_we0 mem_we 1 1 }  { header_d0 mem_din 1 32 }  { header_address1 MemPortADDR2 1 3 }  { header_ce1 MemPortCE2 1 1 }  { header_we1 MemPortWE2 1 1 }  { header_d1 MemPortDIN2 1 32 } } }
}
