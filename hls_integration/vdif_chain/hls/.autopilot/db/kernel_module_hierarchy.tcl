set ModuleHierarchy {[{
"Name" : "vdif_chain", "RefName" : "vdif_chain","ID" : "0","Type" : "sequential",
"SubInsts" : [
	{"Name" : "grp_packetizer_fu_225", "RefName" : "packetizer","ID" : "1","Type" : "sequential",
		"SubInsts" : [
		{"Name" : "grp_packetizer_Pipeline_VITIS_LOOP_194_1_fu_212", "RefName" : "packetizer_Pipeline_VITIS_LOOP_194_1","ID" : "2","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_194_1","RefName" : "VITIS_LOOP_194_1","ID" : "3","Type" : "pipeline"},]},
		{"Name" : "grp_packetizer_Pipeline_VITIS_LOOP_273_2_fu_221", "RefName" : "packetizer_Pipeline_VITIS_LOOP_273_2","ID" : "4","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_273_2","RefName" : "VITIS_LOOP_273_2","ID" : "5","Type" : "pipeline"},]},]},],
"SubLoops" : [
	{"Name" : "VITIS_LOOP_69_1","RefName" : "VITIS_LOOP_69_1","ID" : "6","Type" : "no",
	"SubInsts" : [
	{"Name" : "grp_vdif_chain_Pipeline_VITIS_LOOP_46_3_fu_204", "RefName" : "vdif_chain_Pipeline_VITIS_LOOP_46_3","ID" : "7","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_46_3","RefName" : "VITIS_LOOP_46_3","ID" : "8","Type" : "pipeline"},]},
	{"Name" : "grp_vdif_chain_Pipeline_VITIS_LOOP_33_2_fu_211", "RefName" : "vdif_chain_Pipeline_VITIS_LOOP_33_2","ID" : "9","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_33_2","RefName" : "VITIS_LOOP_33_2","ID" : "10","Type" : "pipeline"},]},
	{"Name" : "grp_vdif_chain_Pipeline_VITIS_LOOP_20_1_fu_218", "RefName" : "vdif_chain_Pipeline_VITIS_LOOP_20_1","ID" : "11","Type" : "sequential",
			"SubLoops" : [
			{"Name" : "VITIS_LOOP_20_1","RefName" : "VITIS_LOOP_20_1","ID" : "12","Type" : "pipeline"},]},]},]
}]}