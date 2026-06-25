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
    id 1 \
    name epoch \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_epoch \
    op interface \
    ports { epoch { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 2 \
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
    id 3 \
    name station_id \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_station_id \
    op interface \
    ports { station_id { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
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
    id 5 \
    name thread_id \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_thread_id \
    op interface \
    ports { thread_id { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
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
    id 7 \
    name complex_data \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_complex_data \
    op interface \
    ports { complex_data { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 8 \
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
    id 9 \
    name pps \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pps \
    op interface \
    ports { pps { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 10 \
    name pps_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_pps_c \
    op interface \
    ports { pps_c_din { O 1 vector } pps_c_full_n { I 1 bit } pps_c_write { O 1 bit } pps_c_num_data_valid { I 3 vector } pps_c_fifo_cap { I 3 vector } } \
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


