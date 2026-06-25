set moduleName packetizer_Block_entry_out_stream_V_data_V_wr_proc
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
set C_modelName {packetizer_Block_entry_out_stream_V_data_V_wr_proc}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
dict set ap_memory_interface_dict header { MEM_WIDTH 32 MEM_SIZE 32 MASTER_TYPE BRAM_CTRL MEM_ADDRESS_MODE WORD_ADDRESS PACKAGE_IO port READ_LATENCY 1 }
set C_modelArgList {
	{ header int 32 regular {array 8 { 1 3 } 1 1 }  }
	{ out_stream_V_data_V int 32 regular {axi_s 1 volatile  { out_stream Data } }  }
	{ out_stream_V_keep_V int 4 regular {axi_s 1 volatile  { out_stream Keep } }  }
	{ out_stream_V_strb_V int 4 regular {axi_s 1 volatile  { out_stream Strb } }  }
	{ out_stream_V_last_V int 1 regular {axi_s 1 volatile  { out_stream Last } }  }
	{ fifo int 32 regular {fifo 0 volatile }  }
	{ p_read int 16 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "header", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "out_stream_V_data_V", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_keep_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_strb_V", "interface" : "axis", "bitwidth" : 4, "direction" : "WRITEONLY"} , 
 	{ "Name" : "out_stream_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "fifo", "interface" : "fifo", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "p_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 22
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_continue sc_in sc_logic 1 continue -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ header_address0 sc_out sc_lv 3 signal 0 } 
	{ header_ce0 sc_out sc_logic 1 signal 0 } 
	{ header_q0 sc_in sc_lv 32 signal 0 } 
	{ out_stream_TDATA sc_out sc_lv 32 signal 1 } 
	{ out_stream_TVALID sc_out sc_logic 1 outvld 4 } 
	{ out_stream_TREADY sc_in sc_logic 1 outacc 4 } 
	{ out_stream_TKEEP sc_out sc_lv 4 signal 2 } 
	{ out_stream_TSTRB sc_out sc_lv 4 signal 3 } 
	{ out_stream_TLAST sc_out sc_lv 1 signal 4 } 
	{ fifo_dout sc_in sc_lv 32 signal 5 } 
	{ fifo_empty_n sc_in sc_logic 1 signal 5 } 
	{ fifo_read sc_out sc_logic 1 signal 5 } 
	{ fifo_num_data_valid sc_in sc_lv 14 signal 5 } 
	{ fifo_fifo_cap sc_in sc_lv 14 signal 5 } 
	{ p_read sc_in sc_lv 16 signal 6 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_continue", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "continue", "bundle":{"name": "ap_continue", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "header_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "header", "role": "address0" }} , 
 	{ "name": "header_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "header", "role": "ce0" }} , 
 	{ "name": "header_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "header", "role": "q0" }} , 
 	{ "name": "out_stream_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "out_stream_V_data_V", "role": "default" }} , 
 	{ "name": "out_stream_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "out_stream_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_keep_V", "role": "default" }} , 
 	{ "name": "out_stream_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "out_stream_V_strb_V", "role": "default" }} , 
 	{ "name": "out_stream_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "out_stream_V_last_V", "role": "default" }} , 
 	{ "name": "fifo_dout", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "fifo", "role": "dout" }} , 
 	{ "name": "fifo_empty_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo", "role": "empty_n" }} , 
 	{ "name": "fifo_read", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fifo", "role": "read" }} , 
 	{ "name": "fifo_num_data_valid", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "fifo", "role": "num_data_valid" }} , 
 	{ "name": "fifo_fifo_cap", "direction": "in", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "fifo", "role": "fifo_cap" }} , 
 	{ "name": "p_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "p_read", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "17", "Max" : "65552"}
	, {"Name" : "Interval", "Min" : "17", "Max" : "65552"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	header { ap_memory {  { header_address0 mem_address 1 3 }  { header_ce0 mem_ce 1 1 }  { header_q0 mem_dout 0 32 } } }
	out_stream_V_data_V { axis {  { out_stream_TDATA out_data 1 32 } } }
	out_stream_V_keep_V { axis {  { out_stream_TKEEP out_data 1 4 } } }
	out_stream_V_strb_V { axis {  { out_stream_TSTRB out_data 1 4 } } }
	out_stream_V_last_V { axis {  { out_stream_TVALID out_vld 1 1 }  { out_stream_TREADY out_acc 0 1 }  { out_stream_TLAST out_data 1 1 } } }
	fifo { ap_fifo {  { fifo_dout fifo_data_out 0 32 }  { fifo_empty_n fifo_status_empty 0 1 }  { fifo_read fifo_data_in 1 1 }  { fifo_num_data_valid fifo_update 0 14 }  { fifo_fifo_cap fifo_data 0 14 } } }
	p_read { ap_none {  { p_read in_data 0 16 } } }
}
