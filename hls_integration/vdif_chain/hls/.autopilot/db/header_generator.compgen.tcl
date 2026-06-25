# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# XIL_BRAM:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::xil_bram_gen] == "::AESL_LIB_XILADAPTER::xil_bram_gen"} {
eval "::AESL_LIB_XILADAPTER::xil_bram_gen { \
    id 67 \
    name header \
    reset_level 1 \
    sync_rst true \
    dir O \
    corename header \
    op interface \
    ports { header_address0 { O 3 vector } header_ce0 { O 1 bit } header_we0 { O 1 bit } header_d0 { O 32 vector } header_address1 { O 3 vector } header_ce1 { O 1 bit } header_we1 { O 1 bit } header_d1 { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'header'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 59 \
    name p_read \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read \
    op interface \
    ports { p_read { I 30 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 60 \
    name p_read1 \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_p_read1 \
    op interface \
    ports { p_read1 { I 24 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 61 \
    name epoch \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_epoch \
    op interface \
    ports { epoch_dout { I 6 vector } epoch_empty_n { I 1 bit } epoch_read { O 1 bit } epoch_num_data_valid { I 3 vector } epoch_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 62 \
    name station_id \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_station_id \
    op interface \
    ports { station_id_dout { I 16 vector } station_id_empty_n { I 1 bit } station_id_read { O 1 bit } station_id_num_data_valid { I 3 vector } station_id_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 63 \
    name thread_id \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_thread_id \
    op interface \
    ports { thread_id_dout { I 10 vector } thread_id_empty_n { I 1 bit } thread_id_read { O 1 bit } thread_id_num_data_valid { I 3 vector } thread_id_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 64 \
    name bits_per_sample \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bits_per_sample \
    op interface \
    ports { bits_per_sample_dout { I 5 vector } bits_per_sample_empty_n { I 1 bit } bits_per_sample_read { O 1 bit } bits_per_sample_num_data_valid { I 3 vector } bits_per_sample_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 65 \
    name complex_data \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_complex_data \
    op interface \
    ports { complex_data_dout { I 1 vector } complex_data_empty_n { I 1 bit } complex_data_read { O 1 bit } complex_data_num_data_valid { I 3 vector } complex_data_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 66 \
    name payload_words \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_payload_words \
    op interface \
    ports { payload_words_dout { I 16 vector } payload_words_empty_n { I 1 bit } payload_words_read { O 1 bit } payload_words_num_data_valid { I 3 vector } payload_words_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 1 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } ap_continue { I 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -2 \
    name ap_return \
    type ap_return \
    reset_level 1 \
    sync_rst true \
    corename ap_return \
    op interface \
    ports { ap_return { O 16 vector } } \
} "
}


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -3 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_clk \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-113\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}


# Adapter definition:
set PortName ap_rst
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -4 \
    name ${PortName} \
    reset_level 1 \
    sync_rst true \
    corename apif_ap_rst \
    data_wd ${DataWd} \
    op interface \
}"
} else {
puts "@W \[IMPL-114\] Cannot find bus interface model in the library. Ignored generation of bus interface for '${PortName}'"
}
}



# merge
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_end
    cg_default_interface_gen_bundle_end
    AESL_LIB_XILADAPTER::native_axis_end
}


