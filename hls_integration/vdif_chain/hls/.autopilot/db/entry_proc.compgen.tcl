# This script segment is generated automatically by AutoPilot

# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 36 \
    name return_r \
    type other \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_return_r \
    op interface \
    ports { return_r { O 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 37 \
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
    id 38 \
    name epoch_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_epoch_c \
    op interface \
    ports { epoch_c_din { O 6 vector } epoch_c_full_n { I 1 bit } epoch_c_write { O 1 bit } epoch_c_num_data_valid { I 3 vector } epoch_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 39 \
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
    id 40 \
    name station_id_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_station_id_c \
    op interface \
    ports { station_id_c_din { O 16 vector } station_id_c_full_n { I 1 bit } station_id_c_write { O 1 bit } station_id_c_num_data_valid { I 3 vector } station_id_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 41 \
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
    id 42 \
    name thread_id_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_thread_id_c \
    op interface \
    ports { thread_id_c_din { O 10 vector } thread_id_c_full_n { I 1 bit } thread_id_c_write { O 1 bit } thread_id_c_num_data_valid { I 3 vector } thread_id_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 43 \
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
    id 44 \
    name bits_per_sample_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bits_per_sample_c \
    op interface \
    ports { bits_per_sample_c_din { O 5 vector } bits_per_sample_c_full_n { I 1 bit } bits_per_sample_c_write { O 1 bit } bits_per_sample_c_num_data_valid { I 3 vector } bits_per_sample_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 45 \
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
    id 46 \
    name complex_data_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_complex_data_c \
    op interface \
    ports { complex_data_c_din { O 1 vector } complex_data_c_full_n { I 1 bit } complex_data_c_write { O 1 bit } complex_data_c_num_data_valid { I 3 vector } complex_data_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 47 \
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
    id 48 \
    name payload_words_c1 \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_payload_words_c1 \
    op interface \
    ports { payload_words_c1_din { O 16 vector } payload_words_c1_full_n { I 1 bit } payload_words_c1_write { O 1 bit } payload_words_c1_num_data_valid { I 3 vector } payload_words_c1_fifo_cap { I 3 vector } } \
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


# Adapter definition:
set PortName ap_clk
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_clock] == "cg_default_interface_gen_clock"} {
eval "cg_default_interface_gen_clock { \
    id -2 \
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
    id -3 \
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


