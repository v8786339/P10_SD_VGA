
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set dst_axi_group [add_wave_group dst_axi(axis) -into $coutputgroup]
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/dst_axi_TREADY -into $dst_axi_group -color #ffff00 -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/dst_axi_TVALID -into $dst_axi_group -color #ffff00 -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/dst_axi_TDEST -into $dst_axi_group -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/dst_axi_TID -into $dst_axi_group -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/dst_axi_TLAST -into $dst_axi_group -color #ffff00 -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/dst_axi_TUSER -into $dst_axi_group -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/dst_axi_TSTRB -into $dst_axi_group -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/dst_axi_TKEEP -into $dst_axi_group -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/dst_axi_TDATA -into $dst_axi_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set src_axi0_group [add_wave_group src_axi0(axis) -into $cinputgroup]
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/src_axi0_TREADY -into $src_axi0_group -color #ffff00 -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/src_axi0_TVALID -into $src_axi0_group -color #ffff00 -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/src_axi0_TDEST -into $src_axi0_group -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/src_axi0_TID -into $src_axi0_group -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/src_axi0_TLAST -into $src_axi0_group -color #ffff00 -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/src_axi0_TUSER -into $src_axi0_group -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/src_axi0_TSTRB -into $src_axi0_group -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/src_axi0_TKEEP -into $src_axi0_group -radix hex
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/src_axi0_TDATA -into $src_axi0_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/ap_done -into $blocksiggroup
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/ap_start -into $blocksiggroup
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/ap_ready -into $blocksiggroup
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/ap_idle -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_vip1_m_top/AESL_inst_vip1_m/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_vip1_m_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_vip1_m_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_vip1_m_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_src_axi0_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_src_axi0_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_src_axi0_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_src_axi0_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_src_axi0_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_src_axi0_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_src_axi0_V_dest_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_dst_axi_V_data_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_dst_axi_V_keep_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_dst_axi_V_strb_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_dst_axi_V_user_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_dst_axi_V_last_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_dst_axi_V_id_V -into $tb_portdepth_group -radix hex
add_wave /apatb_vip1_m_top/LENGTH_dst_axi_V_dest_V -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_dst_axi_group [add_wave_group dst_axi(axis) -into $tbcoutputgroup]
add_wave /apatb_vip1_m_top/dst_axi_TREADY -into $tb_dst_axi_group -color #ffff00 -radix hex
add_wave /apatb_vip1_m_top/dst_axi_TVALID -into $tb_dst_axi_group -color #ffff00 -radix hex
add_wave /apatb_vip1_m_top/dst_axi_TDEST -into $tb_dst_axi_group -radix hex
add_wave /apatb_vip1_m_top/dst_axi_TID -into $tb_dst_axi_group -radix hex
add_wave /apatb_vip1_m_top/dst_axi_TLAST -into $tb_dst_axi_group -color #ffff00 -radix hex
add_wave /apatb_vip1_m_top/dst_axi_TUSER -into $tb_dst_axi_group -radix hex
add_wave /apatb_vip1_m_top/dst_axi_TSTRB -into $tb_dst_axi_group -radix hex
add_wave /apatb_vip1_m_top/dst_axi_TKEEP -into $tb_dst_axi_group -radix hex
add_wave /apatb_vip1_m_top/dst_axi_TDATA -into $tb_dst_axi_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_src_axi0_group [add_wave_group src_axi0(axis) -into $tbcinputgroup]
add_wave /apatb_vip1_m_top/src_axi0_TREADY -into $tb_src_axi0_group -color #ffff00 -radix hex
add_wave /apatb_vip1_m_top/src_axi0_TVALID -into $tb_src_axi0_group -color #ffff00 -radix hex
add_wave /apatb_vip1_m_top/src_axi0_TDEST -into $tb_src_axi0_group -radix hex
add_wave /apatb_vip1_m_top/src_axi0_TID -into $tb_src_axi0_group -radix hex
add_wave /apatb_vip1_m_top/src_axi0_TLAST -into $tb_src_axi0_group -color #ffff00 -radix hex
add_wave /apatb_vip1_m_top/src_axi0_TUSER -into $tb_src_axi0_group -radix hex
add_wave /apatb_vip1_m_top/src_axi0_TSTRB -into $tb_src_axi0_group -radix hex
add_wave /apatb_vip1_m_top/src_axi0_TKEEP -into $tb_src_axi0_group -radix hex
add_wave /apatb_vip1_m_top/src_axi0_TDATA -into $tb_src_axi0_group -radix hex
save_wave_config vip1_m.wcfg
run all
quit

