// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Tool Version Limit: 2022.04
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __cordiccart2pol_mul_mul_16s_10ns_26_4_1__HH__
#define __cordiccart2pol_mul_mul_16s_10ns_26_4_1__HH__
#include "cordiccart2pol_mul_mul_16s_10ns_26_4_1_DSP48_0.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(cordiccart2pol_mul_mul_16s_10ns_26_4_1) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din1_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    cordiccart2pol_mul_mul_16s_10ns_26_4_1_DSP48_0 cordiccart2pol_mul_mul_16s_10ns_26_4_1_DSP48_0_U;

    SC_CTOR(cordiccart2pol_mul_mul_16s_10ns_26_4_1):  cordiccart2pol_mul_mul_16s_10ns_26_4_1_DSP48_0_U ("cordiccart2pol_mul_mul_16s_10ns_26_4_1_DSP48_0_U") {
        cordiccart2pol_mul_mul_16s_10ns_26_4_1_DSP48_0_U.clk(clk);
        cordiccart2pol_mul_mul_16s_10ns_26_4_1_DSP48_0_U.rst(reset);
        cordiccart2pol_mul_mul_16s_10ns_26_4_1_DSP48_0_U.ce(ce);
        cordiccart2pol_mul_mul_16s_10ns_26_4_1_DSP48_0_U.a(din0);
        cordiccart2pol_mul_mul_16s_10ns_26_4_1_DSP48_0_U.b(din1);
        cordiccart2pol_mul_mul_16s_10ns_26_4_1_DSP48_0_U.p(dout);

    }

};

#endif //
