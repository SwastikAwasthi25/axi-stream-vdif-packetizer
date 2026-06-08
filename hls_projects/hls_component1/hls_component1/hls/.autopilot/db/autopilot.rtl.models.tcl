set SynModuleInfo {
  {SRCNAME packetizer_Pipeline_VITIS_LOOP_36_1 MODELNAME packetizer_Pipeline_VITIS_LOOP_36_1 RTLNAME packetizer_packetizer_Pipeline_VITIS_LOOP_36_1
    SUBMODULES {
      {MODELNAME packetizer_flow_control_loop_pipe_sequential_init RTLNAME packetizer_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME packetizer_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME packetizer_Pipeline_VITIS_LOOP_94_2 MODELNAME packetizer_Pipeline_VITIS_LOOP_94_2 RTLNAME packetizer_packetizer_Pipeline_VITIS_LOOP_94_2}
  {SRCNAME packetizer MODELNAME packetizer RTLNAME packetizer IS_TOP 1
    SUBMODULES {
      {MODELNAME packetizer_fifo_w32_d8_S RTLNAME packetizer_fifo_w32_d8_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME fifo_U}
      {MODELNAME packetizer_regslice_both RTLNAME packetizer_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
