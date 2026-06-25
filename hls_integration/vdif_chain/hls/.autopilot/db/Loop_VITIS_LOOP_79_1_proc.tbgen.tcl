set moduleName Loop_VITIS_LOOP_79_1_proc
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
set C_modelName {Loop_VITIS_LOOP_79_1_proc}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ payload_words int 16 regular  }
	{ adc_in int 8 regular {axi_s 0 volatile  { adc_in Data } }  }
	{ bits_per_sample int 5 regular  }
	{ packetizer_in int 32 regular {fifo 1 volatile }  }
	{ bram_stream int 32 regular {fifo 1 volatile }  }
	{ bits_per_sample_c int 5 regular {fifo 1}  }
	{ payload_words_c int 16 regular {fifo 1}  }
	{ payload_words_c1 int 16 regular {fifo 1}  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "payload_words", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "adc_in", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bits_per_sample", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "packetizer_in", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bram_stream", "interface" : "fifo", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bits_per_sample_c", "interface" : "fifo", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "payload_words_c", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} , 
 	{ "Name" : "payload_words_c1", "interface" : "fifo", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
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
	{ payload_words sc_in sc_lv 16 signal 0 } 
	{ adc_in_TDATA sc_in sc_lv 8 signal 1 } 
	{ adc_in_TVALID sc_in sc_logic 1 invld 1 } 
	{ adc_in_TREADY sc_out sc_logic 1 inacc 1 } 
	{ bits_per_sample sc_in sc_lv 5 signal 2 } 
	{ packetizer_in_din sc_out sc_lv 32 signal 3 } 
	{ packetizer_in_full_n sc_in sc_logic 1 signal 3 } 
	{ packetizer_in_write sc_out sc_logic 1 signal 3 } 
	{ packetizer_in_num_data_valid sc_in sc_lv 12 signal 3 } 
	{ packetizer_in_fifo_cap sc_in sc_lv 12 signal 3 } 
	{ bram_stream_din sc_out sc_lv 32 signal 4 } 
	{ bram_stream_full_n sc_in sc_logic 1 signal 4 } 
	{ bram_stream_write sc_out sc_logic 1 signal 4 } 
	{ bram_stream_num_data_valid sc_in sc_lv 12 signal 4 } 
	{ bram_stream_fifo_cap sc_in sc_lv 12 signal 4 } 
	{ bits_per_sample_c_din sc_out sc_lv 5 signal 5 } 
	{ bits_per_sample_c_full_n sc_in sc_logic 1 signal 5 } 
	{ bits_per_sample_c_write sc_out sc_logic 1 signal 5 } 
	{ bits_per_sample_c_num_data_valid sc_in sc_lv 3 signal 5 } 
	{ bits_per_sample_c_fifo_cap sc_in sc_lv 3 signal 5 } 
	{ payload_words_c_din sc_out sc_lv 16 signal 6 } 
	{ payload_words_c_full_n sc_in sc_logic 1 signal 6 } 
	{ payload_words_c_write sc_out sc_logic 1 signal 6 } 
	{ payload_words_c_num_data_valid sc_in sc_lv 3 signal 6 } 
	{ payload_words_c_fifo_cap sc_in sc_lv 3 signal 6 } 
	{ payload_words_c1_din sc_out sc_lv 16 signal 7 } 
	{ payload_words_c1_full_n sc_in sc_logic 1 signal 7 } 
	{ payload_words_c1_write sc_out sc_logic 1 signal 7 } 
	{ payload_words_c1_num_data_valid sc_in sc_lv 3 signal 7 } 
	{ payload_words_c1_fifo_cap sc_in sc_lv 3 signal 7 } 
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
 	{ "name": "payload_words", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "payload_words", "role": "default" }} , 
 	{ "name": "adc_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adc_in", "role": "TDATA" }} , 
 	{ "name": "adc_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "adc_in", "role": "TVALID" }} , 
 	{ "name": "adc_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "adc_in", "role": "TREADY" }} , 
 	{ "name": "bits_per_sample", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "default" }} , 
 	{ "name": "packetizer_in_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "packetizer_in", "role": "din" }} , 
 	{ "name": "packetizer_in_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packetizer_in", "role": "full_n" }} , 
 	{ "name": "packetizer_in_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "packetizer_in", "role": "write" }} , 
 	{ "name": "packetizer_in_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "packetizer_in", "role": "num_data_valid" }} , 
 	{ "name": "packetizer_in_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "packetizer_in", "role": "fifo_cap" }} , 
 	{ "name": "bram_stream_din", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bram_stream", "role": "din" }} , 
 	{ "name": "bram_stream_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bram_stream", "role": "full_n" }} , 
 	{ "name": "bram_stream_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bram_stream", "role": "write" }} , 
 	{ "name": "bram_stream_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bram_stream", "role": "num_data_valid" }} , 
 	{ "name": "bram_stream_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":12, "type": "signal", "bundle":{"name": "bram_stream", "role": "fifo_cap" }} , 
 	{ "name": "bits_per_sample_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bits_per_sample_c", "role": "din" }} , 
 	{ "name": "bits_per_sample_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bits_per_sample_c", "role": "full_n" }} , 
 	{ "name": "bits_per_sample_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bits_per_sample_c", "role": "write" }} , 
 	{ "name": "bits_per_sample_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bits_per_sample_c", "role": "num_data_valid" }} , 
 	{ "name": "bits_per_sample_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "bits_per_sample_c", "role": "fifo_cap" }} , 
 	{ "name": "payload_words_c_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "payload_words_c", "role": "din" }} , 
 	{ "name": "payload_words_c_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words_c", "role": "full_n" }} , 
 	{ "name": "payload_words_c_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words_c", "role": "write" }} , 
 	{ "name": "payload_words_c_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "payload_words_c", "role": "num_data_valid" }} , 
 	{ "name": "payload_words_c_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "payload_words_c", "role": "fifo_cap" }} , 
 	{ "name": "payload_words_c1_din", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "payload_words_c1", "role": "din" }} , 
 	{ "name": "payload_words_c1_full_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words_c1", "role": "full_n" }} , 
 	{ "name": "payload_words_c1_write", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "payload_words_c1", "role": "write" }} , 
 	{ "name": "payload_words_c1_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "payload_words_c1", "role": "num_data_valid" }} , 
 	{ "name": "payload_words_c1_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "payload_words_c1", "role": "fifo_cap" }}  ]}

set ArgLastReadFirstWriteLatency {
	Loop_VITIS_LOOP_79_1_proc {
		payload_words {Type I LastRead 0 FirstWrite -1}
		adc_in {Type I LastRead 1 FirstWrite -1}
		bits_per_sample {Type I LastRead 0 FirstWrite -1}
		packetizer_in {Type O LastRead -1 FirstWrite 3}
		bram_stream {Type O LastRead -1 FirstWrite 3}
		bits_per_sample_c {Type O LastRead -1 FirstWrite 0}
		payload_words_c {Type O LastRead -1 FirstWrite 0}
		payload_words_c1 {Type O LastRead -1 FirstWrite 0}}
	sample_packer {
		adc_in {Type I LastRead 1 FirstWrite -1}
		packed_stream {Type O LastRead -1 FirstWrite 2}
		bits_per_sample {Type I LastRead 0 FirstWrite -1}}
	sample_packer_Pipeline_VITIS_LOOP_47_3 {
		adc_in {Type I LastRead 1 FirstWrite -1}
		word_4_out {Type O LastRead -1 FirstWrite 0}}
	sample_packer_Pipeline_VITIS_LOOP_34_2 {
		adc_in {Type I LastRead 1 FirstWrite -1}
		word_2_out {Type O LastRead -1 FirstWrite 0}}
	sample_packer_Pipeline_VITIS_LOOP_21_1 {
		adc_in {Type I LastRead 1 FirstWrite -1}
		word_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "1507306"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "1507306"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	payload_words { ap_none {  { payload_words in_data 0 16 } } }
	adc_in { axis {  { adc_in_TDATA in_data 0 8 }  { adc_in_TVALID in_vld 0 1 }  { adc_in_TREADY in_acc 1 1 } } }
	bits_per_sample { ap_none {  { bits_per_sample in_data 0 5 } } }
	packetizer_in { ap_fifo {  { packetizer_in_din fifo_data_out 1 32 }  { packetizer_in_full_n fifo_status_empty 0 1 }  { packetizer_in_write fifo_data_in 1 1 }  { packetizer_in_num_data_valid fifo_update 0 12 }  { packetizer_in_fifo_cap fifo_data 0 12 } } }
	bram_stream { ap_fifo {  { bram_stream_din fifo_data_out 1 32 }  { bram_stream_full_n fifo_status_empty 0 1 }  { bram_stream_write fifo_data_in 1 1 }  { bram_stream_num_data_valid fifo_update 0 12 }  { bram_stream_fifo_cap fifo_data 0 12 } } }
	bits_per_sample_c { ap_fifo {  { bits_per_sample_c_din fifo_data_out 1 5 }  { bits_per_sample_c_full_n fifo_status_empty 0 1 }  { bits_per_sample_c_write fifo_data_in 1 1 }  { bits_per_sample_c_num_data_valid fifo_update 0 3 }  { bits_per_sample_c_fifo_cap fifo_data 0 3 } } }
	payload_words_c { ap_fifo {  { payload_words_c_din fifo_data_out 1 16 }  { payload_words_c_full_n fifo_status_empty 0 1 }  { payload_words_c_write fifo_data_in 1 1 }  { payload_words_c_num_data_valid fifo_update 0 3 }  { payload_words_c_fifo_cap fifo_data 0 3 } } }
	payload_words_c1 { ap_fifo {  { payload_words_c1_din fifo_data_out 1 16 }  { payload_words_c1_full_n fifo_status_empty 0 1 }  { payload_words_c1_write fifo_data_in 1 1 }  { payload_words_c1_num_data_valid fifo_update 0 3 }  { payload_words_c1_fifo_cap fifo_data 0 3 } } }
}
