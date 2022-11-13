// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module cordiccart2pol_cordic_cr_unsigned_short_5_s (
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
        ap_return_0,
        ap_return_1,
        ap_return_2
);

parameter    ap_ST_fsm_state1 = 2'd1;
parameter    ap_ST_fsm_state2 = 2'd2;

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
output  [15:0] ap_return_0;
output  [15:0] ap_return_1;
output  [15:0] ap_return_2;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[15:0] ap_return_0;
reg[15:0] ap_return_1;
reg[15:0] ap_return_2;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg   [0:0] p_Repl2_s_reg_173;
reg   [10:0] r_V_reg_184;
reg   [10:0] tmp_reg_189;
reg    ap_block_state1;
wire    ap_CS_fsm_state2;
wire   [15:0] y_sft_V_fu_73_p7;
wire   [15:0] sub_ln859_fu_83_p2;
wire   [15:0] add_ln859_fu_88_p2;
wire  signed [15:0] sext_ln1534_fu_70_p1;
wire   [15:0] add_ln859_3_fu_100_p2;
wire   [15:0] sub_ln859_2_fu_105_p2;
wire   [0:0] tmp_13_fu_117_p3;
wire   [15:0] select_ln859_4_fu_124_p3;
wire   [15:0] select_ln859_fu_93_p3;
wire   [15:0] select_ln859_3_fu_110_p3;
wire   [15:0] add_ln859_4_fu_132_p2;
reg   [15:0] ap_return_0_preg;
reg   [15:0] ap_return_1_preg;
reg   [15:0] ap_return_2_preg;
reg   [1:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 2'd1;
#0 ap_return_0_preg = 16'd0;
#0 ap_return_1_preg = 16'd0;
#0 ap_return_2_preg = 16'd0;
end

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
        end else if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_0_preg <= 16'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_return_0_preg <= select_ln859_fu_93_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_1_preg <= 16'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_return_1_preg <= select_ln859_3_fu_110_p3;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_2_preg <= 16'd0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_return_2_preg <= add_ln859_4_fu_132_p2;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        p_Repl2_s_reg_173 <= p_read1[32'd15];
        r_V_reg_184 <= {{p_read[15:5]}};
        tmp_reg_189 <= {{p_read1[15:5]}};
    end
end

always @ (*) begin
    if (((ap_start == 1'b0) | (ap_done_reg == 1'b1))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_return_0 = select_ln859_fu_93_p3;
    end else begin
        ap_return_0 = ap_return_0_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_return_1 = select_ln859_3_fu_110_p3;
    end else begin
        ap_return_1 = ap_return_1_preg;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_return_2 = add_ln859_4_fu_132_p2;
    end else begin
        ap_return_2 = ap_return_2_preg;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((ap_start == 1'b0) | (ap_done_reg == 1'b1)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign add_ln859_3_fu_100_p2 = ($signed(sext_ln1534_fu_70_p1) + $signed(p_read1));

assign add_ln859_4_fu_132_p2 = (select_ln859_4_fu_124_p3 + p_read2);

assign add_ln859_fu_88_p2 = (y_sft_V_fu_73_p7 + p_read);

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

always @ (*) begin
    ap_block_state1 = ((ap_start == 1'b0) | (ap_done_reg == 1'b1));
end

assign select_ln859_3_fu_110_p3 = ((p_Repl2_s_reg_173[0:0] == 1'b1) ? add_ln859_3_fu_100_p2 : sub_ln859_2_fu_105_p2);

assign select_ln859_4_fu_124_p3 = ((tmp_13_fu_117_p3[0:0] == 1'b1) ? 16'd65280 : 16'd256);

assign select_ln859_fu_93_p3 = ((p_Repl2_s_reg_173[0:0] == 1'b1) ? sub_ln859_fu_83_p2 : add_ln859_fu_88_p2);

assign sext_ln1534_fu_70_p1 = $signed(r_V_reg_184);

assign sub_ln859_2_fu_105_p2 = ($signed(p_read1) - $signed(sext_ln1534_fu_70_p1));

assign sub_ln859_fu_83_p2 = (p_read - y_sft_V_fu_73_p7);

assign tmp_13_fu_117_p3 = p_read1[32'd15];

assign y_sft_V_fu_73_p7 = {{{{{{p_Repl2_s_reg_173}, {p_Repl2_s_reg_173}}, {p_Repl2_s_reg_173}}, {p_Repl2_s_reg_173}}, {p_Repl2_s_reg_173}}, {tmp_reg_189}};

endmodule //cordiccart2pol_cordic_cr_unsigned_short_5_s
