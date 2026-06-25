# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_packetizer_header_RAM_AUTO_1R1W_memcore BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_packetizer_header_RAM_AUTO_1R1W BINDTYPE {storage} TYPE {ram} IMPL {auto} LATENCY 2 ALLOW_PRAGMA 1
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w16_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {p_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w6_d3_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {epoch_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w16_d3_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {station_id_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w10_d3_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {thread_id_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w5_d3_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {bits_per_sample_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w1_d3_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {complex_data_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w16_d3_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {payload_words_c1_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w30_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {seconds_from_epoch_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w24_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {frame_no_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w16_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {payload_words_c_channel_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w32_d8192_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {fifo_U}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 113 \
    name out_stream_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TDATA { O 32 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 114 \
    name out_stream_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TKEEP { O 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 115 \
    name out_stream_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TSTRB { O 4 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 116 \
    name out_stream_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {out_stream} \
    metadata {  } \
    op interface \
    ports { out_stream_TLAST { O 1 vector } out_stream_TVALID { O 1 bit } out_stream_TREADY { I 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'out_stream_V_last_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 112 \
    name packetizer_in \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_packetizer_in \
    op interface \
    ports { packetizer_in_dout { I 32 vector } packetizer_in_empty_n { I 1 bit } packetizer_in_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 117 \
    name epoch \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_epoch \
    op interface \
    ports { epoch_dout { I 6 vector } epoch_empty_n { I 1 bit } epoch_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 118 \
    name station_id \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_station_id \
    op interface \
    ports { station_id_dout { I 16 vector } station_id_empty_n { I 1 bit } station_id_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 119 \
    name thread_id \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_thread_id \
    op interface \
    ports { thread_id_dout { I 10 vector } thread_id_empty_n { I 1 bit } thread_id_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 120 \
    name bits_per_sample \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bits_per_sample \
    op interface \
    ports { bits_per_sample_dout { I 5 vector } bits_per_sample_empty_n { I 1 bit } bits_per_sample_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 121 \
    name complex_data \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_complex_data \
    op interface \
    ports { complex_data_dout { I 1 vector } complex_data_empty_n { I 1 bit } complex_data_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 122 \
    name pps \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_pps \
    op interface \
    ports { pps_dout { I 1 vector } pps_empty_n { I 1 bit } pps_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 123 \
    name payload_words \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_payload_words \
    op interface \
    ports { payload_words_dout { I 16 vector } payload_words_empty_n { I 1 bit } payload_words_read { O 1 bit } } \
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


