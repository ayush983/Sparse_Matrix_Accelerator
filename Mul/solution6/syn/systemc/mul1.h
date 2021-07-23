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
    // Port declarations 76
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<3> > B_0_address0;
    sc_out< sc_logic > B_0_ce0;
    sc_in< sc_lv<32> > B_0_q0;
    sc_out< sc_lv<3> > B_1_address0;
    sc_out< sc_logic > B_1_ce0;
    sc_in< sc_lv<32> > B_1_q0;
    sc_out< sc_lv<3> > B_2_address0;
    sc_out< sc_logic > B_2_ce0;
    sc_in< sc_lv<32> > B_2_q0;
    sc_out< sc_lv<3> > B_3_address0;
    sc_out< sc_logic > B_3_ce0;
    sc_in< sc_lv<32> > B_3_q0;
    sc_out< sc_lv<3> > B_4_address0;
    sc_out< sc_logic > B_4_ce0;
    sc_in< sc_lv<32> > B_4_q0;
    sc_out< sc_lv<3> > B_5_address0;
    sc_out< sc_logic > B_5_ce0;
    sc_in< sc_lv<32> > B_5_q0;
    sc_out< sc_lv<3> > B_6_address0;
    sc_out< sc_logic > B_6_ce0;
    sc_in< sc_lv<32> > B_6_q0;
    sc_out< sc_lv<3> > B_7_address0;
    sc_out< sc_logic > B_7_ce0;
    sc_in< sc_lv<32> > B_7_q0;
    sc_out< sc_lv<3> > C_0_address0;
    sc_out< sc_logic > C_0_ce0;
    sc_out< sc_logic > C_0_we0;
    sc_out< sc_lv<32> > C_0_d0;
    sc_in< sc_lv<32> > C_0_q0;
    sc_out< sc_lv<3> > C_1_address0;
    sc_out< sc_logic > C_1_ce0;
    sc_out< sc_logic > C_1_we0;
    sc_out< sc_lv<32> > C_1_d0;
    sc_in< sc_lv<32> > C_1_q0;
    sc_out< sc_lv<3> > C_2_address0;
    sc_out< sc_logic > C_2_ce0;
    sc_out< sc_logic > C_2_we0;
    sc_out< sc_lv<32> > C_2_d0;
    sc_in< sc_lv<32> > C_2_q0;
    sc_out< sc_lv<3> > C_3_address0;
    sc_out< sc_logic > C_3_ce0;
    sc_out< sc_logic > C_3_we0;
    sc_out< sc_lv<32> > C_3_d0;
    sc_in< sc_lv<32> > C_3_q0;
    sc_out< sc_lv<3> > C_4_address0;
    sc_out< sc_logic > C_4_ce0;
    sc_out< sc_logic > C_4_we0;
    sc_out< sc_lv<32> > C_4_d0;
    sc_in< sc_lv<32> > C_4_q0;
    sc_out< sc_lv<3> > C_5_address0;
    sc_out< sc_logic > C_5_ce0;
    sc_out< sc_logic > C_5_we0;
    sc_out< sc_lv<32> > C_5_d0;
    sc_in< sc_lv<32> > C_5_q0;
    sc_out< sc_lv<3> > C_6_address0;
    sc_out< sc_logic > C_6_ce0;
    sc_out< sc_logic > C_6_we0;
    sc_out< sc_lv<32> > C_6_d0;
    sc_in< sc_lv<32> > C_6_q0;
    sc_out< sc_lv<3> > C_7_address0;
    sc_out< sc_logic > C_7_ce0;
    sc_out< sc_logic > C_7_we0;
    sc_out< sc_lv<32> > C_7_d0;
    sc_in< sc_lv<32> > C_7_q0;
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
    sc_signal< sc_lv<6> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<3> > i_1_fu_310_p2;
    sc_signal< sc_lv<3> > i_1_reg_471;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<6> > tmp_4_fu_332_p2;
    sc_signal< sc_lv<6> > tmp_4_reg_476;
    sc_signal< sc_lv<1> > exitcond1_fu_304_p2;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<3> > C_0_addr_reg_501;
    sc_signal< sc_lv<3> > C_1_addr_reg_511;
    sc_signal< sc_lv<3> > C_2_addr_reg_521;
    sc_signal< sc_lv<3> > C_3_addr_reg_531;
    sc_signal< sc_lv<3> > C_4_addr_reg_541;
    sc_signal< sc_lv<3> > C_5_addr_reg_551;
    sc_signal< sc_lv<3> > C_6_addr_reg_561;
    sc_signal< sc_lv<3> > C_7_addr_reg_571;
    sc_signal< sc_lv<32> > val_reg_576;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<32> > B_0_load_reg_588;
    sc_signal< sc_lv<32> > B_1_load_reg_593;
    sc_signal< sc_lv<32> > B_2_load_reg_598;
    sc_signal< sc_lv<32> > B_3_load_reg_603;
    sc_signal< sc_lv<32> > B_4_load_reg_608;
    sc_signal< sc_lv<32> > B_5_load_reg_613;
    sc_signal< sc_lv<32> > B_6_load_reg_618;
    sc_signal< sc_lv<32> > B_7_load_reg_623;
    sc_signal< sc_lv<32> > tmp_5_fu_388_p2;
    sc_signal< sc_lv<32> > tmp_5_reg_628;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<32> > tmp_5_1_fu_392_p2;
    sc_signal< sc_lv<32> > tmp_5_1_reg_633;
    sc_signal< sc_lv<32> > tmp_5_2_fu_396_p2;
    sc_signal< sc_lv<32> > tmp_5_2_reg_638;
    sc_signal< sc_lv<32> > tmp_5_3_fu_400_p2;
    sc_signal< sc_lv<32> > tmp_5_3_reg_643;
    sc_signal< sc_lv<32> > tmp_5_4_fu_404_p2;
    sc_signal< sc_lv<32> > tmp_5_4_reg_648;
    sc_signal< sc_lv<32> > tmp_5_5_fu_408_p2;
    sc_signal< sc_lv<32> > tmp_5_5_reg_653;
    sc_signal< sc_lv<32> > tmp_5_6_fu_412_p2;
    sc_signal< sc_lv<32> > tmp_5_6_reg_658;
    sc_signal< sc_lv<32> > tmp_5_7_fu_416_p2;
    sc_signal< sc_lv<32> > tmp_5_7_reg_663;
    sc_signal< sc_lv<3> > i_reg_293;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_lv<64> > tmp_4_cast_fu_338_p1;
    sc_signal< sc_lv<64> > tmp_7_cast_fu_349_p1;
    sc_signal< sc_lv<64> > tmp_8_cast_fu_359_p1;
    sc_signal< sc_lv<64> > tmp_1_fu_364_p1;
    sc_signal< sc_lv<64> > tmp_2_fu_376_p1;
    sc_signal< sc_lv<5> > tmp_3_fu_320_p3;
    sc_signal< sc_lv<6> > p_shl_cast_fu_328_p1;
    sc_signal< sc_lv<6> > tmp_cast_fu_316_p1;
    sc_signal< sc_lv<6> > tmp_7_fu_343_p2;
    sc_signal< sc_lv<6> > tmp_8_fu_354_p2;
    sc_signal< sc_lv<6> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<6> ap_ST_fsm_state1;
    static const sc_lv<6> ap_ST_fsm_state2;
    static const sc_lv<6> ap_ST_fsm_state3;
    static const sc_lv<6> ap_ST_fsm_state4;
    static const sc_lv<6> ap_ST_fsm_state5;
    static const sc_lv<6> ap_ST_fsm_state6;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<3> ap_const_lv3_0;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<3> ap_const_lv3_6;
    static const sc_lv<3> ap_const_lv3_1;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<6> ap_const_lv6_1;
    static const sc_lv<6> ap_const_lv6_2;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_B_0_address0();
    void thread_B_0_ce0();
    void thread_B_1_address0();
    void thread_B_1_ce0();
    void thread_B_2_address0();
    void thread_B_2_ce0();
    void thread_B_3_address0();
    void thread_B_3_ce0();
    void thread_B_4_address0();
    void thread_B_4_ce0();
    void thread_B_5_address0();
    void thread_B_5_ce0();
    void thread_B_6_address0();
    void thread_B_6_ce0();
    void thread_B_7_address0();
    void thread_B_7_ce0();
    void thread_C_0_address0();
    void thread_C_0_ce0();
    void thread_C_0_d0();
    void thread_C_0_we0();
    void thread_C_1_address0();
    void thread_C_1_ce0();
    void thread_C_1_d0();
    void thread_C_1_we0();
    void thread_C_2_address0();
    void thread_C_2_ce0();
    void thread_C_2_d0();
    void thread_C_2_we0();
    void thread_C_3_address0();
    void thread_C_3_ce0();
    void thread_C_3_d0();
    void thread_C_3_we0();
    void thread_C_4_address0();
    void thread_C_4_ce0();
    void thread_C_4_d0();
    void thread_C_4_we0();
    void thread_C_5_address0();
    void thread_C_5_ce0();
    void thread_C_5_d0();
    void thread_C_5_we0();
    void thread_C_6_address0();
    void thread_C_6_ce0();
    void thread_C_6_d0();
    void thread_C_6_we0();
    void thread_C_7_address0();
    void thread_C_7_ce0();
    void thread_C_7_d0();
    void thread_C_7_we0();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_exitcond1_fu_304_p2();
    void thread_i_1_fu_310_p2();
    void thread_p_shl_cast_fu_328_p1();
    void thread_sparse_new_address0();
    void thread_sparse_new_address1();
    void thread_sparse_new_ce0();
    void thread_sparse_new_ce1();
    void thread_tmp_1_fu_364_p1();
    void thread_tmp_2_fu_376_p1();
    void thread_tmp_3_fu_320_p3();
    void thread_tmp_4_cast_fu_338_p1();
    void thread_tmp_4_fu_332_p2();
    void thread_tmp_5_1_fu_392_p2();
    void thread_tmp_5_2_fu_396_p2();
    void thread_tmp_5_3_fu_400_p2();
    void thread_tmp_5_4_fu_404_p2();
    void thread_tmp_5_5_fu_408_p2();
    void thread_tmp_5_6_fu_412_p2();
    void thread_tmp_5_7_fu_416_p2();
    void thread_tmp_5_fu_388_p2();
    void thread_tmp_7_cast_fu_349_p1();
    void thread_tmp_7_fu_343_p2();
    void thread_tmp_8_cast_fu_359_p1();
    void thread_tmp_8_fu_354_p2();
    void thread_tmp_cast_fu_316_p1();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
