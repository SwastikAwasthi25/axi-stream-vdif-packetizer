set moduleName sample_packer
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
set cdfgNum 6
set C_modelName {sample_packer}
set C_modelType { void 0 }
set ap_memory_interface_dict [dict create]
set C_modelArgList {
	{ adc_in int 8 regular {axi_s 0 volatile  { adc_in Data } }  }
	{ packed_out int 32 regular {axi_s 1 volatile  { packed_out Data } }  }
	{ bits_per_sample int 5 regular  }
}
set hasAXIMCache 0
set l_AXIML2Cache [list]
set AXIMCacheInstDict [dict create]
set C_modelArgMapList {[ 
	{ "Name" : "adc_in", "interface" : "axis", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "packed_out", "interface" : "axis", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "bits_per_sample", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 9
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ adc_in_TDATA sc_in sc_lv 8 signal 0 } 
	{ adc_in_TVALID sc_in sc_logic 1 invld 0 } 
	{ adc_in_TREADY sc_out sc_logic 1 inacc 0 } 
	{ packed_out_TDATA sc_out sc_lv 32 signal 1 } 
	{ packed_out_TVALID sc_out sc_logic 1 outvld 1 } 
	{ packed_out_TREADY sc_in sc_logic 1 outacc 1 } 
	{ bits_per_sample sc_in sc_lv 5 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
 	{ "name": "adc_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "adc_in", "role": "TDATA" }} , 
 	{ "name": "adc_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "adc_in", "role": "TVALID" }} , 
 	{ "name": "adc_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "adc_in", "role": "TREADY" }} , 
 	{ "name": "packed_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "packed_out", "role": "TDATA" }} , 
 	{ "name": "packed_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "packed_out", "role": "TVALID" }} , 
 	{ "name": "packed_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "packed_out", "role": "TREADY" }} , 
 	{ "name": "bits_per_sample", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "bits_per_sample", "role": "default" }}  ]}

set ArgLastReadFirstWriteLatency {
	sample_packer {
		adc_in {Type I LastRead 1 FirstWrite -1}
		packed_out {Type O LastRead -1 FirstWrite 2}
		bits_per_sample {Type I LastRead 0 FirstWrite -1}}
	sample_packer_Pipeline_VITIS_LOOP_46_3 {
		adc_in {Type I LastRead 1 FirstWrite -1}
		word_4_out {Type O LastRead -1 FirstWrite 0}}
	sample_packer_Pipeline_VITIS_LOOP_33_2 {
		adc_in {Type I LastRead 1 FirstWrite -1}
		word_2_out {Type O LastRead -1 FirstWrite 0}}
	sample_packer_Pipeline_VITIS_LOOP_20_1 {
		adc_in {Type I LastRead 1 FirstWrite -1}
		word_out {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "21"}
	, {"Name" : "Interval", "Min" : "2", "Max" : "22"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	adc_in { axis {  { adc_in_TDATA in_data 0 8 }  { adc_in_TVALID in_vld 0 1 }  { adc_in_TREADY in_acc 1 1 } } }
	packed_out { axis {  { packed_out_TDATA out_data 1 32 }  { packed_out_TVALID out_vld 1 1 }  { packed_out_TREADY out_acc 0 1 } } }
	bits_per_sample { ap_none {  { bits_per_sample in_data 0 5 } } }
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
