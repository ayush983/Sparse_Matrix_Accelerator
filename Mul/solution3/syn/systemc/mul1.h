// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2018.2
// Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _mul1_HH_
#define _mul1_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct mul1 : public sc_module {
    // Port declarations 30
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<6> > A_address0;
    sc_out< sc_logic > A_ce0;
    sc_out< sc_logic > A_we0;
    sc_out< sc_lv<32> > A_d0;
    sc_in< sc_lv<32> > A_q0;
    sc_out< sc_lv<6> > A_address1;
    sc_out< sc_logic > A_ce1;
    sc_out< sc_logic > A_we1;
    sc_out< sc_lv<32> > A_d1;
    sc_in< sc_lv<32> > A_q1;
    sc_out< sc_lv<6> > B_address0;
    sc_out< sc_logic > B_ce0;
    sc_in< sc_lv<32> > B_q0;
    sc_out< sc_lv<6> > C_address0;
    sc_out< sc_logic > C_ce0;
    sc_out< sc_logic > C_we0;
    sc_out< sc_lv<32> > C_d0;
    sc_in< sc_lv<32> > C_q0;
    sc_out< sc_lv<5> > sparse_new_address0;
    sc_out< sc_logic > sparse_new_ce0;
    sc_in< sc_lv<32> > sparse_new_q0;
    sc_out< sc_lv<5> > sparse_new_address1;
    sc_out< sc_logic > sparse_new_ce1;
    sc_in< sc_lv<32> > sparse_new_q1;


    // Module declarations
    mul1(sc_module_name name);
    SC_HAS_PROCESS(mul1);

    ~mul1();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    sc_signal< sc_lv<8> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > i_1_fu_130_p2;
    sc_signal< sc_lv<3> > i_1_reg_254;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > tmp_2_fu_152_p2;
    sc_signal< sc_lv<6> > tmp_2_reg_259;
    sc_signal< sc_lv<1> > exitcond1_fu_124_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<5> > tmp_4_fu_183_p1;
    sc_signal< sc_lv<5> > tmp_4_reg_280;
    sc_signal< sc_lv<32> > val_reg_285;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > tmp_9_cast_fu_191_p3;
    sc_signal< sc_lv<8> > tmp_9_cast_reg_290;
    sc_signal< sc_lv<8> > tmp_11_cast_fu_199_p3;
    sc_signal< sc_lv<8> > tmp_11_cast_reg_295;
    sc_signal< sc_lv<4> > j_1_fu_212_p2;
    sc_signal< sc_lv<4> > j_1_reg_303;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<1> > exitcond_fu_206_p2;
    sc_signal< sc_lv<6> > C_addr_reg_313;
    sc_signal< sc_lv<32> > B_load_reg_318;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<32> > tmp_5_fu_242_p2;
    sc_signal< sc_lv<32> > tmp_5_reg_323;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<32> > C_load_reg_328;
    sc_signal< sc_lv<3> > i_reg_102;
    sc_signal< sc_lv<4> > j_reg_113;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<64> > tmp_2_cast_fu_158_p1;
    sc_signal< sc_lv<64> > tmp_3_cast_fu_168_p1;
    sc_signal< sc_lv<64> > tmp_7_cast_fu_178_p1;
    sc_signal< sc_lv<64> > tmp_12_cast_fu_227_p1;
    sc_signal< sc_lv<64> > tmp_13_cast_fu_237_p1;
    sc_signal< sc_lv<5> > tmp_1_fu_140_p3;
    sc_signal< sc_lv<6> > p_shl_cast_fu_148_p1;
    sc_signal< sc_lv<6> > tmp_cast_fu_136_p1;
    sc_signal< sc_lv<6> > tmp_3_fu_163_p2;
    sc_signal< sc_lv<6> > tmp_7_fu_173_p2;
    sc_signal< sc_lv<5> > tmp_fu_187_p1;
    sc_signal< sc_lv<8> > tmp_4_cast_fu_218_p1;
    sc_signal< sc_lv<8> > tmp_s_fu_222_p2;
    sc_signal< sc_lv<8> > tmp_8_fu_232_p2;
    sc_signal< sc_lv<8> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<8> ap_ST_fsm_state1;
    static const sc_lv<8> ap_ST_fsm_state2;
    static const sc_lv<8> ap_ST_fsm_state3;
    static const sc_lv<8> ap_ST_fsm_state4;
    static const sc_lv<8> ap_ST_fsm_state5;
    static const sc_lv<8> ap_ST_fsm_state6;
    static const sc_lv<8> ap_ST_fsm_state7;
    static const sc_lv<8> ap_ST_fsm_state8;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<4> ap_const_lv4_0;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_2;
    static const sc_lv<4> ap_const_lv4_8;
    static const sc_lv<4> ap_const_lv4_1;
    static const sc_lv<6> ap_const_lv6_0;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_A_address0();
    void thread_A_address1();
    void thread_A_ce0();
    void thread_A_ce1();
    void thread_A_d0();
    void thread_A_d1();
    void thread_A_we0();
    void thread_A_we1();
    void thread_B_address0();
    void thread_B_ce0();
    void thread_C_address0();
    void thread_C_ce0();
    void thread_C_d0();
    void thread_C_we0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond1_fu_124_p2();
    void thread_exitcond_fu_206_p2();
    void thread_i_1_fu_130_p2();
    void thread_j_1_fu_212_p2();
    void thread_p_shl_cast_fu_148_p1();
    void thread_sparse_new_address0();
    void thread_sparse_new_address1();
    void thread_sparse_new_ce0();
    void thread_sparse_new_ce1();
    void thread_tmp_11_cast_fu_199_p3();
    void thread_tmp_12_cast_fu_227_p1();
    void thread_tmp_13_cast_fu_237_p1();
    void thread_tmp_1_fu_140_p3();
    void thread_tmp_2_cast_fu_158_p1();
    void thread_tmp_2_fu_152_p2();
    void thread_tmp_3_cast_fu_168_p1();
    void thread_tmp_3_fu_163_p2();
    void thread_tmp_4_cast_fu_218_p1();
    void thread_tmp_4_fu_183_p1();
    void thread_tmp_5_fu_242_p2();
    void thread_tmp_7_cast_fu_178_p1();
    void thread_tmp_7_fu_173_p2();
    void thread_tmp_8_fu_232_p2();
    void thread_tmp_9_cast_fu_191_p3();
    void thread_tmp_cast_fu_136_p1();
    void thread_tmp_fu_187_p1();
    void thread_tmp_s_fu_222_p2();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif