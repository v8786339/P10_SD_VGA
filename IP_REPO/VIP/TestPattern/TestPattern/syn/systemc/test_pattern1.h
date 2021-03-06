// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _test_pattern1_HH_
#define _test_pattern1_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "Loop_loop_height1_pr.h"
#include "Mat2AXIvideo.h"
#include "fifo_w8_d1_A.h"

namespace ap_rtl {

struct test_pattern1 : public sc_module {
    // Port declarations 15
    sc_out< sc_lv<24> > src_axi0_TDATA;
    sc_out< sc_lv<3> > src_axi0_TKEEP;
    sc_out< sc_lv<3> > src_axi0_TSTRB;
    sc_out< sc_lv<1> > src_axi0_TUSER;
    sc_out< sc_lv<1> > src_axi0_TLAST;
    sc_out< sc_lv<1> > src_axi0_TID;
    sc_out< sc_lv<1> > src_axi0_TDEST;
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > src_axi0_TVALID;
    sc_in< sc_logic > src_axi0_TREADY;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > ap_idle;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    test_pattern1(sc_module_name name);
    SC_HAS_PROCESS(test_pattern1);

    ~test_pattern1();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    Loop_loop_height1_pr* Loop_loop_height1_pr_U0;
    Mat2AXIvideo* Mat2AXIvideo_U0;
    fifo_w8_d1_A* imag0_0_data_stream_s_U;
    fifo_w8_d1_A* imag0_0_data_stream_1_U;
    fifo_w8_d1_A* imag0_0_data_stream_2_U;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > Loop_loop_height1_pr_U0_ap_start;
    sc_signal< sc_logic > Loop_loop_height1_pr_U0_ap_done;
    sc_signal< sc_logic > Loop_loop_height1_pr_U0_ap_continue;
    sc_signal< sc_logic > Loop_loop_height1_pr_U0_ap_idle;
    sc_signal< sc_logic > Loop_loop_height1_pr_U0_ap_ready;
    sc_signal< sc_lv<8> > Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_din;
    sc_signal< sc_logic > Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_write;
    sc_signal< sc_lv<8> > Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_din;
    sc_signal< sc_logic > Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_write;
    sc_signal< sc_lv<8> > Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_din;
    sc_signal< sc_logic > Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_write;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_start;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_done;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_continue;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_idle;
    sc_signal< sc_logic > Mat2AXIvideo_U0_ap_ready;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_0_V_read;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_1_V_read;
    sc_signal< sc_logic > Mat2AXIvideo_U0_img_data_stream_2_V_read;
    sc_signal< sc_lv<24> > Mat2AXIvideo_U0_src_axi0_TDATA;
    sc_signal< sc_logic > Mat2AXIvideo_U0_src_axi0_TVALID;
    sc_signal< sc_lv<3> > Mat2AXIvideo_U0_src_axi0_TKEEP;
    sc_signal< sc_lv<3> > Mat2AXIvideo_U0_src_axi0_TSTRB;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_src_axi0_TUSER;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_src_axi0_TLAST;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_src_axi0_TID;
    sc_signal< sc_lv<1> > Mat2AXIvideo_U0_src_axi0_TDEST;
    sc_signal< sc_logic > ap_sync_continue;
    sc_signal< sc_logic > imag0_0_data_stream_s_full_n;
    sc_signal< sc_lv<8> > imag0_0_data_stream_s_dout;
    sc_signal< sc_logic > imag0_0_data_stream_s_empty_n;
    sc_signal< sc_logic > imag0_0_data_stream_1_full_n;
    sc_signal< sc_lv<8> > imag0_0_data_stream_1_dout;
    sc_signal< sc_logic > imag0_0_data_stream_1_empty_n;
    sc_signal< sc_logic > imag0_0_data_stream_2_full_n;
    sc_signal< sc_lv<8> > imag0_0_data_stream_2_dout;
    sc_signal< sc_logic > imag0_0_data_stream_2_empty_n;
    sc_signal< sc_logic > ap_sync_done;
    sc_signal< sc_logic > ap_sync_ready;
    sc_signal< sc_logic > Loop_loop_height1_pr_U0_start_full_n;
    sc_signal< sc_logic > Loop_loop_height1_pr_U0_start_write;
    sc_signal< sc_logic > Mat2AXIvideo_U0_start_full_n;
    sc_signal< sc_logic > Mat2AXIvideo_U0_start_write;
    static const sc_lv<24> ap_const_lv24_0;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_Loop_loop_height1_pr_U0_ap_continue();
    void thread_Loop_loop_height1_pr_U0_ap_start();
    void thread_Loop_loop_height1_pr_U0_start_full_n();
    void thread_Loop_loop_height1_pr_U0_start_write();
    void thread_Mat2AXIvideo_U0_ap_continue();
    void thread_Mat2AXIvideo_U0_start_full_n();
    void thread_Mat2AXIvideo_U0_start_write();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_ap_sync_continue();
    void thread_ap_sync_done();
    void thread_ap_sync_ready();
    void thread_src_axi0_TDATA();
    void thread_src_axi0_TDEST();
    void thread_src_axi0_TID();
    void thread_src_axi0_TKEEP();
    void thread_src_axi0_TLAST();
    void thread_src_axi0_TSTRB();
    void thread_src_axi0_TUSER();
    void thread_src_axi0_TVALID();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
