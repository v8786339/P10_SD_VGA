// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _Loop_loop_height_pro_HH_
#define _Loop_loop_height_pro_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "vip1_m_mul_mul_10bkb.h"
#include "fifo_w8_d640_A.h"

namespace ap_rtl {

struct Loop_loop_height_pro : public sc_module {
    // Port declarations 28
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_in< sc_logic > start_full_n;
    sc_out< sc_logic > ap_done;
    sc_in< sc_logic > ap_continue;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_logic > start_out;
    sc_out< sc_logic > start_write;
    sc_out< sc_lv<8> > imag_1_data_stream_0_V_din;
    sc_in< sc_logic > imag_1_data_stream_0_V_full_n;
    sc_out< sc_logic > imag_1_data_stream_0_V_write;
    sc_out< sc_lv<8> > imag_1_data_stream_1_V_din;
    sc_in< sc_logic > imag_1_data_stream_1_V_full_n;
    sc_out< sc_logic > imag_1_data_stream_1_V_write;
    sc_out< sc_lv<8> > imag_1_data_stream_2_V_din;
    sc_in< sc_logic > imag_1_data_stream_2_V_full_n;
    sc_out< sc_logic > imag_1_data_stream_2_V_write;
    sc_in< sc_lv<8> > imag0_0_data_stream_0_V_dout;
    sc_in< sc_logic > imag0_0_data_stream_0_V_empty_n;
    sc_out< sc_logic > imag0_0_data_stream_0_V_read;
    sc_in< sc_lv<8> > imag0_0_data_stream_1_V_dout;
    sc_in< sc_logic > imag0_0_data_stream_1_V_empty_n;
    sc_out< sc_logic > imag0_0_data_stream_1_V_read;
    sc_in< sc_lv<8> > imag0_0_data_stream_2_V_dout;
    sc_in< sc_logic > imag0_0_data_stream_2_V_empty_n;
    sc_out< sc_logic > imag0_0_data_stream_2_V_read;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    Loop_loop_height_pro(sc_module_name name);
    SC_HAS_PROCESS(Loop_loop_height_pro);

    ~Loop_loop_height_pro();

    sc_trace_file* mVcdFile;

    vip1_m_mul_mul_10bkb<1,1,10,12,22>* vip1_m_mul_mul_10bkb_U11;
    fifo_w8_d640_A* imag2_0_data_stream_s_fifo_U;
    fifo_w8_d640_A* imag2_0_data_stream_1_fifo_U;
    fifo_w8_d640_A* imag2_0_data_stream_2_fifo_U;
    fifo_w8_d640_A* imag3_0_data_stream_s_fifo_U;
    fifo_w8_d640_A* imag3_0_data_stream_1_fifo_U;
    fifo_w8_d640_A* imag3_0_data_stream_2_fifo_U;
    sc_signal< sc_logic > real_start;
    sc_signal< sc_logic > start_once_reg;
    sc_signal< sc_logic > ap_done_reg;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > internal_ap_ready;
    sc_signal< sc_logic > imag_1_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter3;
    sc_signal< bool > ap_block_pp0_stage0;
    sc_signal< sc_lv<1> > exitcond_reg_557;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_exitcond_reg_557;
    sc_signal< sc_logic > imag_1_data_stream_1_V_blk_n;
    sc_signal< sc_logic > imag_1_data_stream_2_V_blk_n;
    sc_signal< sc_logic > imag0_0_data_stream_0_V_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_pp0_stage0;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter1;
    sc_signal< sc_lv<1> > or_cond_reg_570;
    sc_signal< sc_logic > imag0_0_data_stream_1_V_blk_n;
    sc_signal< sc_logic > imag0_0_data_stream_2_V_blk_n;
    sc_signal< sc_lv<11> > t_V_1_reg_253;
    sc_signal< sc_lv<1> > exitcond1_fu_309_p2;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<10> > i_V_fu_315_p2;
    sc_signal< sc_lv<10> > i_V_reg_547;
    sc_signal< sc_lv<1> > tmp_5_fu_321_p2;
    sc_signal< sc_lv<1> > tmp_5_reg_552;
    sc_signal< sc_lv<1> > exitcond_fu_327_p2;
    sc_signal< bool > ap_block_state3_pp0_stage0_iter0;
    sc_signal< sc_lv<8> > imag3_0_data_stream_s_dout;
    sc_signal< sc_logic > imag3_0_data_stream_s_empty_n;
    sc_signal< sc_logic > imag3_0_data_stream_s_read;
    sc_signal< sc_lv<1> > tmp_7_reg_566;
    sc_signal< bool > ap_predicate_op58_read_state4;
    sc_signal< sc_lv<8> > imag3_0_data_stream_1_dout;
    sc_signal< sc_logic > imag3_0_data_stream_1_empty_n;
    sc_signal< sc_logic > imag3_0_data_stream_1_read;
    sc_signal< sc_lv<8> > imag3_0_data_stream_2_dout;
    sc_signal< sc_logic > imag3_0_data_stream_2_empty_n;
    sc_signal< sc_logic > imag3_0_data_stream_2_read;
    sc_signal< sc_lv<8> > imag2_0_data_stream_s_dout;
    sc_signal< sc_logic > imag2_0_data_stream_s_empty_n;
    sc_signal< sc_logic > imag2_0_data_stream_s_read;
    sc_signal< bool > ap_predicate_op68_read_state4;
    sc_signal< sc_lv<8> > imag2_0_data_stream_1_dout;
    sc_signal< sc_logic > imag2_0_data_stream_1_empty_n;
    sc_signal< sc_logic > imag2_0_data_stream_1_read;
    sc_signal< sc_lv<8> > imag2_0_data_stream_2_dout;
    sc_signal< sc_logic > imag2_0_data_stream_2_empty_n;
    sc_signal< sc_logic > imag2_0_data_stream_2_read;
    sc_signal< sc_lv<8> > imag3_0_data_stream_s_din;
    sc_signal< sc_logic > imag3_0_data_stream_s_full_n;
    sc_signal< sc_logic > imag3_0_data_stream_s_write;
    sc_signal< bool > ap_predicate_op90_write_state4;
    sc_signal< sc_lv<8> > imag3_0_data_stream_1_din;
    sc_signal< sc_logic > imag3_0_data_stream_1_full_n;
    sc_signal< sc_logic > imag3_0_data_stream_1_write;
    sc_signal< sc_lv<8> > imag3_0_data_stream_2_din;
    sc_signal< sc_logic > imag3_0_data_stream_2_full_n;
    sc_signal< sc_logic > imag3_0_data_stream_2_write;
    sc_signal< bool > ap_predicate_op97_read_state4;
    sc_signal< sc_logic > imag2_0_data_stream_s_full_n;
    sc_signal< sc_logic > imag2_0_data_stream_s_write;
    sc_signal< sc_logic > imag2_0_data_stream_1_full_n;
    sc_signal< sc_logic > imag2_0_data_stream_1_write;
    sc_signal< sc_logic > imag2_0_data_stream_2_full_n;
    sc_signal< sc_logic > imag2_0_data_stream_2_write;
    sc_signal< bool > ap_block_state4_pp0_stage0_iter1;
    sc_signal< bool > ap_block_state5_pp0_stage0_iter2;
    sc_signal< bool > ap_block_state6_pp0_stage0_iter3;
    sc_signal< bool > ap_block_pp0_stage0_11001;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_exitcond_reg_557;
    sc_signal< sc_lv<11> > j_V_fu_333_p2;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter0;
    sc_signal< sc_lv<1> > tmp_7_fu_339_p2;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_tmp_7_reg_566;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_tmp_7_reg_566;
    sc_signal< sc_lv<1> > or_cond_fu_345_p2;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter1_or_cond_reg_570;
    sc_signal< sc_lv<1> > ap_reg_pp0_iter2_or_cond_reg_570;
    sc_signal< sc_lv<1> > tmp_s_fu_350_p2;
    sc_signal< sc_lv<1> > tmp_s_reg_574;
    sc_signal< sc_lv<1> > tmp_8_fu_356_p2;
    sc_signal< sc_lv<1> > tmp_8_reg_580;
    sc_signal< sc_lv<1> > not_tmp_s_fu_362_p2;
    sc_signal< sc_lv<1> > not_tmp_s_reg_586;
    sc_signal< sc_lv<10> > tmp_20_fu_390_p2;
    sc_signal< sc_lv<10> > tmp_20_reg_592;
    sc_signal< sc_lv<10> > tmp_13_fu_418_p2;
    sc_signal< sc_lv<10> > tmp_13_reg_597;
    sc_signal< sc_lv<8> > tmp_3_fu_460_p3;
    sc_signal< sc_lv<8> > tmp_6_fu_469_p3;
    sc_signal< sc_lv<8> > tmp_9_fu_478_p3;
    sc_signal< sc_lv<8> > s_val_0_reg_632;
    sc_signal< bool > ap_block_pp0_stage0_subdone;
    sc_signal< sc_logic > ap_condition_pp0_exit_iter0_state3;
    sc_signal< sc_logic > ap_enable_reg_pp0_iter2;
    sc_signal< sc_lv<10> > t_V_reg_242;
    sc_signal< bool > ap_block_state1;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<10> > ap_phi_mux_storemerge256_in_in_phi_fu_267_p4;
    sc_signal< sc_lv<10> > ap_phi_reg_pp0_iter2_storemerge256_in_in_reg_264;
    sc_signal< sc_lv<8> > ap_phi_mux_tmp_22_phi_fu_276_p6;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter0_tmp_22_reg_273;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter1_tmp_22_reg_273;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter2_tmp_22_reg_273;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter3_tmp_22_reg_273;
    sc_signal< sc_lv<8> > ap_phi_mux_tmp_23_phi_fu_288_p6;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter0_tmp_23_reg_285;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter1_tmp_23_reg_285;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter2_tmp_23_reg_285;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter3_tmp_23_reg_285;
    sc_signal< sc_lv<8> > ap_phi_mux_tmp_24_phi_fu_300_p6;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter0_tmp_24_reg_297;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter1_tmp_24_reg_297;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter2_tmp_24_reg_297;
    sc_signal< sc_lv<8> > ap_phi_reg_pp0_iter3_tmp_24_reg_297;
    sc_signal< bool > ap_block_pp0_stage0_01001;
    sc_signal< sc_lv<9> > tmp_23_cast_fu_372_p1;
    sc_signal< sc_lv<9> > tmp_22_cast_fu_368_p1;
    sc_signal< sc_lv<9> > tmp_18_fu_376_p2;
    sc_signal< sc_lv<10> > tmp_25_cast_fu_382_p1;
    sc_signal< sc_lv<10> > tmp_24_cast_fu_386_p1;
    sc_signal< sc_lv<9> > tmp_16_cast_fu_400_p1;
    sc_signal< sc_lv<9> > tmp_15_cast_fu_396_p1;
    sc_signal< sc_lv<9> > tmp_12_fu_404_p2;
    sc_signal< sc_lv<10> > tmp_18_cast_fu_410_p1;
    sc_signal< sc_lv<10> > tmp_17_cast_fu_414_p1;
    sc_signal< sc_lv<1> > not_tmp_1_fu_424_p2;
    sc_signal< sc_lv<1> > p_not_tmp_s_fu_429_p2;
    sc_signal< sc_lv<1> > p_not_tmp_1_fu_434_p2;
    sc_signal< sc_lv<1> > not_tmp_2_fu_443_p2;
    sc_signal< sc_lv<1> > s_val_2_fu_454_p2;
    sc_signal< sc_lv<1> > s_val_1_fu_448_p2;
    sc_signal< sc_lv<1> > s_val_0_3_fu_438_p2;
    sc_signal< sc_lv<22> > mul_fu_500_p2;
    sc_signal< sc_lv<10> > mul_fu_500_p0;
    sc_signal< sc_lv<12> > mul_fu_500_p1;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    sc_signal< sc_logic > ap_idle_pp0;
    sc_signal< sc_logic > ap_enable_pp0;
    sc_signal< sc_lv<22> > mul_fu_500_p00;
    sc_signal< bool > ap_condition_598;
    sc_signal< bool > ap_condition_182;
    sc_signal< bool > ap_condition_350;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_pp0_stage0;
    static const sc_lv<4> ap_ST_fsm_state7;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const bool ap_const_boolean_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<10> ap_const_lv10_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<11> ap_const_lv11_0;
    static const sc_lv<10> ap_const_lv10_3C0;
    static const sc_lv<10> ap_const_lv10_1;
    static const sc_lv<10> ap_const_lv10_1E0;
    static const sc_lv<11> ap_const_lv11_500;
    static const sc_lv<11> ap_const_lv11_1;
    static const sc_lv<11> ap_const_lv11_280;
    static const sc_lv<11> ap_const_lv11_A0;
    static const sc_lv<11> ap_const_lv11_140;
    static const sc_lv<11> ap_const_lv11_1DF;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_13;
    static const sc_lv<22> ap_const_lv22_556;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_pp0_stage0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state7();
    void thread_ap_block_pp0_stage0();
    void thread_ap_block_pp0_stage0_01001();
    void thread_ap_block_pp0_stage0_11001();
    void thread_ap_block_pp0_stage0_subdone();
    void thread_ap_block_state1();
    void thread_ap_block_state3_pp0_stage0_iter0();
    void thread_ap_block_state4_pp0_stage0_iter1();
    void thread_ap_block_state5_pp0_stage0_iter2();
    void thread_ap_block_state6_pp0_stage0_iter3();
    void thread_ap_condition_182();
    void thread_ap_condition_350();
    void thread_ap_condition_598();
    void thread_ap_condition_pp0_exit_iter0_state3();
    void thread_ap_done();
    void thread_ap_enable_pp0();
    void thread_ap_idle();
    void thread_ap_idle_pp0();
    void thread_ap_phi_mux_storemerge256_in_in_phi_fu_267_p4();
    void thread_ap_phi_mux_tmp_22_phi_fu_276_p6();
    void thread_ap_phi_mux_tmp_23_phi_fu_288_p6();
    void thread_ap_phi_mux_tmp_24_phi_fu_300_p6();
    void thread_ap_phi_reg_pp0_iter0_tmp_22_reg_273();
    void thread_ap_phi_reg_pp0_iter0_tmp_23_reg_285();
    void thread_ap_phi_reg_pp0_iter0_tmp_24_reg_297();
    void thread_ap_phi_reg_pp0_iter2_storemerge256_in_in_reg_264();
    void thread_ap_predicate_op58_read_state4();
    void thread_ap_predicate_op68_read_state4();
    void thread_ap_predicate_op90_write_state4();
    void thread_ap_predicate_op97_read_state4();
    void thread_ap_ready();
    void thread_exitcond1_fu_309_p2();
    void thread_exitcond_fu_327_p2();
    void thread_i_V_fu_315_p2();
    void thread_imag0_0_data_stream_0_V_blk_n();
    void thread_imag0_0_data_stream_0_V_read();
    void thread_imag0_0_data_stream_1_V_blk_n();
    void thread_imag0_0_data_stream_1_V_read();
    void thread_imag0_0_data_stream_2_V_blk_n();
    void thread_imag0_0_data_stream_2_V_read();
    void thread_imag2_0_data_stream_1_read();
    void thread_imag2_0_data_stream_1_write();
    void thread_imag2_0_data_stream_2_read();
    void thread_imag2_0_data_stream_2_write();
    void thread_imag2_0_data_stream_s_read();
    void thread_imag2_0_data_stream_s_write();
    void thread_imag3_0_data_stream_1_din();
    void thread_imag3_0_data_stream_1_read();
    void thread_imag3_0_data_stream_1_write();
    void thread_imag3_0_data_stream_2_din();
    void thread_imag3_0_data_stream_2_read();
    void thread_imag3_0_data_stream_2_write();
    void thread_imag3_0_data_stream_s_din();
    void thread_imag3_0_data_stream_s_read();
    void thread_imag3_0_data_stream_s_write();
    void thread_imag_1_data_stream_0_V_blk_n();
    void thread_imag_1_data_stream_0_V_din();
    void thread_imag_1_data_stream_0_V_write();
    void thread_imag_1_data_stream_1_V_blk_n();
    void thread_imag_1_data_stream_1_V_din();
    void thread_imag_1_data_stream_1_V_write();
    void thread_imag_1_data_stream_2_V_blk_n();
    void thread_imag_1_data_stream_2_V_din();
    void thread_imag_1_data_stream_2_V_write();
    void thread_internal_ap_ready();
    void thread_j_V_fu_333_p2();
    void thread_mul_fu_500_p0();
    void thread_mul_fu_500_p00();
    void thread_mul_fu_500_p1();
    void thread_not_tmp_1_fu_424_p2();
    void thread_not_tmp_2_fu_443_p2();
    void thread_not_tmp_s_fu_362_p2();
    void thread_or_cond_fu_345_p2();
    void thread_p_not_tmp_1_fu_434_p2();
    void thread_p_not_tmp_s_fu_429_p2();
    void thread_real_start();
    void thread_s_val_0_3_fu_438_p2();
    void thread_s_val_1_fu_448_p2();
    void thread_s_val_2_fu_454_p2();
    void thread_start_out();
    void thread_start_write();
    void thread_tmp_12_fu_404_p2();
    void thread_tmp_13_fu_418_p2();
    void thread_tmp_15_cast_fu_396_p1();
    void thread_tmp_16_cast_fu_400_p1();
    void thread_tmp_17_cast_fu_414_p1();
    void thread_tmp_18_cast_fu_410_p1();
    void thread_tmp_18_fu_376_p2();
    void thread_tmp_20_fu_390_p2();
    void thread_tmp_22_cast_fu_368_p1();
    void thread_tmp_23_cast_fu_372_p1();
    void thread_tmp_24_cast_fu_386_p1();
    void thread_tmp_25_cast_fu_382_p1();
    void thread_tmp_3_fu_460_p3();
    void thread_tmp_5_fu_321_p2();
    void thread_tmp_6_fu_469_p3();
    void thread_tmp_7_fu_339_p2();
    void thread_tmp_8_fu_356_p2();
    void thread_tmp_9_fu_478_p3();
    void thread_tmp_s_fu_350_p2();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
