set ModuleHierarchy {[{
"Name" : "vdif_chain", "RefName" : "vdif_chain","ID" : "0","Type" : "dataflow",
"SubInsts" : [
	{"Name" : "Loop_VITIS_LOOP_79_1_proc_U0", "RefName" : "Loop_VITIS_LOOP_79_1_proc","ID" : "1","Type" : "sequential",
		"SubLoops" : [
		{"Name" : "VITIS_LOOP_79_1","RefName" : "VITIS_LOOP_79_1","ID" : "2","Type" : "no",
		"SubInsts" : [
		{"Name" : "grp_sample_packer_fu_147", "RefName" : "sample_packer","ID" : "3","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_sample_packer_Pipeline_VITIS_LOOP_47_3_fu_67", "RefName" : "sample_packer_Pipeline_VITIS_LOOP_47_3","ID" : "4","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_47_3","RefName" : "VITIS_LOOP_47_3","ID" : "5","Type" : "pipeline"},]},
				{"Name" : "grp_sample_packer_Pipeline_VITIS_LOOP_34_2_fu_74", "RefName" : "sample_packer_Pipeline_VITIS_LOOP_34_2","ID" : "6","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_34_2","RefName" : "VITIS_LOOP_34_2","ID" : "7","Type" : "pipeline"},]},
				{"Name" : "grp_sample_packer_Pipeline_VITIS_LOOP_21_1_fu_81", "RefName" : "sample_packer_Pipeline_VITIS_LOOP_21_1","ID" : "8","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_21_1","RefName" : "VITIS_LOOP_21_1","ID" : "9","Type" : "pipeline"},]},]},]},]},
	{"Name" : "entry_proc7_U0", "RefName" : "entry_proc7","ID" : "10","Type" : "sequential"},
	{"Name" : "packetizer_U0", "RefName" : "packetizer","ID" : "11","Type" : "dataflow",
		"SubInsts" : [
		{"Name" : "entry_proc_U0", "RefName" : "entry_proc","ID" : "12","Type" : "sequential"},
		{"Name" : "timestamp_engine_U0", "RefName" : "timestamp_engine","ID" : "13","Type" : "sequential"},
		{"Name" : "read_payload_U0", "RefName" : "read_payload","ID" : "14","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_11_1","RefName" : "VITIS_LOOP_11_1","ID" : "15","Type" : "pipeline"},]},
		{"Name" : "payload_words_c_channel_U", "RefName" : "header_generator","ID" : "16","Type" : "sequential"},
		{"Name" : "packetizer_Block_entry_out_stream_V_data_V_wr_proc_U0", "RefName" : "packetizer_Block_entry_out_stream_V_data_V_wr_proc","ID" : "17","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "grp_write_header_fu_50", "RefName" : "write_header","ID" : "18","Type" : "sequential",
				"SubLoops" : [
				{"Name" : "VITIS_LOOP_15_1","RefName" : "VITIS_LOOP_15_1","ID" : "19","Type" : "pipeline"},]},
			{"Name" : "grp_write_payload_fu_64", "RefName" : "write_payload","ID" : "20","Type" : "sequential",
				"SubInsts" : [
				{"Name" : "grp_write_payload_Pipeline_VITIS_LOOP_16_1_fu_44", "RefName" : "write_payload_Pipeline_VITIS_LOOP_16_1","ID" : "21","Type" : "sequential",
					"SubLoops" : [
					{"Name" : "VITIS_LOOP_16_1","RefName" : "VITIS_LOOP_16_1","ID" : "22","Type" : "pipeline"},]},]},]},
		{"Name" : "packetizer_Block_entry_fsm_state_fb_proc_U0", "RefName" : "packetizer_Block_entry_fsm_state_fb_proc","ID" : "23","Type" : "sequential",
			"SubInsts" : [
			{"Name" : "next_state_assign_4_packet_fsm_1_fu_18", "RefName" : "packet_fsm_1","ID" : "24","Type" : "sequential"},
			{"Name" : "next_state_assign_3_packet_fsm_2_fu_23", "RefName" : "packet_fsm_2","ID" : "25","Type" : "sequential"},
			{"Name" : "next_state_assign_2_packet_fsm_fu_29", "RefName" : "packet_fsm","ID" : "26","Type" : "sequential"},]},]},
	{"Name" : "axis_bram_writer_U0", "RefName" : "axis_bram_writer","ID" : "27","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_axis_bram_writer_Pipeline_VITIS_LOOP_15_1_fu_36", "RefName" : "axis_bram_writer_Pipeline_VITIS_LOOP_15_1","ID" : "28","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_15_1","RefName" : "VITIS_LOOP_15_1","ID" : "29","Type" : "pipeline"},]},]},]
}]}