# This script segment is generated automatically by AutoPilot

if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_fifo_w32_d2048_A BINDTYPE {storage} TYPE {fifo} IMPL {memory} ALLOW_PRAGMA 1 INSTNAME {packed_stream_U}
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
    id 28 \
    name adc_in \
    reset_level 1 \
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


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 27 \
    name payload_words \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_payload_words \
    op interface \
    ports { payload_words { I 16 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 29 \
    name bits_per_sample \
    type other \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_bits_per_sample \
    op interface \
    ports { bits_per_sample { I 5 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 30 \
    name packetizer_in \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_packetizer_in \
    op interface \
    ports { packetizer_in_din { O 32 vector } packetizer_in_full_n { I 1 bit } packetizer_in_write { O 1 bit } packetizer_in_num_data_valid { I 12 vector } packetizer_in_fifo_cap { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 31 \
    name bram_stream \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_bram_stream \
    op interface \
    ports { bram_stream_din { O 32 vector } bram_stream_full_n { I 1 bit } bram_stream_write { O 1 bit } bram_stream_num_data_valid { I 12 vector } bram_stream_fifo_cap { I 12 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 32 \
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
    id 33 \
    name payload_words_c \
    type fifo \
    dir O \
    reset_level 1 \
    sync_rst true \
    corename dc_payload_words_c \
    op interface \
    ports { payload_words_c_din { O 16 vector } payload_words_c_full_n { I 1 bit } payload_words_c_write { O 1 bit } payload_words_c_num_data_valid { I 3 vector } payload_words_c_fifo_cap { I 3 vector } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 34 \
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


if {${::AESL::PGuard_rtl_comp_handler}} {
	::AP::rtl_comp_handler vdif_chain_regslice_both BINDTYPE {interface} TYPE {adapter} IMPL {reg_slice}
}


