set SynModuleInfo {
  {SRCNAME vdif_chain_Pipeline_VITIS_LOOP_46_3 MODELNAME vdif_chain_Pipeline_VITIS_LOOP_46_3 RTLNAME vdif_chain_vdif_chain_Pipeline_VITIS_LOOP_46_3
    SUBMODULES {
      {MODELNAME vdif_chain_partset_32ns_32ns_8ns_5ns_32_1_1 RTLNAME vdif_chain_partset_32ns_32ns_8ns_5ns_32_1_1 BINDTYPE op TYPE partset IMPL auto}
      {MODELNAME vdif_chain_flow_control_loop_pipe_sequential_init RTLNAME vdif_chain_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME vdif_chain_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME vdif_chain_Pipeline_VITIS_LOOP_33_2 MODELNAME vdif_chain_Pipeline_VITIS_LOOP_33_2 RTLNAME vdif_chain_vdif_chain_Pipeline_VITIS_LOOP_33_2
    SUBMODULES {
      {MODELNAME vdif_chain_partset_32ns_32ns_4ns_5ns_32_1_1 RTLNAME vdif_chain_partset_32ns_32ns_4ns_5ns_32_1_1 BINDTYPE op TYPE partset IMPL auto}
    }
  }
  {SRCNAME vdif_chain_Pipeline_VITIS_LOOP_20_1 MODELNAME vdif_chain_Pipeline_VITIS_LOOP_20_1 RTLNAME vdif_chain_vdif_chain_Pipeline_VITIS_LOOP_20_1
    SUBMODULES {
      {MODELNAME vdif_chain_partset_32ns_32ns_2ns_5ns_32_1_1 RTLNAME vdif_chain_partset_32ns_32ns_2ns_5ns_32_1_1 BINDTYPE op TYPE partset IMPL auto}
    }
  }
  {SRCNAME packetizer_Pipeline_VITIS_LOOP_194_1 MODELNAME packetizer_Pipeline_VITIS_LOOP_194_1 RTLNAME vdif_chain_packetizer_Pipeline_VITIS_LOOP_194_1}
  {SRCNAME packetizer_Pipeline_VITIS_LOOP_253_2 MODELNAME packetizer_Pipeline_VITIS_LOOP_253_2 RTLNAME vdif_chain_packetizer_Pipeline_VITIS_LOOP_253_2}
  {SRCNAME packetizer MODELNAME packetizer RTLNAME vdif_chain_packetizer
    SUBMODULES {
      {MODELNAME vdif_chain_fifo_w32_d2048_A RTLNAME vdif_chain_fifo_w32_d2048_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME fifo_U}
    }
  }
  {SRCNAME vdif_chain MODELNAME vdif_chain RTLNAME vdif_chain IS_TOP 1
    SUBMODULES {
      {MODELNAME vdif_chain_fifo_w32_d2048_A_x RTLNAME vdif_chain_fifo_w32_d2048_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME packed_stream_U}
      {MODELNAME vdif_chain_fifo_w32_d2048_A_x RTLNAME vdif_chain_fifo_w32_d2048_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME packetizer_in_U}
      {MODELNAME vdif_chain_regslice_both RTLNAME vdif_chain_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
