set SynModuleInfo {
  {SRCNAME packetizer_Pipeline_VITIS_LOOP_38_1 MODELNAME packetizer_Pipeline_VITIS_LOOP_38_1 RTLNAME packetizer_packetizer_Pipeline_VITIS_LOOP_38_1
    SUBMODULES {
      {MODELNAME packetizer_flow_control_loop_pipe_sequential_init RTLNAME packetizer_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME packetizer_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME packetizer MODELNAME packetizer RTLNAME packetizer IS_TOP 1
    SUBMODULES {
      {MODELNAME packetizer_regslice_both RTLNAME packetizer_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
}
