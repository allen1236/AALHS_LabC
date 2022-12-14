// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cordiccart2pol_Block_entry3947_proc (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        p_read,
        p_read1,
        p_read2,
        r,
        r_ap_vld,
        theta,
        theta_ap_vld
);

parameter    ap_ST_fsm_state1 = 18'd1;
parameter    ap_ST_fsm_state2 = 18'd2;
parameter    ap_ST_fsm_state3 = 18'd4;
parameter    ap_ST_fsm_state4 = 18'd8;
parameter    ap_ST_fsm_state5 = 18'd16;
parameter    ap_ST_fsm_state6 = 18'd32;
parameter    ap_ST_fsm_state7 = 18'd64;
parameter    ap_ST_fsm_state8 = 18'd128;
parameter    ap_ST_fsm_state9 = 18'd256;
parameter    ap_ST_fsm_state10 = 18'd512;
parameter    ap_ST_fsm_state11 = 18'd1024;
parameter    ap_ST_fsm_state12 = 18'd2048;
parameter    ap_ST_fsm_state13 = 18'd4096;
parameter    ap_ST_fsm_state14 = 18'd8192;
parameter    ap_ST_fsm_state15 = 18'd16384;
parameter    ap_ST_fsm_state16 = 18'd32768;
parameter    ap_ST_fsm_state17 = 18'd65536;
parameter    ap_ST_fsm_state18 = 18'd131072;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [15:0] p_read;
input  [15:0] p_read1;
input  [15:0] p_read2;
output  [31:0] r;
output   r_ap_vld;
output  [31:0] theta;
output   theta_ap_vld;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] r;
reg r_ap_vld;
reg[31:0] theta;
reg theta_ap_vld;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [17:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [0:0] p_Repl2_s_reg_928;
reg   [8:0] tmp_reg_941;
reg   [8:0] r_V_3_reg_946;
reg   [0:0] tmp_23_reg_951;
wire    ap_CS_fsm_state2;
wire   [15:0] r_V_fu_243_p3;
reg  signed [15:0] r_V_reg_961;
wire   [15:0] select_ln859_13_fu_260_p3;
reg   [15:0] select_ln859_13_reg_966;
wire   [15:0] select_ln859_14_fu_267_p3;
reg   [15:0] select_ln859_14_reg_971;
wire   [15:0] add_ln859_15_fu_278_p2;
reg   [15:0] add_ln859_15_reg_976;
wire    ap_CS_fsm_state3;
wire  signed [25:0] grp_fu_909_p2;
reg  signed [25:0] r_V_4_reg_986;
wire    ap_CS_fsm_state6;
wire   [8:0] trunc_ln874_fu_286_p1;
reg   [8:0] trunc_ln874_reg_993;
wire   [15:0] add_ln423_fu_333_p2;
reg   [15:0] add_ln423_reg_998;
wire    ap_CS_fsm_state7;
reg   [15:0] tmp_V_6_reg_1003;
wire    ap_CS_fsm_state9;
reg   [0:0] p_Result_29_reg_1010;
reg   [15:0] tmp_V_8_reg_1016;
reg   [0:0] p_Result_32_reg_1023;
wire   [15:0] tmp_V_fu_355_p2;
reg   [15:0] tmp_V_reg_1029;
wire    ap_CS_fsm_state10;
wire   [15:0] tmp_V_4_fu_360_p2;
reg   [15:0] tmp_V_4_reg_1034;
wire   [0:0] icmp_ln1136_fu_365_p2;
reg   [0:0] icmp_ln1136_reg_1039;
wire    ap_CS_fsm_state11;
wire   [15:0] tmp_V_7_fu_370_p3;
reg   [15:0] tmp_V_7_reg_1044;
wire   [31:0] sub_ln1145_fu_405_p2;
reg   [31:0] sub_ln1145_reg_1051;
wire   [15:0] trunc_ln1145_fu_411_p1;
reg   [15:0] trunc_ln1145_reg_1058;
wire   [4:0] trunc_ln1148_fu_415_p1;
reg   [4:0] trunc_ln1148_reg_1063;
wire   [7:0] trunc_ln1144_fu_419_p1;
reg   [7:0] trunc_ln1144_reg_1068;
wire   [0:0] icmp_ln1136_1_fu_423_p2;
reg   [0:0] icmp_ln1136_1_reg_1073;
wire   [15:0] tmp_V_9_fu_428_p3;
reg   [15:0] tmp_V_9_reg_1078;
wire   [31:0] sub_ln1145_1_fu_463_p2;
reg   [31:0] sub_ln1145_1_reg_1085;
wire   [15:0] trunc_ln1145_1_fu_469_p1;
reg   [15:0] trunc_ln1145_1_reg_1092;
wire   [4:0] trunc_ln1148_1_fu_473_p1;
reg   [4:0] trunc_ln1148_1_reg_1097;
wire   [7:0] trunc_ln1144_1_fu_477_p1;
reg   [7:0] trunc_ln1144_1_reg_1102;
wire   [31:0] lsb_index_fu_481_p2;
reg   [31:0] lsb_index_reg_1107;
wire    ap_CS_fsm_state12;
reg   [30:0] tmp_27_reg_1113;
wire   [4:0] sub_ln1148_fu_496_p2;
reg   [4:0] sub_ln1148_reg_1118;
wire   [31:0] add_ln1159_fu_501_p2;
reg   [31:0] add_ln1159_reg_1123;
wire   [31:0] sub_ln1160_fu_506_p2;
reg   [31:0] sub_ln1160_reg_1128;
wire   [31:0] lsb_index_1_fu_511_p2;
reg   [31:0] lsb_index_1_reg_1133;
reg   [30:0] tmp_31_reg_1139;
wire   [4:0] sub_ln1148_1_fu_526_p2;
reg   [4:0] sub_ln1148_1_reg_1144;
wire   [31:0] add_ln1159_1_fu_531_p2;
reg   [31:0] add_ln1159_1_reg_1149;
wire   [31:0] sub_ln1160_1_fu_536_p2;
reg   [31:0] sub_ln1160_1_reg_1154;
wire   [1:0] or_ln_i_fu_609_p3;
reg   [1:0] or_ln_i_reg_1159;
wire    ap_CS_fsm_state13;
wire   [63:0] zext_ln1158_fu_617_p1;
wire   [0:0] icmp_ln1159_fu_620_p2;
reg   [0:0] icmp_ln1159_reg_1170;
wire   [1:0] or_ln1150_1_i_fu_711_p3;
reg   [1:0] or_ln1150_1_i_reg_1185;
wire   [63:0] zext_ln1158_1_fu_719_p1;
wire   [0:0] icmp_ln1159_1_fu_722_p2;
reg   [0:0] icmp_ln1159_1_reg_1196;
wire   [63:0] grp_fu_628_p2;
reg   [63:0] lshr_ln1159_reg_1211;
wire    ap_CS_fsm_state14;
wire   [63:0] grp_fu_637_p2;
reg   [63:0] shl_ln1160_reg_1216;
wire   [63:0] grp_fu_730_p2;
reg   [63:0] lshr_ln1159_1_reg_1221;
wire   [63:0] grp_fu_739_p2;
reg   [63:0] shl_ln1160_1_reg_1226;
reg   [62:0] m_9_reg_1231;
wire    ap_CS_fsm_state15;
reg   [0:0] p_Result_19_reg_1236;
reg   [62:0] m_10_reg_1241;
reg   [0:0] p_Result_26_reg_1246;
wire   [7:0] select_ln1144_fu_809_p3;
reg   [7:0] select_ln1144_reg_1251;
wire    ap_CS_fsm_state16;
wire   [7:0] select_ln1144_1_fu_816_p3;
reg   [7:0] select_ln1144_1_reg_1256;
wire   [31:0] trunc_ln809_fu_855_p1;
reg   [31:0] trunc_ln809_reg_1261;
wire    ap_CS_fsm_state17;
wire   [31:0] trunc_ln809_1_fu_891_p1;
reg   [31:0] trunc_ln809_1_reg_1266;
reg    ap_block_state1;
wire    outStream_theta_full_n;
reg    outStream_theta_write;
wire    ap_CS_fsm_state8;
wire    outStream_r_full_n;
reg    outStream_r_write;
reg    ap_block_state8;
wire   [15:0] outStream_r_dout;
wire    outStream_r_empty_n;
reg    outStream_r_read;
wire   [15:0] outStream_theta_dout;
wire    outStream_theta_empty_n;
reg    outStream_theta_read;
reg    ap_block_state9;
wire   [31:0] select_ln1136_fu_895_p3;
reg   [31:0] r_preg;
wire    ap_CS_fsm_state18;
wire   [31:0] select_ln1136_1_fu_902_p3;
reg   [31:0] theta_preg;
wire   [15:0] y_sft_V_fu_218_p9;
wire   [15:0] sub_ln859_fu_233_p2;
wire   [15:0] add_ln859_fu_238_p2;
wire  signed [15:0] sext_ln1534_fu_230_p1;
wire   [15:0] add_ln859_13_fu_250_p2;
wire   [15:0] sub_ln859_7_fu_255_p2;
wire   [15:0] add_ln859_14_fu_274_p2;
wire   [0:0] p_Result_s_fu_289_p3;
wire   [0:0] r_5_fu_312_p2;
wire   [0:0] or_ln420_fu_317_p2;
wire   [0:0] p_Result_28_fu_305_p3;
wire   [0:0] and_ln420_fu_323_p2;
wire   [15:0] p_Val2_8_fu_296_p4;
wire   [15:0] zext_ln423_fu_329_p1;
reg   [15:0] p_Result_15_fu_375_p4;
wire   [16:0] p_Result_30_fu_385_p3;
wire  signed [31:0] sext_ln1244_fu_393_p1;
reg   [31:0] l_fu_397_p3;
reg   [15:0] p_Result_22_fu_433_p4;
wire   [16:0] p_Result_33_fu_443_p3;
wire  signed [31:0] sext_ln1244_1_fu_451_p1;
reg   [31:0] l_1_fu_455_p3;
wire   [15:0] zext_ln1148_fu_546_p1;
wire   [15:0] lshr_ln1148_fu_549_p2;
wire   [15:0] p_Result_17_fu_555_p2;
wire   [0:0] icmp_ln1147_fu_541_p2;
wire   [0:0] icmp_ln1148_fu_560_p2;
wire   [0:0] tmp_28_fu_572_p3;
wire   [15:0] add_ln1150_fu_585_p2;
wire   [0:0] p_Result_18_fu_590_p3;
wire   [0:0] xor_ln1150_fu_579_p2;
wire   [0:0] and_ln1150_fu_597_p2;
wire   [0:0] a_fu_566_p2;
wire   [0:0] or_ln1150_fu_603_p2;
wire   [63:0] grp_fu_628_p1;
wire   [63:0] grp_fu_637_p1;
wire   [15:0] zext_ln1148_1_fu_648_p1;
wire   [15:0] lshr_ln1148_1_fu_651_p2;
wire   [15:0] p_Result_24_fu_657_p2;
wire   [0:0] icmp_ln1147_1_fu_643_p2;
wire   [0:0] icmp_ln1148_1_fu_662_p2;
wire   [0:0] tmp_32_fu_674_p3;
wire   [15:0] add_ln1150_1_fu_687_p2;
wire   [0:0] p_Result_25_fu_692_p3;
wire   [0:0] xor_ln1150_1_fu_681_p2;
wire   [0:0] and_ln1150_1_fu_699_p2;
wire   [0:0] a_1_fu_668_p2;
wire   [0:0] or_ln1150_1_fu_705_p2;
wire   [63:0] grp_fu_730_p1;
wire   [63:0] grp_fu_739_p1;
wire   [63:0] m_2_fu_745_p3;
wire   [63:0] zext_ln1162_fu_750_p1;
wire   [63:0] m_3_fu_753_p2;
wire   [63:0] m_7_fu_777_p3;
wire   [63:0] zext_ln1162_1_fu_782_p1;
wire   [63:0] m_8_fu_785_p2;
wire   [7:0] sub_ln1165_fu_826_p2;
wire   [7:0] add_ln1170_fu_831_p2;
wire   [63:0] zext_ln1163_fu_823_p1;
wire   [8:0] tmp_9_i_fu_836_p3;
wire   [63:0] p_Result_31_fu_843_p5;
wire   [7:0] sub_ln1165_1_fu_862_p2;
wire   [7:0] add_ln1170_1_fu_867_p2;
wire   [63:0] zext_ln1163_1_fu_859_p1;
wire   [8:0] tmp_11_i_fu_872_p3;
wire   [63:0] p_Result_34_fu_879_p5;
wire   [9:0] grp_fu_909_p1;
reg   [17:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
wire    ap_ST_fsm_state7_blk;
reg    ap_ST_fsm_state8_blk;
reg    ap_ST_fsm_state9_blk;
wire    ap_ST_fsm_state10_blk;
wire    ap_ST_fsm_state11_blk;
wire    ap_ST_fsm_state12_blk;
wire    ap_ST_fsm_state13_blk;
wire    ap_ST_fsm_state14_blk;
wire    ap_ST_fsm_state15_blk;
wire    ap_ST_fsm_state16_blk;
wire    ap_ST_fsm_state17_blk;
wire    ap_ST_fsm_state18_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 18'd1;
#0 r_preg = 32'd0;
#0 theta_preg = 32'd0;
end

cordiccart2pol_lshr_64ns_32ns_64_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .OP( 1 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
lshr_64ns_32ns_64_2_1_U35(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(zext_ln1158_fu_617_p1),
    .din1(grp_fu_628_p1),
    .ce(1'b1),
    .dout(grp_fu_628_p2)
);

cordiccart2pol_shl_64ns_32ns_64_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .OP( 0 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
shl_64ns_32ns_64_2_1_U36(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(zext_ln1158_fu_617_p1),
    .din1(grp_fu_637_p1),
    .ce(1'b1),
    .dout(grp_fu_637_p2)
);

cordiccart2pol_lshr_64ns_32ns_64_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .OP( 1 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
lshr_64ns_32ns_64_2_1_U37(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(zext_ln1158_1_fu_719_p1),
    .din1(grp_fu_730_p1),
    .ce(1'b1),
    .dout(grp_fu_730_p2)
);

cordiccart2pol_shl_64ns_32ns_64_2_1 #(
    .ID( 1 ),
    .NUM_STAGE( 2 ),
    .OP( 0 ),
    .din0_WIDTH( 64 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 64 ))
shl_64ns_32ns_64_2_1_U38(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(zext_ln1158_1_fu_719_p1),
    .din1(grp_fu_739_p1),
    .ce(1'b1),
    .dout(grp_fu_739_p2)
);

cordiccart2pol_mul_mul_16s_10ns_26_4_1 #(
    .ID( 1 ),
    .NUM_STAGE( 4 ),
    .din0_WIDTH( 16 ),
    .din1_WIDTH( 10 ),
    .dout_WIDTH( 26 ))
mul_mul_16s_10ns_26_4_1_U39(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(r_V_reg_961),
    .din1(grp_fu_909_p1),
    .ce(1'b1),
    .dout(grp_fu_909_p2)
);

cordiccart2pol_fifo_w16_d1_S outStream_r_fifo_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(add_ln423_reg_998),
    .if_full_n(outStream_r_full_n),
    .if_write(outStream_r_write),
    .if_dout(outStream_r_dout),
    .if_empty_n(outStream_r_empty_n),
    .if_read(outStream_r_read)
);

cordiccart2pol_fifo_w16_d1_S outStream_theta_fifo_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(add_ln859_15_reg_976),
    .if_full_n(outStream_theta_full_n),
    .if_write(outStream_theta_write),
    .if_dout(outStream_theta_dout),
    .if_empty_n(outStream_theta_empty_n),
    .if_read(outStream_theta_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if ((1'b1 == ap_CS_fsm_state18)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        r_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            r_preg <= select_ln1136_fu_895_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        theta_preg <= 32'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state18)) begin
            theta_preg <= select_ln1136_1_fu_902_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln1136_1_reg_1073 == 1'd0))) begin
        add_ln1159_1_reg_1149 <= add_ln1159_1_fu_531_p2;
        lsb_index_1_reg_1133 <= lsb_index_1_fu_511_p2;
        sub_ln1148_1_reg_1144 <= sub_ln1148_1_fu_526_p2;
        sub_ln1160_1_reg_1154 <= sub_ln1160_1_fu_536_p2;
        tmp_31_reg_1139 <= {{lsb_index_1_fu_511_p2[31:1]}};
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state12) & (icmp_ln1136_reg_1039 == 1'd0))) begin
        add_ln1159_reg_1123 <= add_ln1159_fu_501_p2;
        lsb_index_reg_1107 <= lsb_index_fu_481_p2;
        sub_ln1148_reg_1118 <= sub_ln1148_fu_496_p2;
        sub_ln1160_reg_1128 <= sub_ln1160_fu_506_p2;
        tmp_27_reg_1113 <= {{lsb_index_fu_481_p2[31:1]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        add_ln423_reg_998 <= add_ln423_fu_333_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        add_ln859_15_reg_976 <= add_ln859_15_fu_278_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state11)) begin
        icmp_ln1136_1_reg_1073 <= icmp_ln1136_1_fu_423_p2;
        icmp_ln1136_reg_1039 <= icmp_ln1136_fu_365_p2;
        sub_ln1145_1_reg_1085 <= sub_ln1145_1_fu_463_p2;
        sub_ln1145_reg_1051 <= sub_ln1145_fu_405_p2;
        tmp_V_7_reg_1044 <= tmp_V_7_fu_370_p3;
        tmp_V_9_reg_1078 <= tmp_V_9_fu_428_p3;
        trunc_ln1144_1_reg_1102 <= trunc_ln1144_1_fu_477_p1;
        trunc_ln1144_reg_1068 <= trunc_ln1144_fu_419_p1;
        trunc_ln1145_1_reg_1092 <= trunc_ln1145_1_fu_469_p1;
        trunc_ln1145_reg_1058 <= trunc_ln1145_fu_411_p1;
        trunc_ln1148_1_reg_1097 <= trunc_ln1148_1_fu_473_p1;
        trunc_ln1148_reg_1063 <= trunc_ln1148_fu_415_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln1136_1_reg_1073 == 1'd0))) begin
        icmp_ln1159_1_reg_1196 <= icmp_ln1159_1_fu_722_p2;
        or_ln1150_1_i_reg_1185[0] <= or_ln1150_1_i_fu_711_p3[0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state13) & (icmp_ln1136_reg_1039 == 1'd0))) begin
        icmp_ln1159_reg_1170 <= icmp_ln1159_fu_620_p2;
        or_ln_i_reg_1159[0] <= or_ln_i_fu_609_p3[0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln1136_1_reg_1073 == 1'd0))) begin
        lshr_ln1159_1_reg_1221 <= grp_fu_730_p2;
        shl_ln1160_1_reg_1226 <= grp_fu_739_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state14) & (icmp_ln1136_reg_1039 == 1'd0))) begin
        lshr_ln1159_reg_1211 <= grp_fu_628_p2;
        shl_ln1160_reg_1216 <= grp_fu_637_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) & (icmp_ln1136_1_reg_1073 == 1'd0))) begin
        m_10_reg_1241 <= {{m_8_fu_785_p2[63:1]}};
        p_Result_26_reg_1246 <= m_8_fu_785_p2[32'd25];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state15) & (icmp_ln1136_reg_1039 == 1'd0))) begin
        m_9_reg_1231 <= {{m_3_fu_753_p2[63:1]}};
        p_Result_19_reg_1236 <= m_3_fu_753_p2[32'd25];
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        p_Repl2_s_reg_928 <= p_read1[32'd15];
        r_V_3_reg_946 <= {{p_read[15:7]}};
        tmp_23_reg_951 <= p_read1[32'd15];
        tmp_reg_941 <= {{p_read1[15:7]}};
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state9)) begin
        p_Result_29_reg_1010 <= outStream_r_dout[32'd15];
        p_Result_32_reg_1023 <= outStream_theta_dout[32'd15];
        tmp_V_6_reg_1003 <= outStream_r_dout;
        tmp_V_8_reg_1016 <= outStream_theta_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        r_V_4_reg_986 <= grp_fu_909_p2;
        trunc_ln874_reg_993 <= trunc_ln874_fu_286_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        r_V_reg_961 <= r_V_fu_243_p3;
        select_ln859_13_reg_966 <= select_ln859_13_fu_260_p3;
        select_ln859_14_reg_971[15 : 7] <= select_ln859_14_fu_267_p3[15 : 7];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) & (icmp_ln1136_1_reg_1073 == 1'd0))) begin
        select_ln1144_1_reg_1256[0] <= select_ln1144_1_fu_816_p3[0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state16) & (icmp_ln1136_reg_1039 == 1'd0))) begin
        select_ln1144_reg_1251[0] <= select_ln1144_fu_809_p3[0];
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (p_Result_32_reg_1023 == 1'd1))) begin
        tmp_V_4_reg_1034 <= tmp_V_4_fu_360_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state10) & (p_Result_29_reg_1010 == 1'd1))) begin
        tmp_V_reg_1029 <= tmp_V_fu_355_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) & (icmp_ln1136_1_reg_1073 == 1'd0))) begin
        trunc_ln809_1_reg_1266 <= trunc_ln809_1_fu_891_p1;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state17) & (icmp_ln1136_reg_1039 == 1'd0))) begin
        trunc_ln809_reg_1261 <= trunc_ln809_fu_855_p1;
    end
end

assign ap_ST_fsm_state10_blk = 1'b0;

assign ap_ST_fsm_state11_blk = 1'b0;

assign ap_ST_fsm_state12_blk = 1'b0;

assign ap_ST_fsm_state13_blk = 1'b0;

assign ap_ST_fsm_state14_blk = 1'b0;

assign ap_ST_fsm_state15_blk = 1'b0;

assign ap_ST_fsm_state16_blk = 1'b0;

assign ap_ST_fsm_state17_blk = 1'b0;

assign ap_ST_fsm_state18_blk = 1'b0;

always @ (*) begin
    if (((ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

assign ap_ST_fsm_state7_blk = 1'b0;

always @ (*) begin
    if (((outStream_r_full_n == 1'b0) | (outStream_theta_full_n == 1'b0))) begin
        ap_ST_fsm_state8_blk = 1'b1;
    end else begin
        ap_ST_fsm_state8_blk = 1'b0;
    end
end

always @ (*) begin
    if (((outStream_theta_empty_n == 1'b0) | (outStream_r_empty_n == 1'b0))) begin
        ap_ST_fsm_state9_blk = 1'b1;
    end else begin
        ap_ST_fsm_state9_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) & (1'b1 == ap_CS_fsm_state1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((outStream_theta_empty_n == 1'b0) | (outStream_r_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state9))) begin
        outStream_r_read = 1'b1;
    end else begin
        outStream_r_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((outStream_r_full_n == 1'b0) | (outStream_theta_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state8))) begin
        outStream_r_write = 1'b1;
    end else begin
        outStream_r_write = 1'b0;
    end
end

always @ (*) begin
    if ((~((outStream_theta_empty_n == 1'b0) | (outStream_r_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state9))) begin
        outStream_theta_read = 1'b1;
    end else begin
        outStream_theta_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((outStream_r_full_n == 1'b0) | (outStream_theta_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state8))) begin
        outStream_theta_write = 1'b1;
    end else begin
        outStream_theta_write = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        r = select_ln1136_fu_895_p3;
    end else begin
        r = r_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        r_ap_vld = 1'b1;
    end else begin
        r_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        theta = select_ln1136_1_fu_902_p3;
    end else begin
        theta = theta_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state18)) begin
        theta_ap_vld = 1'b1;
    end else begin
        theta_ap_vld = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            ap_NS_fsm = ap_ST_fsm_state8;
        end
        ap_ST_fsm_state8 : begin
            if ((~((outStream_r_full_n == 1'b0) | (outStream_theta_full_n == 1'b0)) & (1'b1 == ap_CS_fsm_state8))) begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state8;
            end
        end
        ap_ST_fsm_state9 : begin
            if ((~((outStream_theta_empty_n == 1'b0) | (outStream_r_empty_n == 1'b0)) & (1'b1 == ap_CS_fsm_state9))) begin
                ap_NS_fsm = ap_ST_fsm_state10;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state9;
            end
        end
        ap_ST_fsm_state10 : begin
            ap_NS_fsm = ap_ST_fsm_state11;
        end
        ap_ST_fsm_state11 : begin
            ap_NS_fsm = ap_ST_fsm_state12;
        end
        ap_ST_fsm_state12 : begin
            ap_NS_fsm = ap_ST_fsm_state13;
        end
        ap_ST_fsm_state13 : begin
            ap_NS_fsm = ap_ST_fsm_state14;
        end
        ap_ST_fsm_state14 : begin
            ap_NS_fsm = ap_ST_fsm_state15;
        end
        ap_ST_fsm_state15 : begin
            ap_NS_fsm = ap_ST_fsm_state16;
        end
        ap_ST_fsm_state16 : begin
            ap_NS_fsm = ap_ST_fsm_state17;
        end
        ap_ST_fsm_state17 : begin
            ap_NS_fsm = ap_ST_fsm_state18;
        end
        ap_ST_fsm_state18 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign a_1_fu_668_p2 = (icmp_ln1148_1_fu_662_p2 & icmp_ln1147_1_fu_643_p2);

assign a_fu_566_p2 = (icmp_ln1148_fu_560_p2 & icmp_ln1147_fu_541_p2);

assign add_ln1150_1_fu_687_p2 = ($signed(trunc_ln1145_1_reg_1092) + $signed(16'd65512));

assign add_ln1150_fu_585_p2 = ($signed(trunc_ln1145_reg_1058) + $signed(16'd65512));

assign add_ln1159_1_fu_531_p2 = ($signed(sub_ln1145_1_reg_1085) + $signed(32'd4294967271));

assign add_ln1159_fu_501_p2 = ($signed(sub_ln1145_reg_1051) + $signed(32'd4294967271));

assign add_ln1170_1_fu_867_p2 = (sub_ln1165_1_fu_862_p2 + select_ln1144_1_reg_1256);

assign add_ln1170_fu_831_p2 = (sub_ln1165_fu_826_p2 + select_ln1144_reg_1251);

assign add_ln423_fu_333_p2 = (p_Val2_8_fu_296_p4 + zext_ln423_fu_329_p1);

assign add_ln859_13_fu_250_p2 = ($signed(sext_ln1534_fu_230_p1) + $signed(p_read1));

assign add_ln859_14_fu_274_p2 = (select_ln859_14_reg_971 + p_read2);

assign add_ln859_15_fu_278_p2 = (select_ln859_13_reg_966 + add_ln859_14_fu_274_p2);

assign add_ln859_fu_238_p2 = (y_sft_V_fu_218_p9 + p_read);

assign and_ln1150_1_fu_699_p2 = (xor_ln1150_1_fu_681_p2 & p_Result_25_fu_692_p3);

assign and_ln1150_fu_597_p2 = (xor_ln1150_fu_579_p2 & p_Result_18_fu_590_p3);

assign and_ln420_fu_323_p2 = (p_Result_28_fu_305_p3 & or_ln420_fu_317_p2);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state10 = ap_CS_fsm[32'd9];

assign ap_CS_fsm_state11 = ap_CS_fsm[32'd10];

assign ap_CS_fsm_state12 = ap_CS_fsm[32'd11];

assign ap_CS_fsm_state13 = ap_CS_fsm[32'd12];

assign ap_CS_fsm_state14 = ap_CS_fsm[32'd13];

assign ap_CS_fsm_state15 = ap_CS_fsm[32'd14];

assign ap_CS_fsm_state16 = ap_CS_fsm[32'd15];

assign ap_CS_fsm_state17 = ap_CS_fsm[32'd16];

assign ap_CS_fsm_state18 = ap_CS_fsm[32'd17];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

assign ap_CS_fsm_state8 = ap_CS_fsm[32'd7];

assign ap_CS_fsm_state9 = ap_CS_fsm[32'd8];

always @ (*) begin
    ap_block_state1 = ((ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

always @ (*) begin
    ap_block_state8 = ((outStream_r_full_n == 1'b0) | (outStream_theta_full_n == 1'b0));
end

always @ (*) begin
    ap_block_state9 = ((outStream_theta_empty_n == 1'b0) | (outStream_r_empty_n == 1'b0));
end

assign grp_fu_628_p1 = add_ln1159_reg_1123;

assign grp_fu_637_p1 = sub_ln1160_reg_1128;

assign grp_fu_730_p1 = add_ln1159_1_reg_1149;

assign grp_fu_739_p1 = sub_ln1160_1_reg_1154;

assign grp_fu_909_p1 = 26'd879;

assign icmp_ln1136_1_fu_423_p2 = ((tmp_V_8_reg_1016 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1136_fu_365_p2 = ((tmp_V_6_reg_1003 == 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1147_1_fu_643_p2 = (($signed(tmp_31_reg_1139) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1147_fu_541_p2 = (($signed(tmp_27_reg_1113) > $signed(31'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1148_1_fu_662_p2 = ((p_Result_24_fu_657_p2 != 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1148_fu_560_p2 = ((p_Result_17_fu_555_p2 != 16'd0) ? 1'b1 : 1'b0);

assign icmp_ln1159_1_fu_722_p2 = (($signed(lsb_index_1_reg_1133) > $signed(32'd0)) ? 1'b1 : 1'b0);

assign icmp_ln1159_fu_620_p2 = (($signed(lsb_index_reg_1107) > $signed(32'd0)) ? 1'b1 : 1'b0);


always @ (sext_ln1244_1_fu_451_p1) begin
    if (sext_ln1244_1_fu_451_p1[0] == 1'b1) begin
        l_1_fu_455_p3 = 32'd0;
    end else if (sext_ln1244_1_fu_451_p1[1] == 1'b1) begin
        l_1_fu_455_p3 = 32'd1;
    end else if (sext_ln1244_1_fu_451_p1[2] == 1'b1) begin
        l_1_fu_455_p3 = 32'd2;
    end else if (sext_ln1244_1_fu_451_p1[3] == 1'b1) begin
        l_1_fu_455_p3 = 32'd3;
    end else if (sext_ln1244_1_fu_451_p1[4] == 1'b1) begin
        l_1_fu_455_p3 = 32'd4;
    end else if (sext_ln1244_1_fu_451_p1[5] == 1'b1) begin
        l_1_fu_455_p3 = 32'd5;
    end else if (sext_ln1244_1_fu_451_p1[6] == 1'b1) begin
        l_1_fu_455_p3 = 32'd6;
    end else if (sext_ln1244_1_fu_451_p1[7] == 1'b1) begin
        l_1_fu_455_p3 = 32'd7;
    end else if (sext_ln1244_1_fu_451_p1[8] == 1'b1) begin
        l_1_fu_455_p3 = 32'd8;
    end else if (sext_ln1244_1_fu_451_p1[9] == 1'b1) begin
        l_1_fu_455_p3 = 32'd9;
    end else if (sext_ln1244_1_fu_451_p1[10] == 1'b1) begin
        l_1_fu_455_p3 = 32'd10;
    end else if (sext_ln1244_1_fu_451_p1[11] == 1'b1) begin
        l_1_fu_455_p3 = 32'd11;
    end else if (sext_ln1244_1_fu_451_p1[12] == 1'b1) begin
        l_1_fu_455_p3 = 32'd12;
    end else if (sext_ln1244_1_fu_451_p1[13] == 1'b1) begin
        l_1_fu_455_p3 = 32'd13;
    end else if (sext_ln1244_1_fu_451_p1[14] == 1'b1) begin
        l_1_fu_455_p3 = 32'd14;
    end else if (sext_ln1244_1_fu_451_p1[15] == 1'b1) begin
        l_1_fu_455_p3 = 32'd15;
    end else if (sext_ln1244_1_fu_451_p1[16] == 1'b1) begin
        l_1_fu_455_p3 = 32'd16;
    end else if (sext_ln1244_1_fu_451_p1[17] == 1'b1) begin
        l_1_fu_455_p3 = 32'd17;
    end else if (sext_ln1244_1_fu_451_p1[18] == 1'b1) begin
        l_1_fu_455_p3 = 32'd18;
    end else if (sext_ln1244_1_fu_451_p1[19] == 1'b1) begin
        l_1_fu_455_p3 = 32'd19;
    end else if (sext_ln1244_1_fu_451_p1[20] == 1'b1) begin
        l_1_fu_455_p3 = 32'd20;
    end else if (sext_ln1244_1_fu_451_p1[21] == 1'b1) begin
        l_1_fu_455_p3 = 32'd21;
    end else if (sext_ln1244_1_fu_451_p1[22] == 1'b1) begin
        l_1_fu_455_p3 = 32'd22;
    end else if (sext_ln1244_1_fu_451_p1[23] == 1'b1) begin
        l_1_fu_455_p3 = 32'd23;
    end else if (sext_ln1244_1_fu_451_p1[24] == 1'b1) begin
        l_1_fu_455_p3 = 32'd24;
    end else if (sext_ln1244_1_fu_451_p1[25] == 1'b1) begin
        l_1_fu_455_p3 = 32'd25;
    end else if (sext_ln1244_1_fu_451_p1[26] == 1'b1) begin
        l_1_fu_455_p3 = 32'd26;
    end else if (sext_ln1244_1_fu_451_p1[27] == 1'b1) begin
        l_1_fu_455_p3 = 32'd27;
    end else if (sext_ln1244_1_fu_451_p1[28] == 1'b1) begin
        l_1_fu_455_p3 = 32'd28;
    end else if (sext_ln1244_1_fu_451_p1[29] == 1'b1) begin
        l_1_fu_455_p3 = 32'd29;
    end else if (sext_ln1244_1_fu_451_p1[30] == 1'b1) begin
        l_1_fu_455_p3 = 32'd30;
    end else if (sext_ln1244_1_fu_451_p1[31] == 1'b1) begin
        l_1_fu_455_p3 = 32'd31;
    end else begin
        l_1_fu_455_p3 = 32'd32;
    end
end


always @ (sext_ln1244_fu_393_p1) begin
    if (sext_ln1244_fu_393_p1[0] == 1'b1) begin
        l_fu_397_p3 = 32'd0;
    end else if (sext_ln1244_fu_393_p1[1] == 1'b1) begin
        l_fu_397_p3 = 32'd1;
    end else if (sext_ln1244_fu_393_p1[2] == 1'b1) begin
        l_fu_397_p3 = 32'd2;
    end else if (sext_ln1244_fu_393_p1[3] == 1'b1) begin
        l_fu_397_p3 = 32'd3;
    end else if (sext_ln1244_fu_393_p1[4] == 1'b1) begin
        l_fu_397_p3 = 32'd4;
    end else if (sext_ln1244_fu_393_p1[5] == 1'b1) begin
        l_fu_397_p3 = 32'd5;
    end else if (sext_ln1244_fu_393_p1[6] == 1'b1) begin
        l_fu_397_p3 = 32'd6;
    end else if (sext_ln1244_fu_393_p1[7] == 1'b1) begin
        l_fu_397_p3 = 32'd7;
    end else if (sext_ln1244_fu_393_p1[8] == 1'b1) begin
        l_fu_397_p3 = 32'd8;
    end else if (sext_ln1244_fu_393_p1[9] == 1'b1) begin
        l_fu_397_p3 = 32'd9;
    end else if (sext_ln1244_fu_393_p1[10] == 1'b1) begin
        l_fu_397_p3 = 32'd10;
    end else if (sext_ln1244_fu_393_p1[11] == 1'b1) begin
        l_fu_397_p3 = 32'd11;
    end else if (sext_ln1244_fu_393_p1[12] == 1'b1) begin
        l_fu_397_p3 = 32'd12;
    end else if (sext_ln1244_fu_393_p1[13] == 1'b1) begin
        l_fu_397_p3 = 32'd13;
    end else if (sext_ln1244_fu_393_p1[14] == 1'b1) begin
        l_fu_397_p3 = 32'd14;
    end else if (sext_ln1244_fu_393_p1[15] == 1'b1) begin
        l_fu_397_p3 = 32'd15;
    end else if (sext_ln1244_fu_393_p1[16] == 1'b1) begin
        l_fu_397_p3 = 32'd16;
    end else if (sext_ln1244_fu_393_p1[17] == 1'b1) begin
        l_fu_397_p3 = 32'd17;
    end else if (sext_ln1244_fu_393_p1[18] == 1'b1) begin
        l_fu_397_p3 = 32'd18;
    end else if (sext_ln1244_fu_393_p1[19] == 1'b1) begin
        l_fu_397_p3 = 32'd19;
    end else if (sext_ln1244_fu_393_p1[20] == 1'b1) begin
        l_fu_397_p3 = 32'd20;
    end else if (sext_ln1244_fu_393_p1[21] == 1'b1) begin
        l_fu_397_p3 = 32'd21;
    end else if (sext_ln1244_fu_393_p1[22] == 1'b1) begin
        l_fu_397_p3 = 32'd22;
    end else if (sext_ln1244_fu_393_p1[23] == 1'b1) begin
        l_fu_397_p3 = 32'd23;
    end else if (sext_ln1244_fu_393_p1[24] == 1'b1) begin
        l_fu_397_p3 = 32'd24;
    end else if (sext_ln1244_fu_393_p1[25] == 1'b1) begin
        l_fu_397_p3 = 32'd25;
    end else if (sext_ln1244_fu_393_p1[26] == 1'b1) begin
        l_fu_397_p3 = 32'd26;
    end else if (sext_ln1244_fu_393_p1[27] == 1'b1) begin
        l_fu_397_p3 = 32'd27;
    end else if (sext_ln1244_fu_393_p1[28] == 1'b1) begin
        l_fu_397_p3 = 32'd28;
    end else if (sext_ln1244_fu_393_p1[29] == 1'b1) begin
        l_fu_397_p3 = 32'd29;
    end else if (sext_ln1244_fu_393_p1[30] == 1'b1) begin
        l_fu_397_p3 = 32'd30;
    end else if (sext_ln1244_fu_393_p1[31] == 1'b1) begin
        l_fu_397_p3 = 32'd31;
    end else begin
        l_fu_397_p3 = 32'd32;
    end
end

assign lsb_index_1_fu_511_p2 = ($signed(sub_ln1145_1_reg_1085) + $signed(32'd4294967272));

assign lsb_index_fu_481_p2 = ($signed(sub_ln1145_reg_1051) + $signed(32'd4294967272));

assign lshr_ln1148_1_fu_651_p2 = 16'd65535 >> zext_ln1148_1_fu_648_p1;

assign lshr_ln1148_fu_549_p2 = 16'd65535 >> zext_ln1148_fu_546_p1;

assign m_2_fu_745_p3 = ((icmp_ln1159_reg_1170[0:0] == 1'b1) ? lshr_ln1159_reg_1211 : shl_ln1160_reg_1216);

assign m_3_fu_753_p2 = (m_2_fu_745_p3 + zext_ln1162_fu_750_p1);

assign m_7_fu_777_p3 = ((icmp_ln1159_1_reg_1196[0:0] == 1'b1) ? lshr_ln1159_1_reg_1221 : shl_ln1160_1_reg_1226);

assign m_8_fu_785_p2 = (m_7_fu_777_p3 + zext_ln1162_1_fu_782_p1);

assign or_ln1150_1_fu_705_p2 = (and_ln1150_1_fu_699_p2 | a_1_fu_668_p2);

assign or_ln1150_1_i_fu_711_p3 = {{1'd0}, {or_ln1150_1_fu_705_p2}};

assign or_ln1150_fu_603_p2 = (and_ln1150_fu_597_p2 | a_fu_566_p2);

assign or_ln420_fu_317_p2 = (r_5_fu_312_p2 | p_Result_s_fu_289_p3);

assign or_ln_i_fu_609_p3 = {{1'd0}, {or_ln1150_fu_603_p2}};

integer ap_tvar_int_0;

always @ (tmp_V_7_fu_370_p3) begin
    for (ap_tvar_int_0 = 16 - 1; ap_tvar_int_0 >= 0; ap_tvar_int_0 = ap_tvar_int_0 - 1) begin
        if (ap_tvar_int_0 > 15 - 0) begin
            p_Result_15_fu_375_p4[ap_tvar_int_0] = 1'b0;
        end else begin
            p_Result_15_fu_375_p4[ap_tvar_int_0] = tmp_V_7_fu_370_p3[15 - ap_tvar_int_0];
        end
    end
end

assign p_Result_17_fu_555_p2 = (tmp_V_7_reg_1044 & lshr_ln1148_fu_549_p2);

assign p_Result_18_fu_590_p3 = tmp_V_7_reg_1044[add_ln1150_fu_585_p2];

integer ap_tvar_int_1;

always @ (tmp_V_9_fu_428_p3) begin
    for (ap_tvar_int_1 = 16 - 1; ap_tvar_int_1 >= 0; ap_tvar_int_1 = ap_tvar_int_1 - 1) begin
        if (ap_tvar_int_1 > 15 - 0) begin
            p_Result_22_fu_433_p4[ap_tvar_int_1] = 1'b0;
        end else begin
            p_Result_22_fu_433_p4[ap_tvar_int_1] = tmp_V_9_fu_428_p3[15 - ap_tvar_int_1];
        end
    end
end

assign p_Result_24_fu_657_p2 = (tmp_V_9_reg_1078 & lshr_ln1148_1_fu_651_p2);

assign p_Result_25_fu_692_p3 = tmp_V_9_reg_1078[add_ln1150_1_fu_687_p2];

assign p_Result_28_fu_305_p3 = r_V_4_reg_986[32'd9];

assign p_Result_30_fu_385_p3 = {{1'd1}, {p_Result_15_fu_375_p4}};

assign p_Result_31_fu_843_p5 = {{zext_ln1163_fu_823_p1[63:32]}, {tmp_9_i_fu_836_p3}, {zext_ln1163_fu_823_p1[22:0]}};

assign p_Result_33_fu_443_p3 = {{1'd1}, {p_Result_22_fu_433_p4}};

assign p_Result_34_fu_879_p5 = {{zext_ln1163_1_fu_859_p1[63:32]}, {tmp_11_i_fu_872_p3}, {zext_ln1163_1_fu_859_p1[22:0]}};

assign p_Result_s_fu_289_p3 = r_V_4_reg_986[32'd10];

assign p_Val2_8_fu_296_p4 = {{r_V_4_reg_986[25:10]}};

assign r_5_fu_312_p2 = ((trunc_ln874_reg_993 != 9'd0) ? 1'b1 : 1'b0);

assign r_V_fu_243_p3 = ((p_Repl2_s_reg_928[0:0] == 1'b1) ? sub_ln859_fu_233_p2 : add_ln859_fu_238_p2);

assign select_ln1136_1_fu_902_p3 = ((icmp_ln1136_1_reg_1073[0:0] == 1'b1) ? 32'd0 : trunc_ln809_1_reg_1266);

assign select_ln1136_fu_895_p3 = ((icmp_ln1136_reg_1039[0:0] == 1'b1) ? 32'd0 : trunc_ln809_reg_1261);

assign select_ln1144_1_fu_816_p3 = ((p_Result_26_reg_1246[0:0] == 1'b1) ? 8'd127 : 8'd126);

assign select_ln1144_fu_809_p3 = ((p_Result_19_reg_1236[0:0] == 1'b1) ? 8'd127 : 8'd126);

assign select_ln859_13_fu_260_p3 = ((p_Repl2_s_reg_928[0:0] == 1'b1) ? add_ln859_13_fu_250_p2 : sub_ln859_7_fu_255_p2);

assign select_ln859_14_fu_267_p3 = ((tmp_23_reg_951[0:0] == 1'b1) ? 16'd65472 : 16'd64);

assign sext_ln1244_1_fu_451_p1 = $signed(p_Result_33_fu_443_p3);

assign sext_ln1244_fu_393_p1 = $signed(p_Result_30_fu_385_p3);

assign sext_ln1534_fu_230_p1 = $signed(r_V_3_reg_946);

assign sub_ln1145_1_fu_463_p2 = (32'd16 - l_1_fu_455_p3);

assign sub_ln1145_fu_405_p2 = (32'd16 - l_fu_397_p3);

assign sub_ln1148_1_fu_526_p2 = (5'd9 - trunc_ln1148_1_reg_1097);

assign sub_ln1148_fu_496_p2 = (5'd9 - trunc_ln1148_reg_1063);

assign sub_ln1160_1_fu_536_p2 = (32'd25 - sub_ln1145_1_reg_1085);

assign sub_ln1160_fu_506_p2 = (32'd25 - sub_ln1145_reg_1051);

assign sub_ln1165_1_fu_862_p2 = (8'd3 - trunc_ln1144_1_reg_1102);

assign sub_ln1165_fu_826_p2 = (8'd3 - trunc_ln1144_reg_1068);

assign sub_ln859_7_fu_255_p2 = ($signed(p_read1) - $signed(sext_ln1534_fu_230_p1));

assign sub_ln859_fu_233_p2 = (p_read - y_sft_V_fu_218_p9);

assign tmp_11_i_fu_872_p3 = {{p_Result_32_reg_1023}, {add_ln1170_1_fu_867_p2}};

assign tmp_28_fu_572_p3 = lsb_index_reg_1107[32'd31];

assign tmp_32_fu_674_p3 = lsb_index_1_reg_1133[32'd31];

assign tmp_9_i_fu_836_p3 = {{p_Result_29_reg_1010}, {add_ln1170_fu_831_p2}};

assign tmp_V_4_fu_360_p2 = (16'd0 - tmp_V_8_reg_1016);

assign tmp_V_7_fu_370_p3 = ((p_Result_29_reg_1010[0:0] == 1'b1) ? tmp_V_reg_1029 : tmp_V_6_reg_1003);

assign tmp_V_9_fu_428_p3 = ((p_Result_32_reg_1023[0:0] == 1'b1) ? tmp_V_4_reg_1034 : tmp_V_8_reg_1016);

assign tmp_V_fu_355_p2 = (16'd0 - tmp_V_6_reg_1003);

assign trunc_ln1144_1_fu_477_p1 = l_1_fu_455_p3[7:0];

assign trunc_ln1144_fu_419_p1 = l_fu_397_p3[7:0];

assign trunc_ln1145_1_fu_469_p1 = sub_ln1145_1_fu_463_p2[15:0];

assign trunc_ln1145_fu_411_p1 = sub_ln1145_fu_405_p2[15:0];

assign trunc_ln1148_1_fu_473_p1 = sub_ln1145_1_fu_463_p2[4:0];

assign trunc_ln1148_fu_415_p1 = sub_ln1145_fu_405_p2[4:0];

assign trunc_ln809_1_fu_891_p1 = p_Result_34_fu_879_p5[31:0];

assign trunc_ln809_fu_855_p1 = p_Result_31_fu_843_p5[31:0];

assign trunc_ln874_fu_286_p1 = grp_fu_909_p2[8:0];

assign xor_ln1150_1_fu_681_p2 = (tmp_32_fu_674_p3 ^ 1'd1);

assign xor_ln1150_fu_579_p2 = (tmp_28_fu_572_p3 ^ 1'd1);

assign y_sft_V_fu_218_p9 = {{{{{{{{p_Repl2_s_reg_928}, {p_Repl2_s_reg_928}}, {p_Repl2_s_reg_928}}, {p_Repl2_s_reg_928}}, {p_Repl2_s_reg_928}}, {p_Repl2_s_reg_928}}, {p_Repl2_s_reg_928}}, {tmp_reg_941}};

assign zext_ln1148_1_fu_648_p1 = sub_ln1148_1_reg_1144;

assign zext_ln1148_fu_546_p1 = sub_ln1148_reg_1118;

assign zext_ln1158_1_fu_719_p1 = tmp_V_9_reg_1078;

assign zext_ln1158_fu_617_p1 = tmp_V_7_reg_1044;

assign zext_ln1162_1_fu_782_p1 = or_ln1150_1_i_reg_1185;

assign zext_ln1162_fu_750_p1 = or_ln_i_reg_1159;

assign zext_ln1163_1_fu_859_p1 = m_10_reg_1241;

assign zext_ln1163_fu_823_p1 = m_9_reg_1231;

assign zext_ln423_fu_329_p1 = and_ln420_fu_323_p2;

always @ (posedge ap_clk) begin
    select_ln859_14_reg_971[6:0] <= 7'b1000000;
    or_ln_i_reg_1159[1] <= 1'b0;
    or_ln1150_1_i_reg_1185[1] <= 1'b0;
    select_ln1144_reg_1251[7:1] <= 7'b0111111;
    select_ln1144_1_reg_1256[7:1] <= 7'b0111111;
end

endmodule //cordiccart2pol_Block_entry3947_proc
