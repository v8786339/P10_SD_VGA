// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "vip1_m.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_lv<24> vip1_m::ap_const_lv24_0 = "000000000000000000000000";
const sc_lv<3> vip1_m::ap_const_lv3_0 = "000";
const sc_lv<1> vip1_m::ap_const_lv1_0 = "0";
const sc_logic vip1_m::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic vip1_m::ap_const_logic_0 = sc_dt::Log_0;

vip1_m::vip1_m(sc_module_name name) : sc_module(name), mVcdFile(0) {
    AXIvideo2Mat_U0 = new AXIvideo2Mat("AXIvideo2Mat_U0");
    AXIvideo2Mat_U0->ap_clk(ap_clk);
    AXIvideo2Mat_U0->ap_rst(ap_rst_n_inv);
    AXIvideo2Mat_U0->ap_start(AXIvideo2Mat_U0_ap_start);
    AXIvideo2Mat_U0->start_full_n(start_for_Loop_loop_height_pro_U0_full_n);
    AXIvideo2Mat_U0->ap_done(AXIvideo2Mat_U0_ap_done);
    AXIvideo2Mat_U0->ap_continue(AXIvideo2Mat_U0_ap_continue);
    AXIvideo2Mat_U0->ap_idle(AXIvideo2Mat_U0_ap_idle);
    AXIvideo2Mat_U0->ap_ready(AXIvideo2Mat_U0_ap_ready);
    AXIvideo2Mat_U0->start_out(AXIvideo2Mat_U0_start_out);
    AXIvideo2Mat_U0->start_write(AXIvideo2Mat_U0_start_write);
    AXIvideo2Mat_U0->src_axi0_TDATA(src_axi0_TDATA);
    AXIvideo2Mat_U0->src_axi0_TVALID(src_axi0_TVALID);
    AXIvideo2Mat_U0->src_axi0_TREADY(AXIvideo2Mat_U0_src_axi0_TREADY);
    AXIvideo2Mat_U0->src_axi0_TKEEP(src_axi0_TKEEP);
    AXIvideo2Mat_U0->src_axi0_TSTRB(src_axi0_TSTRB);
    AXIvideo2Mat_U0->src_axi0_TUSER(src_axi0_TUSER);
    AXIvideo2Mat_U0->src_axi0_TLAST(src_axi0_TLAST);
    AXIvideo2Mat_U0->src_axi0_TID(src_axi0_TID);
    AXIvideo2Mat_U0->src_axi0_TDEST(src_axi0_TDEST);
    AXIvideo2Mat_U0->img_data_stream_0_V_din(AXIvideo2Mat_U0_img_data_stream_0_V_din);
    AXIvideo2Mat_U0->img_data_stream_0_V_full_n(imag0_0_data_stream_s_full_n);
    AXIvideo2Mat_U0->img_data_stream_0_V_write(AXIvideo2Mat_U0_img_data_stream_0_V_write);
    AXIvideo2Mat_U0->img_data_stream_1_V_din(AXIvideo2Mat_U0_img_data_stream_1_V_din);
    AXIvideo2Mat_U0->img_data_stream_1_V_full_n(imag0_0_data_stream_1_full_n);
    AXIvideo2Mat_U0->img_data_stream_1_V_write(AXIvideo2Mat_U0_img_data_stream_1_V_write);
    AXIvideo2Mat_U0->img_data_stream_2_V_din(AXIvideo2Mat_U0_img_data_stream_2_V_din);
    AXIvideo2Mat_U0->img_data_stream_2_V_full_n(imag0_0_data_stream_2_full_n);
    AXIvideo2Mat_U0->img_data_stream_2_V_write(AXIvideo2Mat_U0_img_data_stream_2_V_write);
    Loop_loop_height_pro_U0 = new Loop_loop_height_pro("Loop_loop_height_pro_U0");
    Loop_loop_height_pro_U0->ap_clk(ap_clk);
    Loop_loop_height_pro_U0->ap_rst(ap_rst_n_inv);
    Loop_loop_height_pro_U0->ap_start(Loop_loop_height_pro_U0_ap_start);
    Loop_loop_height_pro_U0->start_full_n(start_for_Mat2AXIvideo_U0_full_n);
    Loop_loop_height_pro_U0->ap_done(Loop_loop_height_pro_U0_ap_done);
    Loop_loop_height_pro_U0->ap_continue(Loop_loop_height_pro_U0_ap_continue);
    Loop_loop_height_pro_U0->ap_idle(Loop_loop_height_pro_U0_ap_idle);
    Loop_loop_height_pro_U0->ap_ready(Loop_loop_height_pro_U0_ap_ready);
    Loop_loop_height_pro_U0->start_out(Loop_loop_height_pro_U0_start_out);
    Loop_loop_height_pro_U0->start_write(Loop_loop_height_pro_U0_start_write);
    Loop_loop_height_pro_U0->imag_1_data_stream_0_V_din(Loop_loop_height_pro_U0_imag_1_data_stream_0_V_din);
    Loop_loop_height_pro_U0->imag_1_data_stream_0_V_full_n(imag_1_data_stream_0_full_n);
    Loop_loop_height_pro_U0->imag_1_data_stream_0_V_write(Loop_loop_height_pro_U0_imag_1_data_stream_0_V_write);
    Loop_loop_height_pro_U0->imag_1_data_stream_1_V_din(Loop_loop_height_pro_U0_imag_1_data_stream_1_V_din);
    Loop_loop_height_pro_U0->imag_1_data_stream_1_V_full_n(imag_1_data_stream_1_full_n);
    Loop_loop_height_pro_U0->imag_1_data_stream_1_V_write(Loop_loop_height_pro_U0_imag_1_data_stream_1_V_write);
    Loop_loop_height_pro_U0->imag_1_data_stream_2_V_din(Loop_loop_height_pro_U0_imag_1_data_stream_2_V_din);
    Loop_loop_height_pro_U0->imag_1_data_stream_2_V_full_n(imag_1_data_stream_2_full_n);
    Loop_loop_height_pro_U0->imag_1_data_stream_2_V_write(Loop_loop_height_pro_U0_imag_1_data_stream_2_V_write);
    Loop_loop_height_pro_U0->imag0_0_data_stream_0_V_dout(imag0_0_data_stream_s_dout);
    Loop_loop_height_pro_U0->imag0_0_data_stream_0_V_empty_n(imag0_0_data_stream_s_empty_n);
    Loop_loop_height_pro_U0->imag0_0_data_stream_0_V_read(Loop_loop_height_pro_U0_imag0_0_data_stream_0_V_read);
    Loop_loop_height_pro_U0->imag0_0_data_stream_1_V_dout(imag0_0_data_stream_1_dout);
    Loop_loop_height_pro_U0->imag0_0_data_stream_1_V_empty_n(imag0_0_data_stream_1_empty_n);
    Loop_loop_height_pro_U0->imag0_0_data_stream_1_V_read(Loop_loop_height_pro_U0_imag0_0_data_stream_1_V_read);
    Loop_loop_height_pro_U0->imag0_0_data_stream_2_V_dout(imag0_0_data_stream_2_dout);
    Loop_loop_height_pro_U0->imag0_0_data_stream_2_V_empty_n(imag0_0_data_stream_2_empty_n);
    Loop_loop_height_pro_U0->imag0_0_data_stream_2_V_read(Loop_loop_height_pro_U0_imag0_0_data_stream_2_V_read);
    Mat2AXIvideo_U0 = new Mat2AXIvideo("Mat2AXIvideo_U0");
    Mat2AXIvideo_U0->ap_clk(ap_clk);
    Mat2AXIvideo_U0->ap_rst(ap_rst_n_inv);
    Mat2AXIvideo_U0->ap_start(Mat2AXIvideo_U0_ap_start);
    Mat2AXIvideo_U0->ap_done(Mat2AXIvideo_U0_ap_done);
    Mat2AXIvideo_U0->ap_continue(Mat2AXIvideo_U0_ap_continue);
    Mat2AXIvideo_U0->ap_idle(Mat2AXIvideo_U0_ap_idle);
    Mat2AXIvideo_U0->ap_ready(Mat2AXIvideo_U0_ap_ready);
    Mat2AXIvideo_U0->img_data_stream_0_V_dout(imag_1_data_stream_0_dout);
    Mat2AXIvideo_U0->img_data_stream_0_V_empty_n(imag_1_data_stream_0_empty_n);
    Mat2AXIvideo_U0->img_data_stream_0_V_read(Mat2AXIvideo_U0_img_data_stream_0_V_read);
    Mat2AXIvideo_U0->img_data_stream_1_V_dout(imag_1_data_stream_1_dout);
    Mat2AXIvideo_U0->img_data_stream_1_V_empty_n(imag_1_data_stream_1_empty_n);
    Mat2AXIvideo_U0->img_data_stream_1_V_read(Mat2AXIvideo_U0_img_data_stream_1_V_read);
    Mat2AXIvideo_U0->img_data_stream_2_V_dout(imag_1_data_stream_2_dout);
    Mat2AXIvideo_U0->img_data_stream_2_V_empty_n(imag_1_data_stream_2_empty_n);
    Mat2AXIvideo_U0->img_data_stream_2_V_read(Mat2AXIvideo_U0_img_data_stream_2_V_read);
    Mat2AXIvideo_U0->dst_axi_TDATA(Mat2AXIvideo_U0_dst_axi_TDATA);
    Mat2AXIvideo_U0->dst_axi_TVALID(Mat2AXIvideo_U0_dst_axi_TVALID);
    Mat2AXIvideo_U0->dst_axi_TREADY(dst_axi_TREADY);
    Mat2AXIvideo_U0->dst_axi_TKEEP(Mat2AXIvideo_U0_dst_axi_TKEEP);
    Mat2AXIvideo_U0->dst_axi_TSTRB(Mat2AXIvideo_U0_dst_axi_TSTRB);
    Mat2AXIvideo_U0->dst_axi_TUSER(Mat2AXIvideo_U0_dst_axi_TUSER);
    Mat2AXIvideo_U0->dst_axi_TLAST(Mat2AXIvideo_U0_dst_axi_TLAST);
    Mat2AXIvideo_U0->dst_axi_TID(Mat2AXIvideo_U0_dst_axi_TID);
    Mat2AXIvideo_U0->dst_axi_TDEST(Mat2AXIvideo_U0_dst_axi_TDEST);
    imag0_0_data_stream_s_U = new fifo_w8_d1_A("imag0_0_data_stream_s_U");
    imag0_0_data_stream_s_U->clk(ap_clk);
    imag0_0_data_stream_s_U->reset(ap_rst_n_inv);
    imag0_0_data_stream_s_U->if_read_ce(ap_var_for_const0);
    imag0_0_data_stream_s_U->if_write_ce(ap_var_for_const0);
    imag0_0_data_stream_s_U->if_din(AXIvideo2Mat_U0_img_data_stream_0_V_din);
    imag0_0_data_stream_s_U->if_full_n(imag0_0_data_stream_s_full_n);
    imag0_0_data_stream_s_U->if_write(AXIvideo2Mat_U0_img_data_stream_0_V_write);
    imag0_0_data_stream_s_U->if_dout(imag0_0_data_stream_s_dout);
    imag0_0_data_stream_s_U->if_empty_n(imag0_0_data_stream_s_empty_n);
    imag0_0_data_stream_s_U->if_read(Loop_loop_height_pro_U0_imag0_0_data_stream_0_V_read);
    imag0_0_data_stream_1_U = new fifo_w8_d1_A("imag0_0_data_stream_1_U");
    imag0_0_data_stream_1_U->clk(ap_clk);
    imag0_0_data_stream_1_U->reset(ap_rst_n_inv);
    imag0_0_data_stream_1_U->if_read_ce(ap_var_for_const0);
    imag0_0_data_stream_1_U->if_write_ce(ap_var_for_const0);
    imag0_0_data_stream_1_U->if_din(AXIvideo2Mat_U0_img_data_stream_1_V_din);
    imag0_0_data_stream_1_U->if_full_n(imag0_0_data_stream_1_full_n);
    imag0_0_data_stream_1_U->if_write(AXIvideo2Mat_U0_img_data_stream_1_V_write);
    imag0_0_data_stream_1_U->if_dout(imag0_0_data_stream_1_dout);
    imag0_0_data_stream_1_U->if_empty_n(imag0_0_data_stream_1_empty_n);
    imag0_0_data_stream_1_U->if_read(Loop_loop_height_pro_U0_imag0_0_data_stream_1_V_read);
    imag0_0_data_stream_2_U = new fifo_w8_d1_A("imag0_0_data_stream_2_U");
    imag0_0_data_stream_2_U->clk(ap_clk);
    imag0_0_data_stream_2_U->reset(ap_rst_n_inv);
    imag0_0_data_stream_2_U->if_read_ce(ap_var_for_const0);
    imag0_0_data_stream_2_U->if_write_ce(ap_var_for_const0);
    imag0_0_data_stream_2_U->if_din(AXIvideo2Mat_U0_img_data_stream_2_V_din);
    imag0_0_data_stream_2_U->if_full_n(imag0_0_data_stream_2_full_n);
    imag0_0_data_stream_2_U->if_write(AXIvideo2Mat_U0_img_data_stream_2_V_write);
    imag0_0_data_stream_2_U->if_dout(imag0_0_data_stream_2_dout);
    imag0_0_data_stream_2_U->if_empty_n(imag0_0_data_stream_2_empty_n);
    imag0_0_data_stream_2_U->if_read(Loop_loop_height_pro_U0_imag0_0_data_stream_2_V_read);
    imag_1_data_stream_0_U = new fifo_w8_d1_A("imag_1_data_stream_0_U");
    imag_1_data_stream_0_U->clk(ap_clk);
    imag_1_data_stream_0_U->reset(ap_rst_n_inv);
    imag_1_data_stream_0_U->if_read_ce(ap_var_for_const0);
    imag_1_data_stream_0_U->if_write_ce(ap_var_for_const0);
    imag_1_data_stream_0_U->if_din(Loop_loop_height_pro_U0_imag_1_data_stream_0_V_din);
    imag_1_data_stream_0_U->if_full_n(imag_1_data_stream_0_full_n);
    imag_1_data_stream_0_U->if_write(Loop_loop_height_pro_U0_imag_1_data_stream_0_V_write);
    imag_1_data_stream_0_U->if_dout(imag_1_data_stream_0_dout);
    imag_1_data_stream_0_U->if_empty_n(imag_1_data_stream_0_empty_n);
    imag_1_data_stream_0_U->if_read(Mat2AXIvideo_U0_img_data_stream_0_V_read);
    imag_1_data_stream_1_U = new fifo_w8_d1_A("imag_1_data_stream_1_U");
    imag_1_data_stream_1_U->clk(ap_clk);
    imag_1_data_stream_1_U->reset(ap_rst_n_inv);
    imag_1_data_stream_1_U->if_read_ce(ap_var_for_const0);
    imag_1_data_stream_1_U->if_write_ce(ap_var_for_const0);
    imag_1_data_stream_1_U->if_din(Loop_loop_height_pro_U0_imag_1_data_stream_1_V_din);
    imag_1_data_stream_1_U->if_full_n(imag_1_data_stream_1_full_n);
    imag_1_data_stream_1_U->if_write(Loop_loop_height_pro_U0_imag_1_data_stream_1_V_write);
    imag_1_data_stream_1_U->if_dout(imag_1_data_stream_1_dout);
    imag_1_data_stream_1_U->if_empty_n(imag_1_data_stream_1_empty_n);
    imag_1_data_stream_1_U->if_read(Mat2AXIvideo_U0_img_data_stream_1_V_read);
    imag_1_data_stream_2_U = new fifo_w8_d1_A("imag_1_data_stream_2_U");
    imag_1_data_stream_2_U->clk(ap_clk);
    imag_1_data_stream_2_U->reset(ap_rst_n_inv);
    imag_1_data_stream_2_U->if_read_ce(ap_var_for_const0);
    imag_1_data_stream_2_U->if_write_ce(ap_var_for_const0);
    imag_1_data_stream_2_U->if_din(Loop_loop_height_pro_U0_imag_1_data_stream_2_V_din);
    imag_1_data_stream_2_U->if_full_n(imag_1_data_stream_2_full_n);
    imag_1_data_stream_2_U->if_write(Loop_loop_height_pro_U0_imag_1_data_stream_2_V_write);
    imag_1_data_stream_2_U->if_dout(imag_1_data_stream_2_dout);
    imag_1_data_stream_2_U->if_empty_n(imag_1_data_stream_2_empty_n);
    imag_1_data_stream_2_U->if_read(Mat2AXIvideo_U0_img_data_stream_2_V_read);
    start_for_Loop_locud_U = new start_for_Loop_locud("start_for_Loop_locud_U");
    start_for_Loop_locud_U->clk(ap_clk);
    start_for_Loop_locud_U->reset(ap_rst_n_inv);
    start_for_Loop_locud_U->if_read_ce(ap_var_for_const0);
    start_for_Loop_locud_U->if_write_ce(ap_var_for_const0);
    start_for_Loop_locud_U->if_din(start_for_Loop_loop_height_pro_U0_din);
    start_for_Loop_locud_U->if_full_n(start_for_Loop_loop_height_pro_U0_full_n);
    start_for_Loop_locud_U->if_write(AXIvideo2Mat_U0_start_write);
    start_for_Loop_locud_U->if_dout(start_for_Loop_loop_height_pro_U0_dout);
    start_for_Loop_locud_U->if_empty_n(start_for_Loop_loop_height_pro_U0_empty_n);
    start_for_Loop_locud_U->if_read(Loop_loop_height_pro_U0_ap_ready);
    start_for_Mat2AXIdEe_U = new start_for_Mat2AXIdEe("start_for_Mat2AXIdEe_U");
    start_for_Mat2AXIdEe_U->clk(ap_clk);
    start_for_Mat2AXIdEe_U->reset(ap_rst_n_inv);
    start_for_Mat2AXIdEe_U->if_read_ce(ap_var_for_const0);
    start_for_Mat2AXIdEe_U->if_write_ce(ap_var_for_const0);
    start_for_Mat2AXIdEe_U->if_din(start_for_Mat2AXIvideo_U0_din);
    start_for_Mat2AXIdEe_U->if_full_n(start_for_Mat2AXIvideo_U0_full_n);
    start_for_Mat2AXIdEe_U->if_write(Loop_loop_height_pro_U0_start_write);
    start_for_Mat2AXIdEe_U->if_dout(start_for_Mat2AXIvideo_U0_dout);
    start_for_Mat2AXIdEe_U->if_empty_n(start_for_Mat2AXIvideo_U0_empty_n);
    start_for_Mat2AXIdEe_U->if_read(Mat2AXIvideo_U0_ap_ready);

    SC_METHOD(thread_AXIvideo2Mat_U0_ap_continue);

    SC_METHOD(thread_AXIvideo2Mat_U0_ap_start);
    sensitive << ( ap_start );

    SC_METHOD(thread_Loop_loop_height_pro_U0_ap_continue);

    SC_METHOD(thread_Loop_loop_height_pro_U0_ap_start);
    sensitive << ( start_for_Loop_loop_height_pro_U0_empty_n );

    SC_METHOD(thread_Mat2AXIvideo_U0_ap_continue);

    SC_METHOD(thread_Mat2AXIvideo_U0_ap_start);
    sensitive << ( start_for_Mat2AXIvideo_U0_empty_n );

    SC_METHOD(thread_Mat2AXIvideo_U0_start_full_n);

    SC_METHOD(thread_Mat2AXIvideo_U0_start_write);

    SC_METHOD(thread_ap_done);
    sensitive << ( Mat2AXIvideo_U0_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( AXIvideo2Mat_U0_ap_idle );
    sensitive << ( Loop_loop_height_pro_U0_ap_idle );
    sensitive << ( Mat2AXIvideo_U0_ap_idle );

    SC_METHOD(thread_ap_ready);
    sensitive << ( AXIvideo2Mat_U0_ap_ready );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sync_continue);

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( Mat2AXIvideo_U0_ap_done );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( AXIvideo2Mat_U0_ap_ready );

    SC_METHOD(thread_dst_axi_TDATA);
    sensitive << ( Mat2AXIvideo_U0_dst_axi_TDATA );

    SC_METHOD(thread_dst_axi_TDEST);
    sensitive << ( Mat2AXIvideo_U0_dst_axi_TDEST );

    SC_METHOD(thread_dst_axi_TID);
    sensitive << ( Mat2AXIvideo_U0_dst_axi_TID );

    SC_METHOD(thread_dst_axi_TKEEP);
    sensitive << ( Mat2AXIvideo_U0_dst_axi_TKEEP );

    SC_METHOD(thread_dst_axi_TLAST);
    sensitive << ( Mat2AXIvideo_U0_dst_axi_TLAST );

    SC_METHOD(thread_dst_axi_TSTRB);
    sensitive << ( Mat2AXIvideo_U0_dst_axi_TSTRB );

    SC_METHOD(thread_dst_axi_TUSER);
    sensitive << ( Mat2AXIvideo_U0_dst_axi_TUSER );

    SC_METHOD(thread_dst_axi_TVALID);
    sensitive << ( Mat2AXIvideo_U0_dst_axi_TVALID );

    SC_METHOD(thread_src_axi0_TREADY);
    sensitive << ( AXIvideo2Mat_U0_src_axi0_TREADY );

    SC_METHOD(thread_start_for_Loop_loop_height_pro_U0_din);

    SC_METHOD(thread_start_for_Mat2AXIvideo_U0_din);

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "vip1_m_sc_trace_" << apTFileNum ++;
    string apTFn = apTFilenSS.str();
    mVcdFile = sc_create_vcd_trace_file(apTFn.c_str());
    mVcdFile->set_time_unit(1, SC_PS);
    if (1) {
#ifdef __HLS_TRACE_LEVEL_PORT__
    sc_trace(mVcdFile, src_axi0_TDATA, "(port)src_axi0_TDATA");
    sc_trace(mVcdFile, src_axi0_TKEEP, "(port)src_axi0_TKEEP");
    sc_trace(mVcdFile, src_axi0_TSTRB, "(port)src_axi0_TSTRB");
    sc_trace(mVcdFile, src_axi0_TUSER, "(port)src_axi0_TUSER");
    sc_trace(mVcdFile, src_axi0_TLAST, "(port)src_axi0_TLAST");
    sc_trace(mVcdFile, src_axi0_TID, "(port)src_axi0_TID");
    sc_trace(mVcdFile, src_axi0_TDEST, "(port)src_axi0_TDEST");
    sc_trace(mVcdFile, dst_axi_TDATA, "(port)dst_axi_TDATA");
    sc_trace(mVcdFile, dst_axi_TKEEP, "(port)dst_axi_TKEEP");
    sc_trace(mVcdFile, dst_axi_TSTRB, "(port)dst_axi_TSTRB");
    sc_trace(mVcdFile, dst_axi_TUSER, "(port)dst_axi_TUSER");
    sc_trace(mVcdFile, dst_axi_TLAST, "(port)dst_axi_TLAST");
    sc_trace(mVcdFile, dst_axi_TID, "(port)dst_axi_TID");
    sc_trace(mVcdFile, dst_axi_TDEST, "(port)dst_axi_TDEST");
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, src_axi0_TVALID, "(port)src_axi0_TVALID");
    sc_trace(mVcdFile, src_axi0_TREADY, "(port)src_axi0_TREADY");
    sc_trace(mVcdFile, dst_axi_TVALID, "(port)dst_axi_TVALID");
    sc_trace(mVcdFile, dst_axi_TREADY, "(port)dst_axi_TREADY");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_start, "AXIvideo2Mat_U0_ap_start");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_done, "AXIvideo2Mat_U0_ap_done");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_continue, "AXIvideo2Mat_U0_ap_continue");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_idle, "AXIvideo2Mat_U0_ap_idle");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_ap_ready, "AXIvideo2Mat_U0_ap_ready");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_start_out, "AXIvideo2Mat_U0_start_out");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_start_write, "AXIvideo2Mat_U0_start_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_src_axi0_TREADY, "AXIvideo2Mat_U0_src_axi0_TREADY");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_0_V_din, "AXIvideo2Mat_U0_img_data_stream_0_V_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_0_V_write, "AXIvideo2Mat_U0_img_data_stream_0_V_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_1_V_din, "AXIvideo2Mat_U0_img_data_stream_1_V_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_1_V_write, "AXIvideo2Mat_U0_img_data_stream_1_V_write");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_2_V_din, "AXIvideo2Mat_U0_img_data_stream_2_V_din");
    sc_trace(mVcdFile, AXIvideo2Mat_U0_img_data_stream_2_V_write, "AXIvideo2Mat_U0_img_data_stream_2_V_write");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_ap_start, "Loop_loop_height_pro_U0_ap_start");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_ap_done, "Loop_loop_height_pro_U0_ap_done");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_ap_continue, "Loop_loop_height_pro_U0_ap_continue");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_ap_idle, "Loop_loop_height_pro_U0_ap_idle");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_ap_ready, "Loop_loop_height_pro_U0_ap_ready");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_start_out, "Loop_loop_height_pro_U0_start_out");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_start_write, "Loop_loop_height_pro_U0_start_write");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_imag_1_data_stream_0_V_din, "Loop_loop_height_pro_U0_imag_1_data_stream_0_V_din");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_imag_1_data_stream_0_V_write, "Loop_loop_height_pro_U0_imag_1_data_stream_0_V_write");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_imag_1_data_stream_1_V_din, "Loop_loop_height_pro_U0_imag_1_data_stream_1_V_din");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_imag_1_data_stream_1_V_write, "Loop_loop_height_pro_U0_imag_1_data_stream_1_V_write");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_imag_1_data_stream_2_V_din, "Loop_loop_height_pro_U0_imag_1_data_stream_2_V_din");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_imag_1_data_stream_2_V_write, "Loop_loop_height_pro_U0_imag_1_data_stream_2_V_write");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_imag0_0_data_stream_0_V_read, "Loop_loop_height_pro_U0_imag0_0_data_stream_0_V_read");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_imag0_0_data_stream_1_V_read, "Loop_loop_height_pro_U0_imag0_0_data_stream_1_V_read");
    sc_trace(mVcdFile, Loop_loop_height_pro_U0_imag0_0_data_stream_2_V_read, "Loop_loop_height_pro_U0_imag0_0_data_stream_2_V_read");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_start, "Mat2AXIvideo_U0_ap_start");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_done, "Mat2AXIvideo_U0_ap_done");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_continue, "Mat2AXIvideo_U0_ap_continue");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_idle, "Mat2AXIvideo_U0_ap_idle");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_ready, "Mat2AXIvideo_U0_ap_ready");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_img_data_stream_0_V_read, "Mat2AXIvideo_U0_img_data_stream_0_V_read");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_img_data_stream_1_V_read, "Mat2AXIvideo_U0_img_data_stream_1_V_read");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_img_data_stream_2_V_read, "Mat2AXIvideo_U0_img_data_stream_2_V_read");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_dst_axi_TDATA, "Mat2AXIvideo_U0_dst_axi_TDATA");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_dst_axi_TVALID, "Mat2AXIvideo_U0_dst_axi_TVALID");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_dst_axi_TKEEP, "Mat2AXIvideo_U0_dst_axi_TKEEP");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_dst_axi_TSTRB, "Mat2AXIvideo_U0_dst_axi_TSTRB");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_dst_axi_TUSER, "Mat2AXIvideo_U0_dst_axi_TUSER");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_dst_axi_TLAST, "Mat2AXIvideo_U0_dst_axi_TLAST");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_dst_axi_TID, "Mat2AXIvideo_U0_dst_axi_TID");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_dst_axi_TDEST, "Mat2AXIvideo_U0_dst_axi_TDEST");
    sc_trace(mVcdFile, ap_sync_continue, "ap_sync_continue");
    sc_trace(mVcdFile, imag0_0_data_stream_s_full_n, "imag0_0_data_stream_s_full_n");
    sc_trace(mVcdFile, imag0_0_data_stream_s_dout, "imag0_0_data_stream_s_dout");
    sc_trace(mVcdFile, imag0_0_data_stream_s_empty_n, "imag0_0_data_stream_s_empty_n");
    sc_trace(mVcdFile, imag0_0_data_stream_1_full_n, "imag0_0_data_stream_1_full_n");
    sc_trace(mVcdFile, imag0_0_data_stream_1_dout, "imag0_0_data_stream_1_dout");
    sc_trace(mVcdFile, imag0_0_data_stream_1_empty_n, "imag0_0_data_stream_1_empty_n");
    sc_trace(mVcdFile, imag0_0_data_stream_2_full_n, "imag0_0_data_stream_2_full_n");
    sc_trace(mVcdFile, imag0_0_data_stream_2_dout, "imag0_0_data_stream_2_dout");
    sc_trace(mVcdFile, imag0_0_data_stream_2_empty_n, "imag0_0_data_stream_2_empty_n");
    sc_trace(mVcdFile, imag_1_data_stream_0_full_n, "imag_1_data_stream_0_full_n");
    sc_trace(mVcdFile, imag_1_data_stream_0_dout, "imag_1_data_stream_0_dout");
    sc_trace(mVcdFile, imag_1_data_stream_0_empty_n, "imag_1_data_stream_0_empty_n");
    sc_trace(mVcdFile, imag_1_data_stream_1_full_n, "imag_1_data_stream_1_full_n");
    sc_trace(mVcdFile, imag_1_data_stream_1_dout, "imag_1_data_stream_1_dout");
    sc_trace(mVcdFile, imag_1_data_stream_1_empty_n, "imag_1_data_stream_1_empty_n");
    sc_trace(mVcdFile, imag_1_data_stream_2_full_n, "imag_1_data_stream_2_full_n");
    sc_trace(mVcdFile, imag_1_data_stream_2_dout, "imag_1_data_stream_2_dout");
    sc_trace(mVcdFile, imag_1_data_stream_2_empty_n, "imag_1_data_stream_2_empty_n");
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, start_for_Loop_loop_height_pro_U0_din, "start_for_Loop_loop_height_pro_U0_din");
    sc_trace(mVcdFile, start_for_Loop_loop_height_pro_U0_full_n, "start_for_Loop_loop_height_pro_U0_full_n");
    sc_trace(mVcdFile, start_for_Loop_loop_height_pro_U0_dout, "start_for_Loop_loop_height_pro_U0_dout");
    sc_trace(mVcdFile, start_for_Loop_loop_height_pro_U0_empty_n, "start_for_Loop_loop_height_pro_U0_empty_n");
    sc_trace(mVcdFile, start_for_Mat2AXIvideo_U0_din, "start_for_Mat2AXIvideo_U0_din");
    sc_trace(mVcdFile, start_for_Mat2AXIvideo_U0_full_n, "start_for_Mat2AXIvideo_U0_full_n");
    sc_trace(mVcdFile, start_for_Mat2AXIvideo_U0_dout, "start_for_Mat2AXIvideo_U0_dout");
    sc_trace(mVcdFile, start_for_Mat2AXIvideo_U0_empty_n, "start_for_Mat2AXIvideo_U0_empty_n");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_start_full_n, "Mat2AXIvideo_U0_start_full_n");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_start_write, "Mat2AXIvideo_U0_start_write");
#endif

    }
    mHdltvinHandle.open("vip1_m.hdltvin.dat");
    mHdltvoutHandle.open("vip1_m.hdltvout.dat");
}

vip1_m::~vip1_m() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete AXIvideo2Mat_U0;
    delete Loop_loop_height_pro_U0;
    delete Mat2AXIvideo_U0;
    delete imag0_0_data_stream_s_U;
    delete imag0_0_data_stream_1_U;
    delete imag0_0_data_stream_2_U;
    delete imag_1_data_stream_0_U;
    delete imag_1_data_stream_1_U;
    delete imag_1_data_stream_2_U;
    delete start_for_Loop_locud_U;
    delete start_for_Mat2AXIdEe_U;
}

void vip1_m::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void vip1_m::thread_AXIvideo2Mat_U0_ap_continue() {
    AXIvideo2Mat_U0_ap_continue = ap_const_logic_1;
}

void vip1_m::thread_AXIvideo2Mat_U0_ap_start() {
    AXIvideo2Mat_U0_ap_start = ap_start.read();
}

void vip1_m::thread_Loop_loop_height_pro_U0_ap_continue() {
    Loop_loop_height_pro_U0_ap_continue = ap_const_logic_1;
}

void vip1_m::thread_Loop_loop_height_pro_U0_ap_start() {
    Loop_loop_height_pro_U0_ap_start = start_for_Loop_loop_height_pro_U0_empty_n.read();
}

void vip1_m::thread_Mat2AXIvideo_U0_ap_continue() {
    Mat2AXIvideo_U0_ap_continue = ap_const_logic_1;
}

void vip1_m::thread_Mat2AXIvideo_U0_ap_start() {
    Mat2AXIvideo_U0_ap_start = start_for_Mat2AXIvideo_U0_empty_n.read();
}

void vip1_m::thread_Mat2AXIvideo_U0_start_full_n() {
    Mat2AXIvideo_U0_start_full_n = ap_const_logic_1;
}

void vip1_m::thread_Mat2AXIvideo_U0_start_write() {
    Mat2AXIvideo_U0_start_write = ap_const_logic_0;
}

void vip1_m::thread_ap_done() {
    ap_done = Mat2AXIvideo_U0_ap_done.read();
}

void vip1_m::thread_ap_idle() {
    ap_idle = (AXIvideo2Mat_U0_ap_idle.read() & Loop_loop_height_pro_U0_ap_idle.read() & Mat2AXIvideo_U0_ap_idle.read());
}

void vip1_m::thread_ap_ready() {
    ap_ready = AXIvideo2Mat_U0_ap_ready.read();
}

void vip1_m::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void vip1_m::thread_ap_sync_continue() {
    ap_sync_continue = ap_const_logic_1;
}

void vip1_m::thread_ap_sync_done() {
    ap_sync_done = Mat2AXIvideo_U0_ap_done.read();
}

void vip1_m::thread_ap_sync_ready() {
    ap_sync_ready = AXIvideo2Mat_U0_ap_ready.read();
}

void vip1_m::thread_dst_axi_TDATA() {
    dst_axi_TDATA = Mat2AXIvideo_U0_dst_axi_TDATA.read();
}

void vip1_m::thread_dst_axi_TDEST() {
    dst_axi_TDEST = Mat2AXIvideo_U0_dst_axi_TDEST.read();
}

void vip1_m::thread_dst_axi_TID() {
    dst_axi_TID = Mat2AXIvideo_U0_dst_axi_TID.read();
}

void vip1_m::thread_dst_axi_TKEEP() {
    dst_axi_TKEEP = Mat2AXIvideo_U0_dst_axi_TKEEP.read();
}

void vip1_m::thread_dst_axi_TLAST() {
    dst_axi_TLAST = Mat2AXIvideo_U0_dst_axi_TLAST.read();
}

void vip1_m::thread_dst_axi_TSTRB() {
    dst_axi_TSTRB = Mat2AXIvideo_U0_dst_axi_TSTRB.read();
}

void vip1_m::thread_dst_axi_TUSER() {
    dst_axi_TUSER = Mat2AXIvideo_U0_dst_axi_TUSER.read();
}

void vip1_m::thread_dst_axi_TVALID() {
    dst_axi_TVALID = Mat2AXIvideo_U0_dst_axi_TVALID.read();
}

void vip1_m::thread_src_axi0_TREADY() {
    src_axi0_TREADY = AXIvideo2Mat_U0_src_axi0_TREADY.read();
}

void vip1_m::thread_start_for_Loop_loop_height_pro_U0_din() {
    start_for_Loop_loop_height_pro_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void vip1_m::thread_start_for_Mat2AXIvideo_U0_din() {
    start_for_Mat2AXIvideo_U0_din =  (sc_lv<1>) (ap_const_logic_1);
}

void vip1_m::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvinHandle << mComma << "{"  <<  " \"src_axi0_TDATA\" :  \"" << src_axi0_TDATA.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"src_axi0_TKEEP\" :  \"" << src_axi0_TKEEP.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"src_axi0_TSTRB\" :  \"" << src_axi0_TSTRB.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"src_axi0_TUSER\" :  \"" << src_axi0_TUSER.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"src_axi0_TLAST\" :  \"" << src_axi0_TLAST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"src_axi0_TID\" :  \"" << src_axi0_TID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"src_axi0_TDEST\" :  \"" << src_axi0_TDEST.read() << "\" ";
        mHdltvoutHandle << mComma << "{"  <<  " \"dst_axi_TDATA\" :  \"" << dst_axi_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_axi_TKEEP\" :  \"" << dst_axi_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_axi_TSTRB\" :  \"" << dst_axi_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_axi_TUSER\" :  \"" << dst_axi_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_axi_TLAST\" :  \"" << dst_axi_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_axi_TID\" :  \"" << dst_axi_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_axi_TDEST\" :  \"" << dst_axi_TDEST.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"src_axi0_TVALID\" :  \"" << src_axi0_TVALID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"src_axi0_TREADY\" :  \"" << src_axi0_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"dst_axi_TVALID\" :  \"" << dst_axi_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"dst_axi_TREADY\" :  \"" << dst_axi_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}
