set SynModuleInfo {
  {SRCNAME sample_packer_Pipeline_VITIS_LOOP_46_3 MODELNAME sample_packer_Pipeline_VITIS_LOOP_46_3 RTLNAME sample_packer_sample_packer_Pipeline_VITIS_LOOP_46_3
    SUBMODULES {
      {MODELNAME sample_packer_partset_32ns_32ns_8ns_5ns_32_1_1 RTLNAME sample_packer_partset_32ns_32ns_8ns_5ns_32_1_1 BINDTYPE op TYPE partset IMPL auto}
      {MODELNAME sample_packer_flow_control_loop_pipe_sequential_init RTLNAME sample_packer_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME sample_packer_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sample_packer_Pipeline_VITIS_LOOP_33_2 MODELNAME sample_packer_Pipeline_VITIS_LOOP_33_2 RTLNAME sample_packer_sample_packer_Pipeline_VITIS_LOOP_33_2
    SUBMODULES {
      {MODELNAME sample_packer_partset_32ns_32ns_4ns_5ns_32_1_1 RTLNAME sample_packer_partset_32ns_32ns_4ns_5ns_32_1_1 BINDTYPE op TYPE partset IMPL auto}
    }
  }
  {SRCNAME sample_packer_Pipeline_VITIS_LOOP_20_1 MODELNAME sample_packer_Pipeline_VITIS_LOOP_20_1 RTLNAME sample_packer_sample_packer_Pipeline_VITIS_LOOP_20_1
    SUBMODULES {
      {MODELNAME sample_packer_partset_32ns_32ns_2ns_5ns_32_1_1 RTLNAME sample_packer_partset_32ns_32ns_2ns_5ns_32_1_1 BINDTYPE op TYPE partset IMPL auto}
    }
  }
  {SRCNAME sample_packer MODELNAME sample_packer RTLNAME sample_packer IS_TOP 1
    SUBMODULES {
      {MODELNAME sample_packer_regslice_both RTLNAME sample_packer_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
