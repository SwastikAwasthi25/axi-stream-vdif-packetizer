set SynModuleInfo {
  {SRCNAME entry_proc7 MODELNAME entry_proc7 RTLNAME vdif_chain_entry_proc7}
  {SRCNAME sample_packer_Pipeline_VITIS_LOOP_47_3 MODELNAME sample_packer_Pipeline_VITIS_LOOP_47_3 RTLNAME vdif_chain_sample_packer_Pipeline_VITIS_LOOP_47_3
    SUBMODULES {
      {MODELNAME vdif_chain_partset_32ns_32ns_8ns_5ns_32_1_1 RTLNAME vdif_chain_partset_32ns_32ns_8ns_5ns_32_1_1 BINDTYPE op TYPE partset IMPL auto}
      {MODELNAME vdif_chain_flow_control_loop_pipe_sequential_init RTLNAME vdif_chain_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME vdif_chain_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME sample_packer_Pipeline_VITIS_LOOP_34_2 MODELNAME sample_packer_Pipeline_VITIS_LOOP_34_2 RTLNAME vdif_chain_sample_packer_Pipeline_VITIS_LOOP_34_2
    SUBMODULES {
      {MODELNAME vdif_chain_partset_32ns_32ns_4ns_5ns_32_1_1 RTLNAME vdif_chain_partset_32ns_32ns_4ns_5ns_32_1_1 BINDTYPE op TYPE partset IMPL auto}
    }
  }
  {SRCNAME sample_packer_Pipeline_VITIS_LOOP_21_1 MODELNAME sample_packer_Pipeline_VITIS_LOOP_21_1 RTLNAME vdif_chain_sample_packer_Pipeline_VITIS_LOOP_21_1
    SUBMODULES {
      {MODELNAME vdif_chain_partset_32ns_32ns_2ns_5ns_32_1_1 RTLNAME vdif_chain_partset_32ns_32ns_2ns_5ns_32_1_1 BINDTYPE op TYPE partset IMPL auto}
    }
  }
  {SRCNAME sample_packer MODELNAME sample_packer RTLNAME vdif_chain_sample_packer}
  {SRCNAME Loop_VITIS_LOOP_79_1_proc MODELNAME Loop_VITIS_LOOP_79_1_proc RTLNAME vdif_chain_Loop_VITIS_LOOP_79_1_proc
    SUBMODULES {
      {MODELNAME vdif_chain_fifo_w32_d2048_A RTLNAME vdif_chain_fifo_w32_d2048_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME packed_stream_U}
      {MODELNAME vdif_chain_regslice_both RTLNAME vdif_chain_regslice_both BINDTYPE interface TYPE adapter IMPL reg_slice}
    }
  }
  {SRCNAME entry_proc MODELNAME entry_proc RTLNAME vdif_chain_entry_proc}
  {SRCNAME timestamp_engine MODELNAME timestamp_engine RTLNAME vdif_chain_timestamp_engine}
  {SRCNAME packet_fsm.1 MODELNAME packet_fsm_1 RTLNAME vdif_chain_packet_fsm_1
    SUBMODULES {
      {MODELNAME vdif_chain_sparsemux_5_2_1_1_1 RTLNAME vdif_chain_sparsemux_5_2_1_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_realdef}
    }
  }
  {SRCNAME packet_fsm.2 MODELNAME packet_fsm_2 RTLNAME vdif_chain_packet_fsm_2
    SUBMODULES {
      {MODELNAME vdif_chain_sparsemux_5_2_2_1_1 RTLNAME vdif_chain_sparsemux_5_2_2_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_realdef}
    }
  }
  {SRCNAME packet_fsm MODELNAME packet_fsm RTLNAME vdif_chain_packet_fsm
    SUBMODULES {
      {MODELNAME vdif_chain_sparsemux_7_2_1_1_1 RTLNAME vdif_chain_sparsemux_7_2_1_1_1 BINDTYPE op TYPE sparsemux IMPL compactencoding_realdef}
    }
  }
  {SRCNAME packetizer_Block_entry_fsm_state_fb_proc MODELNAME packetizer_Block_entry_fsm_state_fb_proc RTLNAME vdif_chain_packetizer_Block_entry_fsm_state_fb_proc}
  {SRCNAME header_generator MODELNAME header_generator RTLNAME vdif_chain_header_generator}
  {SRCNAME read_payload MODELNAME read_payload RTLNAME vdif_chain_read_payload
    SUBMODULES {
      {MODELNAME vdif_chain_flow_control_loop_pipe RTLNAME vdif_chain_flow_control_loop_pipe BINDTYPE interface TYPE internal_upc_flow_control INSTNAME vdif_chain_flow_control_loop_pipe_U}
    }
  }
  {SRCNAME write_header MODELNAME write_header RTLNAME vdif_chain_write_header}
  {SRCNAME write_payload_Pipeline_VITIS_LOOP_16_1 MODELNAME write_payload_Pipeline_VITIS_LOOP_16_1 RTLNAME vdif_chain_write_payload_Pipeline_VITIS_LOOP_16_1}
  {SRCNAME write_payload MODELNAME write_payload RTLNAME vdif_chain_write_payload}
  {SRCNAME packetizer_Block_entry_out_stream_V_data_V_wr_proc MODELNAME packetizer_Block_entry_out_stream_V_data_V_wr_proc RTLNAME vdif_chain_packetizer_Block_entry_out_stream_V_data_V_wr_proc}
  {SRCNAME packetizer MODELNAME packetizer RTLNAME vdif_chain_packetizer
    SUBMODULES {
      {MODELNAME vdif_chain_packetizer_header_RAM_AUTO_1R1W_memcore RTLNAME vdif_chain_packetizer_header_RAM_AUTO_1R1W_memcore BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME vdif_chain_packetizer_header_RAM_AUTO_1R1W RTLNAME vdif_chain_packetizer_header_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME vdif_chain_fifo_w16_d2_S RTLNAME vdif_chain_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME p_channel_U}
      {MODELNAME vdif_chain_fifo_w6_d3_S RTLNAME vdif_chain_fifo_w6_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME epoch_c_U}
      {MODELNAME vdif_chain_fifo_w16_d3_S RTLNAME vdif_chain_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME station_id_c_U}
      {MODELNAME vdif_chain_fifo_w10_d3_S RTLNAME vdif_chain_fifo_w10_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME thread_id_c_U}
      {MODELNAME vdif_chain_fifo_w5_d3_S RTLNAME vdif_chain_fifo_w5_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME bits_per_sample_c_U}
      {MODELNAME vdif_chain_fifo_w1_d3_S RTLNAME vdif_chain_fifo_w1_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME complex_data_c_U}
      {MODELNAME vdif_chain_fifo_w16_d3_S RTLNAME vdif_chain_fifo_w16_d3_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME payload_words_c1_U}
      {MODELNAME vdif_chain_fifo_w30_d2_S RTLNAME vdif_chain_fifo_w30_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME seconds_from_epoch_U}
      {MODELNAME vdif_chain_fifo_w24_d2_S RTLNAME vdif_chain_fifo_w24_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME frame_no_U}
      {MODELNAME vdif_chain_fifo_w16_d2_S RTLNAME vdif_chain_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME payload_words_c_channel_U}
      {MODELNAME vdif_chain_fifo_w32_d8192_A RTLNAME vdif_chain_fifo_w32_d8192_A BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME fifo_U}
    }
  }
  {SRCNAME axis_bram_writer_Pipeline_VITIS_LOOP_15_1 MODELNAME axis_bram_writer_Pipeline_VITIS_LOOP_15_1 RTLNAME vdif_chain_axis_bram_writer_Pipeline_VITIS_LOOP_15_1}
  {SRCNAME axis_bram_writer MODELNAME axis_bram_writer RTLNAME vdif_chain_axis_bram_writer}
  {SRCNAME vdif_chain MODELNAME vdif_chain RTLNAME vdif_chain IS_TOP 1
    SUBMODULES {
      {MODELNAME vdif_chain_fifo_w6_d3_S_x RTLNAME vdif_chain_fifo_w6_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME epoch_c_U}
      {MODELNAME vdif_chain_fifo_w16_d3_S_x RTLNAME vdif_chain_fifo_w16_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME station_id_c_U}
      {MODELNAME vdif_chain_fifo_w10_d3_S_x RTLNAME vdif_chain_fifo_w10_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME thread_id_c_U}
      {MODELNAME vdif_chain_fifo_w1_d3_S_x RTLNAME vdif_chain_fifo_w1_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME complex_data_c_U}
      {MODELNAME vdif_chain_fifo_w1_d3_S_x RTLNAME vdif_chain_fifo_w1_d3_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME pps_c_U}
      {MODELNAME vdif_chain_fifo_w32_d2048_A_x RTLNAME vdif_chain_fifo_w32_d2048_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME packetizer_in_U}
      {MODELNAME vdif_chain_fifo_w32_d2048_A_x RTLNAME vdif_chain_fifo_w32_d2048_A_x BINDTYPE storage TYPE fifo IMPL memory ALLOW_PRAGMA 1 INSTNAME bram_stream_U}
      {MODELNAME vdif_chain_fifo_w5_d2_S RTLNAME vdif_chain_fifo_w5_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME bits_per_sample_c_U}
      {MODELNAME vdif_chain_fifo_w16_d2_S_x RTLNAME vdif_chain_fifo_w16_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME payload_words_c_U}
      {MODELNAME vdif_chain_fifo_w16_d2_S_x RTLNAME vdif_chain_fifo_w16_d2_S_x BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME payload_words_c1_U}
      {MODELNAME vdif_chain_start_for_packetizer_U0 RTLNAME vdif_chain_start_for_packetizer_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_packetizer_U0_U}
      {MODELNAME vdif_chain_start_for_axis_bram_writer_U0 RTLNAME vdif_chain_start_for_axis_bram_writer_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME start_for_axis_bram_writer_U0_U}
    }
  }
}
