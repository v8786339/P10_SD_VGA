# This script segment is generated automatically by AutoPilot

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
    id 7 \
    name AXI_video_strm_V_data_V \
    reset_level 1 \
    sync_rst true \
    corename {src_axi0} \
    metadata {  } \
    op interface \
    ports { src_axi0_TDATA { O 24 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AXI_video_strm_V_data_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 8 \
    name AXI_video_strm_V_keep_V \
    reset_level 1 \
    sync_rst true \
    corename {src_axi0} \
    metadata {  } \
    op interface \
    ports { src_axi0_TKEEP { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AXI_video_strm_V_keep_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 9 \
    name AXI_video_strm_V_strb_V \
    reset_level 1 \
    sync_rst true \
    corename {src_axi0} \
    metadata {  } \
    op interface \
    ports { src_axi0_TSTRB { O 3 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AXI_video_strm_V_strb_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 10 \
    name AXI_video_strm_V_user_V \
    reset_level 1 \
    sync_rst true \
    corename {src_axi0} \
    metadata {  } \
    op interface \
    ports { src_axi0_TUSER { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AXI_video_strm_V_user_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 11 \
    name AXI_video_strm_V_last_V \
    reset_level 1 \
    sync_rst true \
    corename {src_axi0} \
    metadata {  } \
    op interface \
    ports { src_axi0_TLAST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AXI_video_strm_V_last_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 12 \
    name AXI_video_strm_V_id_V \
    reset_level 1 \
    sync_rst true \
    corename {src_axi0} \
    metadata {  } \
    op interface \
    ports { src_axi0_TID { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AXI_video_strm_V_id_V'"
}
}


# Native AXIS:
if {${::AESL::PGuard_autoexp_gen}} {
if {[info proc ::AESL_LIB_XILADAPTER::native_axis_add] == "::AESL_LIB_XILADAPTER::native_axis_add"} {
eval "::AESL_LIB_XILADAPTER::native_axis_add { \
    id 13 \
    name AXI_video_strm_V_dest_V \
    reset_level 1 \
    sync_rst true \
    corename {src_axi0} \
    metadata {  } \
    op interface \
    ports { src_axi0_TVALID { O 1 bit } src_axi0_TREADY { I 1 bit } src_axi0_TDEST { O 1 vector } } \
} "
} else {
puts "@W \[IMPL-110\] Cannot find bus interface model in the library. Ignored generation of bus interface for 'AXI_video_strm_V_dest_V'"
}
}


# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 4 \
    name img_data_stream_0_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_data_stream_0_V \
    op interface \
    ports { img_data_stream_0_V_dout { I 8 vector } img_data_stream_0_V_empty_n { I 1 bit } img_data_stream_0_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 5 \
    name img_data_stream_1_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_data_stream_1_V \
    op interface \
    ports { img_data_stream_1_V_dout { I 8 vector } img_data_stream_1_V_empty_n { I 1 bit } img_data_stream_1_V_read { O 1 bit } } \
} "
}

# Direct connection:
if {${::AESL::PGuard_autoexp_gen}} {
eval "cg_default_interface_gen_dc { \
    id 6 \
    name img_data_stream_2_V \
    type fifo \
    dir I \
    reset_level 1 \
    sync_rst true \
    corename dc_img_data_stream_2_V \
    op interface \
    ports { img_data_stream_2_V_dout { I 8 vector } img_data_stream_2_V_empty_n { I 1 bit } img_data_stream_2_V_read { O 1 bit } } \
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


