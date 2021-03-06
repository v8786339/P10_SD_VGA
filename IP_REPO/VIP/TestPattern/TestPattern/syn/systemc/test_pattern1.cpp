// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#include "test_pattern1.h"
#include "AESL_pkg.h"

using namespace std;

namespace ap_rtl {

const sc_lv<24> test_pattern1::ap_const_lv24_0 = "000000000000000000000000";
const sc_lv<3> test_pattern1::ap_const_lv3_0 = "000";
const sc_lv<1> test_pattern1::ap_const_lv1_0 = "0";
const sc_logic test_pattern1::ap_const_logic_1 = sc_dt::Log_1;
const sc_logic test_pattern1::ap_const_logic_0 = sc_dt::Log_0;

test_pattern1::test_pattern1(sc_module_name name) : sc_module(name), mVcdFile(0) {
    Loop_loop_height1_pr_U0 = new Loop_loop_height1_pr("Loop_loop_height1_pr_U0");
    Loop_loop_height1_pr_U0->ap_clk(ap_clk);
    Loop_loop_height1_pr_U0->ap_rst(ap_rst_n_inv);
    Loop_loop_height1_pr_U0->ap_start(Loop_loop_height1_pr_U0_ap_start);
    Loop_loop_height1_pr_U0->ap_done(Loop_loop_height1_pr_U0_ap_done);
    Loop_loop_height1_pr_U0->ap_continue(Loop_loop_height1_pr_U0_ap_continue);
    Loop_loop_height1_pr_U0->ap_idle(Loop_loop_height1_pr_U0_ap_idle);
    Loop_loop_height1_pr_U0->ap_ready(Loop_loop_height1_pr_U0_ap_ready);
    Loop_loop_height1_pr_U0->imag0_0_data_stream_0_V_din(Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_din);
    Loop_loop_height1_pr_U0->imag0_0_data_stream_0_V_full_n(imag0_0_data_stream_s_full_n);
    Loop_loop_height1_pr_U0->imag0_0_data_stream_0_V_write(Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_write);
    Loop_loop_height1_pr_U0->imag0_0_data_stream_1_V_din(Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_din);
    Loop_loop_height1_pr_U0->imag0_0_data_stream_1_V_full_n(imag0_0_data_stream_1_full_n);
    Loop_loop_height1_pr_U0->imag0_0_data_stream_1_V_write(Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_write);
    Loop_loop_height1_pr_U0->imag0_0_data_stream_2_V_din(Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_din);
    Loop_loop_height1_pr_U0->imag0_0_data_stream_2_V_full_n(imag0_0_data_stream_2_full_n);
    Loop_loop_height1_pr_U0->imag0_0_data_stream_2_V_write(Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_write);
    Mat2AXIvideo_U0 = new Mat2AXIvideo("Mat2AXIvideo_U0");
    Mat2AXIvideo_U0->ap_clk(ap_clk);
    Mat2AXIvideo_U0->ap_rst(ap_rst_n_inv);
    Mat2AXIvideo_U0->ap_start(Mat2AXIvideo_U0_ap_start);
    Mat2AXIvideo_U0->ap_done(Mat2AXIvideo_U0_ap_done);
    Mat2AXIvideo_U0->ap_continue(Mat2AXIvideo_U0_ap_continue);
    Mat2AXIvideo_U0->ap_idle(Mat2AXIvideo_U0_ap_idle);
    Mat2AXIvideo_U0->ap_ready(Mat2AXIvideo_U0_ap_ready);
    Mat2AXIvideo_U0->img_data_stream_0_V_dout(imag0_0_data_stream_s_dout);
    Mat2AXIvideo_U0->img_data_stream_0_V_empty_n(imag0_0_data_stream_s_empty_n);
    Mat2AXIvideo_U0->img_data_stream_0_V_read(Mat2AXIvideo_U0_img_data_stream_0_V_read);
    Mat2AXIvideo_U0->img_data_stream_1_V_dout(imag0_0_data_stream_1_dout);
    Mat2AXIvideo_U0->img_data_stream_1_V_empty_n(imag0_0_data_stream_1_empty_n);
    Mat2AXIvideo_U0->img_data_stream_1_V_read(Mat2AXIvideo_U0_img_data_stream_1_V_read);
    Mat2AXIvideo_U0->img_data_stream_2_V_dout(imag0_0_data_stream_2_dout);
    Mat2AXIvideo_U0->img_data_stream_2_V_empty_n(imag0_0_data_stream_2_empty_n);
    Mat2AXIvideo_U0->img_data_stream_2_V_read(Mat2AXIvideo_U0_img_data_stream_2_V_read);
    Mat2AXIvideo_U0->src_axi0_TDATA(Mat2AXIvideo_U0_src_axi0_TDATA);
    Mat2AXIvideo_U0->src_axi0_TVALID(Mat2AXIvideo_U0_src_axi0_TVALID);
    Mat2AXIvideo_U0->src_axi0_TREADY(src_axi0_TREADY);
    Mat2AXIvideo_U0->src_axi0_TKEEP(Mat2AXIvideo_U0_src_axi0_TKEEP);
    Mat2AXIvideo_U0->src_axi0_TSTRB(Mat2AXIvideo_U0_src_axi0_TSTRB);
    Mat2AXIvideo_U0->src_axi0_TUSER(Mat2AXIvideo_U0_src_axi0_TUSER);
    Mat2AXIvideo_U0->src_axi0_TLAST(Mat2AXIvideo_U0_src_axi0_TLAST);
    Mat2AXIvideo_U0->src_axi0_TID(Mat2AXIvideo_U0_src_axi0_TID);
    Mat2AXIvideo_U0->src_axi0_TDEST(Mat2AXIvideo_U0_src_axi0_TDEST);
    imag0_0_data_stream_s_U = new fifo_w8_d1_A("imag0_0_data_stream_s_U");
    imag0_0_data_stream_s_U->clk(ap_clk);
    imag0_0_data_stream_s_U->reset(ap_rst_n_inv);
    imag0_0_data_stream_s_U->if_read_ce(ap_var_for_const0);
    imag0_0_data_stream_s_U->if_write_ce(ap_var_for_const0);
    imag0_0_data_stream_s_U->if_din(Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_din);
    imag0_0_data_stream_s_U->if_full_n(imag0_0_data_stream_s_full_n);
    imag0_0_data_stream_s_U->if_write(Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_write);
    imag0_0_data_stream_s_U->if_dout(imag0_0_data_stream_s_dout);
    imag0_0_data_stream_s_U->if_empty_n(imag0_0_data_stream_s_empty_n);
    imag0_0_data_stream_s_U->if_read(Mat2AXIvideo_U0_img_data_stream_0_V_read);
    imag0_0_data_stream_1_U = new fifo_w8_d1_A("imag0_0_data_stream_1_U");
    imag0_0_data_stream_1_U->clk(ap_clk);
    imag0_0_data_stream_1_U->reset(ap_rst_n_inv);
    imag0_0_data_stream_1_U->if_read_ce(ap_var_for_const0);
    imag0_0_data_stream_1_U->if_write_ce(ap_var_for_const0);
    imag0_0_data_stream_1_U->if_din(Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_din);
    imag0_0_data_stream_1_U->if_full_n(imag0_0_data_stream_1_full_n);
    imag0_0_data_stream_1_U->if_write(Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_write);
    imag0_0_data_stream_1_U->if_dout(imag0_0_data_stream_1_dout);
    imag0_0_data_stream_1_U->if_empty_n(imag0_0_data_stream_1_empty_n);
    imag0_0_data_stream_1_U->if_read(Mat2AXIvideo_U0_img_data_stream_1_V_read);
    imag0_0_data_stream_2_U = new fifo_w8_d1_A("imag0_0_data_stream_2_U");
    imag0_0_data_stream_2_U->clk(ap_clk);
    imag0_0_data_stream_2_U->reset(ap_rst_n_inv);
    imag0_0_data_stream_2_U->if_read_ce(ap_var_for_const0);
    imag0_0_data_stream_2_U->if_write_ce(ap_var_for_const0);
    imag0_0_data_stream_2_U->if_din(Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_din);
    imag0_0_data_stream_2_U->if_full_n(imag0_0_data_stream_2_full_n);
    imag0_0_data_stream_2_U->if_write(Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_write);
    imag0_0_data_stream_2_U->if_dout(imag0_0_data_stream_2_dout);
    imag0_0_data_stream_2_U->if_empty_n(imag0_0_data_stream_2_empty_n);
    imag0_0_data_stream_2_U->if_read(Mat2AXIvideo_U0_img_data_stream_2_V_read);

    SC_METHOD(thread_ap_clk_no_reset_);
    dont_initialize();
    sensitive << ( ap_clk.pos() );

    SC_METHOD(thread_Loop_loop_height1_pr_U0_ap_continue);

    SC_METHOD(thread_Loop_loop_height1_pr_U0_ap_start);
    sensitive << ( ap_start );

    SC_METHOD(thread_Loop_loop_height1_pr_U0_start_full_n);

    SC_METHOD(thread_Loop_loop_height1_pr_U0_start_write);

    SC_METHOD(thread_Mat2AXIvideo_U0_ap_continue);

    SC_METHOD(thread_Mat2AXIvideo_U0_start_full_n);

    SC_METHOD(thread_Mat2AXIvideo_U0_start_write);

    SC_METHOD(thread_ap_done);
    sensitive << ( Mat2AXIvideo_U0_ap_done );

    SC_METHOD(thread_ap_idle);
    sensitive << ( Loop_loop_height1_pr_U0_ap_idle );
    sensitive << ( Mat2AXIvideo_U0_ap_idle );

    SC_METHOD(thread_ap_ready);
    sensitive << ( Mat2AXIvideo_U0_ap_done );

    SC_METHOD(thread_ap_rst_n_inv);
    sensitive << ( ap_rst_n );

    SC_METHOD(thread_ap_sync_continue);

    SC_METHOD(thread_ap_sync_done);
    sensitive << ( Mat2AXIvideo_U0_ap_done );

    SC_METHOD(thread_ap_sync_ready);
    sensitive << ( ap_sync_done );

    SC_METHOD(thread_src_axi0_TDATA);
    sensitive << ( Mat2AXIvideo_U0_src_axi0_TDATA );

    SC_METHOD(thread_src_axi0_TDEST);
    sensitive << ( Mat2AXIvideo_U0_src_axi0_TDEST );

    SC_METHOD(thread_src_axi0_TID);
    sensitive << ( Mat2AXIvideo_U0_src_axi0_TID );

    SC_METHOD(thread_src_axi0_TKEEP);
    sensitive << ( Mat2AXIvideo_U0_src_axi0_TKEEP );

    SC_METHOD(thread_src_axi0_TLAST);
    sensitive << ( Mat2AXIvideo_U0_src_axi0_TLAST );

    SC_METHOD(thread_src_axi0_TSTRB);
    sensitive << ( Mat2AXIvideo_U0_src_axi0_TSTRB );

    SC_METHOD(thread_src_axi0_TUSER);
    sensitive << ( Mat2AXIvideo_U0_src_axi0_TUSER );

    SC_METHOD(thread_src_axi0_TVALID);
    sensitive << ( Mat2AXIvideo_U0_src_axi0_TVALID );

    SC_THREAD(thread_hdltv_gen);
    sensitive << ( ap_clk.pos() );

    SC_THREAD(thread_ap_var_for_const0);

    Mat2AXIvideo_U0_ap_start = SC_LOGIC_0;
    static int apTFileNum = 0;
    stringstream apTFilenSS;
    apTFilenSS << "test_pattern1_sc_trace_" << apTFileNum ++;
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
    sc_trace(mVcdFile, ap_clk, "(port)ap_clk");
    sc_trace(mVcdFile, ap_rst_n, "(port)ap_rst_n");
    sc_trace(mVcdFile, ap_start, "(port)ap_start");
    sc_trace(mVcdFile, src_axi0_TVALID, "(port)src_axi0_TVALID");
    sc_trace(mVcdFile, src_axi0_TREADY, "(port)src_axi0_TREADY");
    sc_trace(mVcdFile, ap_done, "(port)ap_done");
    sc_trace(mVcdFile, ap_ready, "(port)ap_ready");
    sc_trace(mVcdFile, ap_idle, "(port)ap_idle");
#endif
#ifdef __HLS_TRACE_LEVEL_INT__
    sc_trace(mVcdFile, ap_rst_n_inv, "ap_rst_n_inv");
    sc_trace(mVcdFile, Loop_loop_height1_pr_U0_ap_start, "Loop_loop_height1_pr_U0_ap_start");
    sc_trace(mVcdFile, Loop_loop_height1_pr_U0_ap_done, "Loop_loop_height1_pr_U0_ap_done");
    sc_trace(mVcdFile, Loop_loop_height1_pr_U0_ap_continue, "Loop_loop_height1_pr_U0_ap_continue");
    sc_trace(mVcdFile, Loop_loop_height1_pr_U0_ap_idle, "Loop_loop_height1_pr_U0_ap_idle");
    sc_trace(mVcdFile, Loop_loop_height1_pr_U0_ap_ready, "Loop_loop_height1_pr_U0_ap_ready");
    sc_trace(mVcdFile, Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_din, "Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_din");
    sc_trace(mVcdFile, Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_write, "Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_write");
    sc_trace(mVcdFile, Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_din, "Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_din");
    sc_trace(mVcdFile, Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_write, "Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_write");
    sc_trace(mVcdFile, Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_din, "Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_din");
    sc_trace(mVcdFile, Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_write, "Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_write");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_start, "Mat2AXIvideo_U0_ap_start");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_done, "Mat2AXIvideo_U0_ap_done");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_continue, "Mat2AXIvideo_U0_ap_continue");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_idle, "Mat2AXIvideo_U0_ap_idle");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_ap_ready, "Mat2AXIvideo_U0_ap_ready");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_img_data_stream_0_V_read, "Mat2AXIvideo_U0_img_data_stream_0_V_read");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_img_data_stream_1_V_read, "Mat2AXIvideo_U0_img_data_stream_1_V_read");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_img_data_stream_2_V_read, "Mat2AXIvideo_U0_img_data_stream_2_V_read");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_src_axi0_TDATA, "Mat2AXIvideo_U0_src_axi0_TDATA");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_src_axi0_TVALID, "Mat2AXIvideo_U0_src_axi0_TVALID");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_src_axi0_TKEEP, "Mat2AXIvideo_U0_src_axi0_TKEEP");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_src_axi0_TSTRB, "Mat2AXIvideo_U0_src_axi0_TSTRB");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_src_axi0_TUSER, "Mat2AXIvideo_U0_src_axi0_TUSER");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_src_axi0_TLAST, "Mat2AXIvideo_U0_src_axi0_TLAST");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_src_axi0_TID, "Mat2AXIvideo_U0_src_axi0_TID");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_src_axi0_TDEST, "Mat2AXIvideo_U0_src_axi0_TDEST");
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
    sc_trace(mVcdFile, ap_sync_done, "ap_sync_done");
    sc_trace(mVcdFile, ap_sync_ready, "ap_sync_ready");
    sc_trace(mVcdFile, Loop_loop_height1_pr_U0_start_full_n, "Loop_loop_height1_pr_U0_start_full_n");
    sc_trace(mVcdFile, Loop_loop_height1_pr_U0_start_write, "Loop_loop_height1_pr_U0_start_write");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_start_full_n, "Mat2AXIvideo_U0_start_full_n");
    sc_trace(mVcdFile, Mat2AXIvideo_U0_start_write, "Mat2AXIvideo_U0_start_write");
#endif

    }
    mHdltvinHandle.open("test_pattern1.hdltvin.dat");
    mHdltvoutHandle.open("test_pattern1.hdltvout.dat");
}

test_pattern1::~test_pattern1() {
    if (mVcdFile) 
        sc_close_vcd_trace_file(mVcdFile);

    mHdltvinHandle << "] " << endl;
    mHdltvoutHandle << "] " << endl;
    mHdltvinHandle.close();
    mHdltvoutHandle.close();
    delete Loop_loop_height1_pr_U0;
    delete Mat2AXIvideo_U0;
    delete imag0_0_data_stream_s_U;
    delete imag0_0_data_stream_1_U;
    delete imag0_0_data_stream_2_U;
}

void test_pattern1::thread_ap_var_for_const0() {
    ap_var_for_const0 = ap_const_logic_1;
}

void test_pattern1::thread_ap_clk_no_reset_() {
    if ( ap_rst_n_inv.read() == ap_const_logic_1) {
        Mat2AXIvideo_U0_ap_start = ap_const_logic_0;
    } else {
        Mat2AXIvideo_U0_ap_start = ap_const_logic_1;
    }
}

void test_pattern1::thread_Loop_loop_height1_pr_U0_ap_continue() {
    Loop_loop_height1_pr_U0_ap_continue = ap_const_logic_1;
}

void test_pattern1::thread_Loop_loop_height1_pr_U0_ap_start() {
    Loop_loop_height1_pr_U0_ap_start = ap_start.read();
}

void test_pattern1::thread_Loop_loop_height1_pr_U0_start_full_n() {
    Loop_loop_height1_pr_U0_start_full_n = ap_const_logic_1;
}

void test_pattern1::thread_Loop_loop_height1_pr_U0_start_write() {
    Loop_loop_height1_pr_U0_start_write = ap_const_logic_0;
}

void test_pattern1::thread_Mat2AXIvideo_U0_ap_continue() {
    Mat2AXIvideo_U0_ap_continue = ap_const_logic_1;
}

void test_pattern1::thread_Mat2AXIvideo_U0_start_full_n() {
    Mat2AXIvideo_U0_start_full_n = ap_const_logic_1;
}

void test_pattern1::thread_Mat2AXIvideo_U0_start_write() {
    Mat2AXIvideo_U0_start_write = ap_const_logic_0;
}

void test_pattern1::thread_ap_done() {
    ap_done = Mat2AXIvideo_U0_ap_done.read();
}

void test_pattern1::thread_ap_idle() {
    ap_idle = (Loop_loop_height1_pr_U0_ap_idle.read() & Mat2AXIvideo_U0_ap_idle.read());
}

void test_pattern1::thread_ap_ready() {
    ap_ready = Mat2AXIvideo_U0_ap_done.read();
}

void test_pattern1::thread_ap_rst_n_inv() {
    ap_rst_n_inv =  (sc_logic) (~ap_rst_n.read());
}

void test_pattern1::thread_ap_sync_continue() {
    ap_sync_continue = ap_const_logic_1;
}

void test_pattern1::thread_ap_sync_done() {
    ap_sync_done = Mat2AXIvideo_U0_ap_done.read();
}

void test_pattern1::thread_ap_sync_ready() {
    ap_sync_ready = ap_sync_done.read();
}

void test_pattern1::thread_src_axi0_TDATA() {
    src_axi0_TDATA = Mat2AXIvideo_U0_src_axi0_TDATA.read();
}

void test_pattern1::thread_src_axi0_TDEST() {
    src_axi0_TDEST = Mat2AXIvideo_U0_src_axi0_TDEST.read();
}

void test_pattern1::thread_src_axi0_TID() {
    src_axi0_TID = Mat2AXIvideo_U0_src_axi0_TID.read();
}

void test_pattern1::thread_src_axi0_TKEEP() {
    src_axi0_TKEEP = Mat2AXIvideo_U0_src_axi0_TKEEP.read();
}

void test_pattern1::thread_src_axi0_TLAST() {
    src_axi0_TLAST = Mat2AXIvideo_U0_src_axi0_TLAST.read();
}

void test_pattern1::thread_src_axi0_TSTRB() {
    src_axi0_TSTRB = Mat2AXIvideo_U0_src_axi0_TSTRB.read();
}

void test_pattern1::thread_src_axi0_TUSER() {
    src_axi0_TUSER = Mat2AXIvideo_U0_src_axi0_TUSER.read();
}

void test_pattern1::thread_src_axi0_TVALID() {
    src_axi0_TVALID = Mat2AXIvideo_U0_src_axi0_TVALID.read();
}

void test_pattern1::thread_hdltv_gen() {
    const char* dump_tv = std::getenv("AP_WRITE_TV");
    if (!(dump_tv && string(dump_tv) == "on")) return;

    wait();

    mHdltvinHandle << "[ " << endl;
    mHdltvoutHandle << "[ " << endl;
    int ap_cycleNo = 0;
    while (1) {
        wait();
        const char* mComma = ap_cycleNo == 0 ? " " : ", " ;
        mHdltvoutHandle << mComma << "{"  <<  " \"src_axi0_TDATA\" :  \"" << src_axi0_TDATA.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"src_axi0_TKEEP\" :  \"" << src_axi0_TKEEP.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"src_axi0_TSTRB\" :  \"" << src_axi0_TSTRB.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"src_axi0_TUSER\" :  \"" << src_axi0_TUSER.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"src_axi0_TLAST\" :  \"" << src_axi0_TLAST.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"src_axi0_TID\" :  \"" << src_axi0_TID.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"src_axi0_TDEST\" :  \"" << src_axi0_TDEST.read() << "\" ";
        mHdltvinHandle << mComma << "{"  <<  " \"ap_rst_n\" :  \"" << ap_rst_n.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"ap_start\" :  \"" << ap_start.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"src_axi0_TVALID\" :  \"" << src_axi0_TVALID.read() << "\" ";
        mHdltvinHandle << " , " <<  " \"src_axi0_TREADY\" :  \"" << src_axi0_TREADY.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_done\" :  \"" << ap_done.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_ready\" :  \"" << ap_ready.read() << "\" ";
        mHdltvoutHandle << " , " <<  " \"ap_idle\" :  \"" << ap_idle.read() << "\" ";
        mHdltvinHandle << "}" << std::endl;
        mHdltvoutHandle << "}" << std::endl;
        ap_cycleNo++;
    }
}

}

