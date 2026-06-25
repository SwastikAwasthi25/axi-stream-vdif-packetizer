# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w6_d3_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {epoch_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w16_d3_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {station_id_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w10_d3_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {thread_id_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w1_d3_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {complex_data_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w1_d3_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {pps_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w32_d2048_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {packetizer_in_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w32_d2048_A_x BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {bram_stream_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w5_d2_S BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {bits_per_sample_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w16_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {payload_words_c_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w16_d2_S_x BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {payload_words_c1_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_start_for_packetizer_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_packetizer_U0_U}
}


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_start_for_axis_bram_writer_U0 BINDTYPE {storage} TYPE {fifo} IMPL {srl} ALLOW_PRAGMA 1 INSTNAME {start_for_axis_bram_writer_U0_U}
}


# clear list
if {${::AESL::PGuard_autoexp_gen}} {
    cg_default_interface_gen_dc_begin
    cg_default_interface_gen_bundle_begin
    AESL_LIB_XILADAPTER::native_axis_begin
}

set axilite_register_dict [dict create]
# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 140 \
    name adc_in \
    reset_level 0 \
    sync_rst true \
    corename {} \
    metadata {  } \
    op interface \
    ports { adc_in_TDATA { I 8 vector } adc_in_TVALID { I 1 bit } adc_in_TREADY { O 1 bit } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'adc_in'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 141 \
    name out_stream_V_data_V \
    reset_level 0 \
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
    id 142 \
    name out_stream_V_keep_V \
    reset_level 0 \
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
    id 143 \
    name out_stream_V_strb_V \
    reset_level 0 \
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
    id 144 \
    name out_stream_V_last_V \
    reset_level 0 \
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
    id 145 \
    name epoch \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_epoch \
    op interface \
    ports { epoch { I 6 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 146 \
    name station_id \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_station_id \
    op interface \
    ports { station_id { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 147 \
    name thread_id \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_thread_id \
    op interface \
    ports { thread_id { I 10 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 148 \
    name bits_per_sample \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_bits_per_sample \
    op interface \
    ports { bits_per_sample { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 149 \
    name complex_data \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_complex_data \
    op interface \
    ports { complex_data { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 150 \
    name pps \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_pps \
    op interface \
    ports { pps { I 1 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 151 \
    name payload_words \
    type other \
    dir I \
    reset_level 0 \
    sync_rst true \
    corename dc_payload_words \
    op interface \
    ports { payload_words { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id -1 \
    name ap_ctrl \
    type ap_ctrl \
    reset_level 0 \
    sync_rst true \
    corename ap_ctrl \
    op interface \
    ports { ap_start { I 1 bit } ap_ready { O 1 bit } ap_done { O 1 bit } ap_idle { O 1 bit } } \
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
    reset_level 0 \
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
set PortName ap_rst_n
set DataWd 1 
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc cg_default_interface_gen_reset] == "cg_default_interface_gen_reset"} {
eval "cg_default_interface_gen_reset { \
    id -3 \
    name ${PortName} \
    reset_level 0 \
    sync_rst true \
    corename apif_ap_rst_n \
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


