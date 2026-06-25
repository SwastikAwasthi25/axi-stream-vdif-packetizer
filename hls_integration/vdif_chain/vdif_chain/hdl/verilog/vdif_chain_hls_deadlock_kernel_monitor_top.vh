
wire kernel_monitor_reset;
wire kernel_monitor_clock;
wire kernel_monitor_report;
assign kernel_monitor_reset = ~ap_rst_n;
assign kernel_monitor_clock = ap_clk;
assign kernel_monitor_report = 1'b0;
wire [4:0] axis_block_sigs;
wire [19:0] inst_idle_sigs;
wire [8:0] inst_block_sigs;
wire kernel_block;

assign axis_block_sigs[0] = ~Loop_VITIS_LOOP_71_1_proc_U0.grp_sample_packer_fu_127.grp_sample_packer_Pipeline_VITIS_LOOP_47_3_fu_67.adc_in_TDATA_blk_n;
assign axis_block_sigs[1] = ~Loop_VITIS_LOOP_71_1_proc_U0.grp_sample_packer_fu_127.grp_sample_packer_Pipeline_VITIS_LOOP_34_2_fu_74.adc_in_TDATA_blk_n;
assign axis_block_sigs[2] = ~Loop_VITIS_LOOP_71_1_proc_U0.grp_sample_packer_fu_127.grp_sample_packer_Pipeline_VITIS_LOOP_21_1_fu_81.adc_in_TDATA_blk_n;
assign axis_block_sigs[3] = ~packetizer_U0.packetizer_Block_entry_out_stream_V_data_V_wr_proc_U0.grp_write_header_fu_50.out_stream_TDATA_blk_n;
assign axis_block_sigs[4] = ~packetizer_U0.packetizer_Block_entry_out_stream_V_data_V_wr_proc_U0.grp_write_payload_fu_64.grp_write_payload_Pipeline_VITIS_LOOP_16_1_fu_44.out_stream_TDATA_blk_n;

assign inst_idle_sigs[0] = entry_proc7_U0.ap_idle;
assign inst_block_sigs[0] = (entry_proc7_U0.ap_done & ~entry_proc7_U0.ap_continue) | ~packetizer_U0.entry_proc_U0.epoch_blk_n | ~packetizer_U0.entry_proc_U0.epoch_c_blk_n | ~packetizer_U0.entry_proc_U0.station_id_blk_n | ~packetizer_U0.entry_proc_U0.station_id_c_blk_n | ~packetizer_U0.entry_proc_U0.thread_id_blk_n | ~packetizer_U0.entry_proc_U0.thread_id_c_blk_n | ~packetizer_U0.entry_proc_U0.bits_per_sample_blk_n | ~packetizer_U0.entry_proc_U0.bits_per_sample_c_blk_n | ~packetizer_U0.entry_proc_U0.complex_data_blk_n | ~packetizer_U0.entry_proc_U0.complex_data_c_blk_n | ~packetizer_U0.entry_proc_U0.payload_words_blk_n | ~packetizer_U0.entry_proc_U0.payload_words_c1_blk_n;
assign inst_idle_sigs[1] = Loop_VITIS_LOOP_71_1_proc_U0.ap_idle;
assign inst_block_sigs[1] = (Loop_VITIS_LOOP_71_1_proc_U0.ap_done & ~Loop_VITIS_LOOP_71_1_proc_U0.ap_continue) | ~packetizer_U0.timestamp_engine_U0.pps_blk_n;
assign inst_idle_sigs[2] = packetizer_U0.ap_idle;
assign inst_block_sigs[2] = (packetizer_U0.ap_done & ~packetizer_U0.ap_continue);
assign inst_idle_sigs[3] = packetizer_U0.entry_proc_U0.ap_idle;
assign inst_block_sigs[3] = (packetizer_U0.entry_proc_U0.ap_done & ~packetizer_U0.entry_proc_U0.ap_continue) | ~packetizer_U0.header_generator_U0.epoch_blk_n | ~packetizer_U0.header_generator_U0.station_id_blk_n | ~packetizer_U0.header_generator_U0.thread_id_blk_n | ~packetizer_U0.header_generator_U0.bits_per_sample_blk_n | ~packetizer_U0.header_generator_U0.complex_data_blk_n | ~packetizer_U0.header_generator_U0.payload_words_blk_n;
assign inst_idle_sigs[4] = packetizer_U0.timestamp_engine_U0.ap_idle;
assign inst_block_sigs[4] = (packetizer_U0.timestamp_engine_U0.ap_done & ~packetizer_U0.timestamp_engine_U0.ap_continue) | ~packetizer_U0.read_payload_U0.packetizer_in_blk_n | ~packetizer_U0.read_payload_U0.fifo_blk_n;
assign inst_idle_sigs[5] = packetizer_U0.packetizer_Block_entry_fsm_state_fb_proc_U0.ap_idle;
assign inst_block_sigs[5] = (packetizer_U0.packetizer_Block_entry_fsm_state_fb_proc_U0.ap_done & ~packetizer_U0.packetizer_Block_entry_fsm_state_fb_proc_U0.ap_continue) | ~packetizer_U0.packetizer_Block_entry_out_stream_V_data_V_wr_proc_U0.grp_write_payload_fu_64.grp_write_payload_Pipeline_VITIS_LOOP_16_1_fu_44.fifo_blk_n;
assign inst_idle_sigs[6] = packetizer_U0.header_generator_U0.ap_idle;
assign inst_block_sigs[6] = (packetizer_U0.header_generator_U0.ap_done & ~packetizer_U0.header_generator_U0.ap_continue) | ~entry_proc7_U0.epoch_c_blk_n | ~entry_proc7_U0.station_id_c_blk_n | ~entry_proc7_U0.thread_id_c_blk_n | ~entry_proc7_U0.complex_data_c_blk_n | ~entry_proc7_U0.pps_c_blk_n;
assign inst_idle_sigs[7] = packetizer_U0.read_payload_U0.ap_idle;
assign inst_block_sigs[7] = (packetizer_U0.read_payload_U0.ap_done & ~packetizer_U0.read_payload_U0.ap_continue) | ~Loop_VITIS_LOOP_71_1_proc_U0.packetizer_in_blk_n | ~Loop_VITIS_LOOP_71_1_proc_U0.bits_per_sample_c_blk_n | ~Loop_VITIS_LOOP_71_1_proc_U0.payload_words_c_blk_n;
assign inst_idle_sigs[8] = packetizer_U0.packetizer_Block_entry_out_stream_V_data_V_wr_proc_U0.ap_idle;
assign inst_block_sigs[8] = (packetizer_U0.packetizer_Block_entry_out_stream_V_data_V_wr_proc_U0.ap_done & ~packetizer_U0.packetizer_Block_entry_out_stream_V_data_V_wr_proc_U0.ap_continue) | ~packetizer_U0.read_payload_U0.packetizer_in_blk_n | ~packetizer_U0.entry_proc_U0.epoch_blk_n | ~packetizer_U0.entry_proc_U0.station_id_blk_n | ~packetizer_U0.entry_proc_U0.thread_id_blk_n | ~packetizer_U0.entry_proc_U0.bits_per_sample_blk_n | ~packetizer_U0.entry_proc_U0.complex_data_blk_n | ~packetizer_U0.timestamp_engine_U0.pps_blk_n | ~packetizer_U0.entry_proc_U0.payload_words_blk_n;

assign inst_idle_sigs[9] = 1'b0;
assign inst_idle_sigs[10] = Loop_VITIS_LOOP_71_1_proc_U0.ap_idle;
assign inst_idle_sigs[11] = Loop_VITIS_LOOP_71_1_proc_U0.grp_sample_packer_fu_127.ap_idle;
assign inst_idle_sigs[12] = Loop_VITIS_LOOP_71_1_proc_U0.grp_sample_packer_fu_127.grp_sample_packer_Pipeline_VITIS_LOOP_47_3_fu_67.ap_idle;
assign inst_idle_sigs[13] = Loop_VITIS_LOOP_71_1_proc_U0.grp_sample_packer_fu_127.grp_sample_packer_Pipeline_VITIS_LOOP_34_2_fu_74.ap_idle;
assign inst_idle_sigs[14] = Loop_VITIS_LOOP_71_1_proc_U0.grp_sample_packer_fu_127.grp_sample_packer_Pipeline_VITIS_LOOP_21_1_fu_81.ap_idle;
assign inst_idle_sigs[15] = packetizer_U0.ap_idle;
assign inst_idle_sigs[16] = packetizer_U0.packetizer_Block_entry_out_stream_V_data_V_wr_proc_U0.ap_idle;
assign inst_idle_sigs[17] = packetizer_U0.packetizer_Block_entry_out_stream_V_data_V_wr_proc_U0.grp_write_header_fu_50.ap_idle;
assign inst_idle_sigs[18] = packetizer_U0.packetizer_Block_entry_out_stream_V_data_V_wr_proc_U0.grp_write_payload_fu_64.ap_idle;
assign inst_idle_sigs[19] = packetizer_U0.packetizer_Block_entry_out_stream_V_data_V_wr_proc_U0.grp_write_payload_fu_64.grp_write_payload_Pipeline_VITIS_LOOP_16_1_fu_44.ap_idle;

vdif_chain_hls_deadlock_idx0_monitor vdif_chain_hls_deadlock_idx0_monitor_U (
    .clock(kernel_monitor_clock),
    .reset(kernel_monitor_reset),
    .axis_block_sigs(axis_block_sigs),
    .inst_idle_sigs(inst_idle_sigs),
    .inst_block_sigs(inst_block_sigs),
    .block(kernel_block)
);


always @ (kernel_block or kernel_monitor_reset) begin
    if (kernel_block == 1'b1 && kernel_monitor_reset == 1'b0) begin
        find_kernel_block = 1'b1;
    end
    else begin
        find_kernel_block = 1'b0;
    end
end
