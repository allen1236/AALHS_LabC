
`include "dump_file_agent.svh"
`include "csv_file_dump.svh"
`include "sample_agent.svh"
`include "sample_manager.svh"
`include "nodf_module_interface.svh"
`include "nodf_module_monitor.svh"
`include "df_fifo_interface.svh"
`include "df_fifo_monitor.svh"
`include "df_process_interface.svh"
`include "df_process_monitor.svh"
`timescale 1ns/1ps

// top module for dataflow related monitors
module dataflow_monitor(
input logic clock,
input logic reset,
input logic finish
);

    df_fifo_intf fifo_intf_1(clock,reset);
    assign fifo_intf_1.rd_en = AESL_inst_cordiccart2pol.inStream_x_U.if_read & AESL_inst_cordiccart2pol.inStream_x_U.if_empty_n;
    assign fifo_intf_1.wr_en = AESL_inst_cordiccart2pol.inStream_x_U.if_write & AESL_inst_cordiccart2pol.inStream_x_U.if_full_n;
    assign fifo_intf_1.fifo_rd_block = ~(AESL_inst_cordiccart2pol.ini_trans_U0.inStream_x_blk_n);
    assign fifo_intf_1.fifo_wr_block = ~(AESL_inst_cordiccart2pol.Block_entry44_proc9_U0.inStream_x_blk_n);
    assign fifo_intf_1.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_1;
    csv_file_dump cstatus_csv_dumper_1;
    df_fifo_monitor fifo_monitor_1;
    df_fifo_intf fifo_intf_2(clock,reset);
    assign fifo_intf_2.rd_en = AESL_inst_cordiccart2pol.inStream_y_U.if_read & AESL_inst_cordiccart2pol.inStream_y_U.if_empty_n;
    assign fifo_intf_2.wr_en = AESL_inst_cordiccart2pol.inStream_y_U.if_write & AESL_inst_cordiccart2pol.inStream_y_U.if_full_n;
    assign fifo_intf_2.fifo_rd_block = ~(AESL_inst_cordiccart2pol.ini_trans_U0.inStream_y_blk_n);
    assign fifo_intf_2.fifo_wr_block = ~(AESL_inst_cordiccart2pol.Block_entry44_proc9_U0.inStream_y_blk_n);
    assign fifo_intf_2.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_2;
    csv_file_dump cstatus_csv_dumper_2;
    df_fifo_monitor fifo_monitor_2;
    df_fifo_intf fifo_intf_3(clock,reset);
    assign fifo_intf_3.rd_en = AESL_inst_cordiccart2pol.x_pip_V_0_c_channel_U.if_read & AESL_inst_cordiccart2pol.x_pip_V_0_c_channel_U.if_empty_n;
    assign fifo_intf_3.wr_en = AESL_inst_cordiccart2pol.x_pip_V_0_c_channel_U.if_write & AESL_inst_cordiccart2pol.x_pip_V_0_c_channel_U.if_full_n;
    assign fifo_intf_3.fifo_rd_block = 0;
    assign fifo_intf_3.fifo_wr_block = 0;
    assign fifo_intf_3.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_3;
    csv_file_dump cstatus_csv_dumper_3;
    df_fifo_monitor fifo_monitor_3;
    df_fifo_intf fifo_intf_4(clock,reset);
    assign fifo_intf_4.rd_en = AESL_inst_cordiccart2pol.y_pip_V_0_c_channel_U.if_read & AESL_inst_cordiccart2pol.y_pip_V_0_c_channel_U.if_empty_n;
    assign fifo_intf_4.wr_en = AESL_inst_cordiccart2pol.y_pip_V_0_c_channel_U.if_write & AESL_inst_cordiccart2pol.y_pip_V_0_c_channel_U.if_full_n;
    assign fifo_intf_4.fifo_rd_block = 0;
    assign fifo_intf_4.fifo_wr_block = 0;
    assign fifo_intf_4.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_4;
    csv_file_dump cstatus_csv_dumper_4;
    df_fifo_monitor fifo_monitor_4;
    df_fifo_intf fifo_intf_5(clock,reset);
    assign fifo_intf_5.rd_en = AESL_inst_cordiccart2pol.theta_pip_V_0_c_channel_U.if_read & AESL_inst_cordiccart2pol.theta_pip_V_0_c_channel_U.if_empty_n;
    assign fifo_intf_5.wr_en = AESL_inst_cordiccart2pol.theta_pip_V_0_c_channel_U.if_write & AESL_inst_cordiccart2pol.theta_pip_V_0_c_channel_U.if_full_n;
    assign fifo_intf_5.fifo_rd_block = 0;
    assign fifo_intf_5.fifo_wr_block = 0;
    assign fifo_intf_5.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_5;
    csv_file_dump cstatus_csv_dumper_5;
    df_fifo_monitor fifo_monitor_5;
    df_fifo_intf fifo_intf_6(clock,reset);
    assign fifo_intf_6.rd_en = AESL_inst_cordiccart2pol.x_pip_V_1_c_channel_U.if_read & AESL_inst_cordiccart2pol.x_pip_V_1_c_channel_U.if_empty_n;
    assign fifo_intf_6.wr_en = AESL_inst_cordiccart2pol.x_pip_V_1_c_channel_U.if_write & AESL_inst_cordiccart2pol.x_pip_V_1_c_channel_U.if_full_n;
    assign fifo_intf_6.fifo_rd_block = 0;
    assign fifo_intf_6.fifo_wr_block = 0;
    assign fifo_intf_6.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_6;
    csv_file_dump cstatus_csv_dumper_6;
    df_fifo_monitor fifo_monitor_6;
    df_fifo_intf fifo_intf_7(clock,reset);
    assign fifo_intf_7.rd_en = AESL_inst_cordiccart2pol.y_pip_V_1_c_channel_U.if_read & AESL_inst_cordiccart2pol.y_pip_V_1_c_channel_U.if_empty_n;
    assign fifo_intf_7.wr_en = AESL_inst_cordiccart2pol.y_pip_V_1_c_channel_U.if_write & AESL_inst_cordiccart2pol.y_pip_V_1_c_channel_U.if_full_n;
    assign fifo_intf_7.fifo_rd_block = 0;
    assign fifo_intf_7.fifo_wr_block = 0;
    assign fifo_intf_7.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_7;
    csv_file_dump cstatus_csv_dumper_7;
    df_fifo_monitor fifo_monitor_7;
    df_fifo_intf fifo_intf_8(clock,reset);
    assign fifo_intf_8.rd_en = AESL_inst_cordiccart2pol.theta_pip_V_1_c_channel_U.if_read & AESL_inst_cordiccart2pol.theta_pip_V_1_c_channel_U.if_empty_n;
    assign fifo_intf_8.wr_en = AESL_inst_cordiccart2pol.theta_pip_V_1_c_channel_U.if_write & AESL_inst_cordiccart2pol.theta_pip_V_1_c_channel_U.if_full_n;
    assign fifo_intf_8.fifo_rd_block = 0;
    assign fifo_intf_8.fifo_wr_block = 0;
    assign fifo_intf_8.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_8;
    csv_file_dump cstatus_csv_dumper_8;
    df_fifo_monitor fifo_monitor_8;
    df_fifo_intf fifo_intf_9(clock,reset);
    assign fifo_intf_9.rd_en = AESL_inst_cordiccart2pol.x_pip_V_2_c_channel_U.if_read & AESL_inst_cordiccart2pol.x_pip_V_2_c_channel_U.if_empty_n;
    assign fifo_intf_9.wr_en = AESL_inst_cordiccart2pol.x_pip_V_2_c_channel_U.if_write & AESL_inst_cordiccart2pol.x_pip_V_2_c_channel_U.if_full_n;
    assign fifo_intf_9.fifo_rd_block = 0;
    assign fifo_intf_9.fifo_wr_block = 0;
    assign fifo_intf_9.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_9;
    csv_file_dump cstatus_csv_dumper_9;
    df_fifo_monitor fifo_monitor_9;
    df_fifo_intf fifo_intf_10(clock,reset);
    assign fifo_intf_10.rd_en = AESL_inst_cordiccart2pol.y_pip_V_2_c_channel_U.if_read & AESL_inst_cordiccart2pol.y_pip_V_2_c_channel_U.if_empty_n;
    assign fifo_intf_10.wr_en = AESL_inst_cordiccart2pol.y_pip_V_2_c_channel_U.if_write & AESL_inst_cordiccart2pol.y_pip_V_2_c_channel_U.if_full_n;
    assign fifo_intf_10.fifo_rd_block = 0;
    assign fifo_intf_10.fifo_wr_block = 0;
    assign fifo_intf_10.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_10;
    csv_file_dump cstatus_csv_dumper_10;
    df_fifo_monitor fifo_monitor_10;
    df_fifo_intf fifo_intf_11(clock,reset);
    assign fifo_intf_11.rd_en = AESL_inst_cordiccart2pol.theta_pip_V_2_c_channel_U.if_read & AESL_inst_cordiccart2pol.theta_pip_V_2_c_channel_U.if_empty_n;
    assign fifo_intf_11.wr_en = AESL_inst_cordiccart2pol.theta_pip_V_2_c_channel_U.if_write & AESL_inst_cordiccart2pol.theta_pip_V_2_c_channel_U.if_full_n;
    assign fifo_intf_11.fifo_rd_block = 0;
    assign fifo_intf_11.fifo_wr_block = 0;
    assign fifo_intf_11.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_11;
    csv_file_dump cstatus_csv_dumper_11;
    df_fifo_monitor fifo_monitor_11;
    df_fifo_intf fifo_intf_12(clock,reset);
    assign fifo_intf_12.rd_en = AESL_inst_cordiccart2pol.x_pip_V_3_c_channel_U.if_read & AESL_inst_cordiccart2pol.x_pip_V_3_c_channel_U.if_empty_n;
    assign fifo_intf_12.wr_en = AESL_inst_cordiccart2pol.x_pip_V_3_c_channel_U.if_write & AESL_inst_cordiccart2pol.x_pip_V_3_c_channel_U.if_full_n;
    assign fifo_intf_12.fifo_rd_block = 0;
    assign fifo_intf_12.fifo_wr_block = 0;
    assign fifo_intf_12.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_12;
    csv_file_dump cstatus_csv_dumper_12;
    df_fifo_monitor fifo_monitor_12;
    df_fifo_intf fifo_intf_13(clock,reset);
    assign fifo_intf_13.rd_en = AESL_inst_cordiccart2pol.y_pip_V_3_c_channel_U.if_read & AESL_inst_cordiccart2pol.y_pip_V_3_c_channel_U.if_empty_n;
    assign fifo_intf_13.wr_en = AESL_inst_cordiccart2pol.y_pip_V_3_c_channel_U.if_write & AESL_inst_cordiccart2pol.y_pip_V_3_c_channel_U.if_full_n;
    assign fifo_intf_13.fifo_rd_block = 0;
    assign fifo_intf_13.fifo_wr_block = 0;
    assign fifo_intf_13.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_13;
    csv_file_dump cstatus_csv_dumper_13;
    df_fifo_monitor fifo_monitor_13;
    df_fifo_intf fifo_intf_14(clock,reset);
    assign fifo_intf_14.rd_en = AESL_inst_cordiccart2pol.theta_pip_V_3_c_channel_U.if_read & AESL_inst_cordiccart2pol.theta_pip_V_3_c_channel_U.if_empty_n;
    assign fifo_intf_14.wr_en = AESL_inst_cordiccart2pol.theta_pip_V_3_c_channel_U.if_write & AESL_inst_cordiccart2pol.theta_pip_V_3_c_channel_U.if_full_n;
    assign fifo_intf_14.fifo_rd_block = 0;
    assign fifo_intf_14.fifo_wr_block = 0;
    assign fifo_intf_14.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_14;
    csv_file_dump cstatus_csv_dumper_14;
    df_fifo_monitor fifo_monitor_14;
    df_fifo_intf fifo_intf_15(clock,reset);
    assign fifo_intf_15.rd_en = AESL_inst_cordiccart2pol.x_pip_V_4_c_channel_U.if_read & AESL_inst_cordiccart2pol.x_pip_V_4_c_channel_U.if_empty_n;
    assign fifo_intf_15.wr_en = AESL_inst_cordiccart2pol.x_pip_V_4_c_channel_U.if_write & AESL_inst_cordiccart2pol.x_pip_V_4_c_channel_U.if_full_n;
    assign fifo_intf_15.fifo_rd_block = 0;
    assign fifo_intf_15.fifo_wr_block = 0;
    assign fifo_intf_15.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_15;
    csv_file_dump cstatus_csv_dumper_15;
    df_fifo_monitor fifo_monitor_15;
    df_fifo_intf fifo_intf_16(clock,reset);
    assign fifo_intf_16.rd_en = AESL_inst_cordiccart2pol.y_pip_V_4_c_channel_U.if_read & AESL_inst_cordiccart2pol.y_pip_V_4_c_channel_U.if_empty_n;
    assign fifo_intf_16.wr_en = AESL_inst_cordiccart2pol.y_pip_V_4_c_channel_U.if_write & AESL_inst_cordiccart2pol.y_pip_V_4_c_channel_U.if_full_n;
    assign fifo_intf_16.fifo_rd_block = 0;
    assign fifo_intf_16.fifo_wr_block = 0;
    assign fifo_intf_16.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_16;
    csv_file_dump cstatus_csv_dumper_16;
    df_fifo_monitor fifo_monitor_16;
    df_fifo_intf fifo_intf_17(clock,reset);
    assign fifo_intf_17.rd_en = AESL_inst_cordiccart2pol.theta_pip_V_4_c_channel_U.if_read & AESL_inst_cordiccart2pol.theta_pip_V_4_c_channel_U.if_empty_n;
    assign fifo_intf_17.wr_en = AESL_inst_cordiccart2pol.theta_pip_V_4_c_channel_U.if_write & AESL_inst_cordiccart2pol.theta_pip_V_4_c_channel_U.if_full_n;
    assign fifo_intf_17.fifo_rd_block = 0;
    assign fifo_intf_17.fifo_wr_block = 0;
    assign fifo_intf_17.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_17;
    csv_file_dump cstatus_csv_dumper_17;
    df_fifo_monitor fifo_monitor_17;
    df_fifo_intf fifo_intf_18(clock,reset);
    assign fifo_intf_18.rd_en = AESL_inst_cordiccart2pol.x_pip_V_5_c_channel_U.if_read & AESL_inst_cordiccart2pol.x_pip_V_5_c_channel_U.if_empty_n;
    assign fifo_intf_18.wr_en = AESL_inst_cordiccart2pol.x_pip_V_5_c_channel_U.if_write & AESL_inst_cordiccart2pol.x_pip_V_5_c_channel_U.if_full_n;
    assign fifo_intf_18.fifo_rd_block = 0;
    assign fifo_intf_18.fifo_wr_block = 0;
    assign fifo_intf_18.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_18;
    csv_file_dump cstatus_csv_dumper_18;
    df_fifo_monitor fifo_monitor_18;
    df_fifo_intf fifo_intf_19(clock,reset);
    assign fifo_intf_19.rd_en = AESL_inst_cordiccart2pol.y_pip_V_5_c_channel_U.if_read & AESL_inst_cordiccart2pol.y_pip_V_5_c_channel_U.if_empty_n;
    assign fifo_intf_19.wr_en = AESL_inst_cordiccart2pol.y_pip_V_5_c_channel_U.if_write & AESL_inst_cordiccart2pol.y_pip_V_5_c_channel_U.if_full_n;
    assign fifo_intf_19.fifo_rd_block = 0;
    assign fifo_intf_19.fifo_wr_block = 0;
    assign fifo_intf_19.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_19;
    csv_file_dump cstatus_csv_dumper_19;
    df_fifo_monitor fifo_monitor_19;
    df_fifo_intf fifo_intf_20(clock,reset);
    assign fifo_intf_20.rd_en = AESL_inst_cordiccart2pol.theta_pip_V_5_c_channel_U.if_read & AESL_inst_cordiccart2pol.theta_pip_V_5_c_channel_U.if_empty_n;
    assign fifo_intf_20.wr_en = AESL_inst_cordiccart2pol.theta_pip_V_5_c_channel_U.if_write & AESL_inst_cordiccart2pol.theta_pip_V_5_c_channel_U.if_full_n;
    assign fifo_intf_20.fifo_rd_block = 0;
    assign fifo_intf_20.fifo_wr_block = 0;
    assign fifo_intf_20.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_20;
    csv_file_dump cstatus_csv_dumper_20;
    df_fifo_monitor fifo_monitor_20;
    df_fifo_intf fifo_intf_21(clock,reset);
    assign fifo_intf_21.rd_en = AESL_inst_cordiccart2pol.x_pip_V_6_c_channel_U.if_read & AESL_inst_cordiccart2pol.x_pip_V_6_c_channel_U.if_empty_n;
    assign fifo_intf_21.wr_en = AESL_inst_cordiccart2pol.x_pip_V_6_c_channel_U.if_write & AESL_inst_cordiccart2pol.x_pip_V_6_c_channel_U.if_full_n;
    assign fifo_intf_21.fifo_rd_block = 0;
    assign fifo_intf_21.fifo_wr_block = 0;
    assign fifo_intf_21.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_21;
    csv_file_dump cstatus_csv_dumper_21;
    df_fifo_monitor fifo_monitor_21;
    df_fifo_intf fifo_intf_22(clock,reset);
    assign fifo_intf_22.rd_en = AESL_inst_cordiccart2pol.y_pip_V_6_c_channel_U.if_read & AESL_inst_cordiccart2pol.y_pip_V_6_c_channel_U.if_empty_n;
    assign fifo_intf_22.wr_en = AESL_inst_cordiccart2pol.y_pip_V_6_c_channel_U.if_write & AESL_inst_cordiccart2pol.y_pip_V_6_c_channel_U.if_full_n;
    assign fifo_intf_22.fifo_rd_block = 0;
    assign fifo_intf_22.fifo_wr_block = 0;
    assign fifo_intf_22.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_22;
    csv_file_dump cstatus_csv_dumper_22;
    df_fifo_monitor fifo_monitor_22;
    df_fifo_intf fifo_intf_23(clock,reset);
    assign fifo_intf_23.rd_en = AESL_inst_cordiccart2pol.theta_pip_V_6_c_channel_U.if_read & AESL_inst_cordiccart2pol.theta_pip_V_6_c_channel_U.if_empty_n;
    assign fifo_intf_23.wr_en = AESL_inst_cordiccart2pol.theta_pip_V_6_c_channel_U.if_write & AESL_inst_cordiccart2pol.theta_pip_V_6_c_channel_U.if_full_n;
    assign fifo_intf_23.fifo_rd_block = 0;
    assign fifo_intf_23.fifo_wr_block = 0;
    assign fifo_intf_23.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump fifo_csv_dumper_23;
    csv_file_dump cstatus_csv_dumper_23;
    df_fifo_monitor fifo_monitor_23;

logic region_0_idle;
logic [31:0] region_0_start_cnt;
logic [31:0] region_0_done_cnt;
assign region_0_idle = (region_0_start_cnt == region_0_done_cnt) && AESL_inst_cordiccart2pol.ap_start == 1'b0 ;
always @(posedge clock) begin
    if (reset == 1'b1)
        region_0_start_cnt <= 32'h0;
    else if (AESL_inst_cordiccart2pol.ap_start == 1'b1 && AESL_inst_cordiccart2pol.ap_ready == 1'b1)
        region_0_start_cnt <= region_0_start_cnt + 32'h1;
    else;
end
always @(posedge clock) begin
    if (reset == 1'b1)
        region_0_done_cnt <= 32'h0;
    else if (AESL_inst_cordiccart2pol.ap_done == 1'b1 && AESL_inst_cordiccart2pol.ap_continue == 1'b1)
        region_0_done_cnt <= region_0_done_cnt + 32'h1;
    else;
end


    df_process_intf process_intf_1(clock,reset);
    assign process_intf_1.ap_start = AESL_inst_cordiccart2pol.Block_entry44_proc9_U0.ap_start;
    assign process_intf_1.ap_ready = AESL_inst_cordiccart2pol.Block_entry44_proc9_U0.ap_ready;
    assign process_intf_1.ap_done = AESL_inst_cordiccart2pol.Block_entry44_proc9_U0.ap_done;
    assign process_intf_1.ap_continue = AESL_inst_cordiccart2pol.Block_entry44_proc9_U0.ap_continue;
    assign process_intf_1.real_start = AESL_inst_cordiccart2pol.Block_entry44_proc9_U0.real_start;
    assign process_intf_1.pin_stall = 1'b0;
    assign process_intf_1.pout_stall = 1'b0 | ~AESL_inst_cordiccart2pol.Block_entry44_proc9_U0.inStream_x_blk_n | ~AESL_inst_cordiccart2pol.Block_entry44_proc9_U0.inStream_y_blk_n;
    assign process_intf_1.cin_stall = 1'b0;
    assign process_intf_1.cout_stall = 1'b0;
    assign process_intf_1.region_idle = region_0_idle;
    assign process_intf_1.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_1;
    csv_file_dump pstatus_csv_dumper_1;
    df_process_monitor process_monitor_1;
    df_process_intf process_intf_2(clock,reset);
    assign process_intf_2.ap_start = AESL_inst_cordiccart2pol.ini_trans_U0.ap_start;
    assign process_intf_2.ap_ready = AESL_inst_cordiccart2pol.ini_trans_U0.ap_ready;
    assign process_intf_2.ap_done = AESL_inst_cordiccart2pol.ini_trans_U0.ap_done;
    assign process_intf_2.ap_continue = AESL_inst_cordiccart2pol.ini_trans_U0.ap_continue;
    assign process_intf_2.real_start = AESL_inst_cordiccart2pol.ini_trans_U0.ap_start;
    assign process_intf_2.pin_stall = 1'b0 | ~AESL_inst_cordiccart2pol.ini_trans_U0.inStream_x_blk_n | ~AESL_inst_cordiccart2pol.ini_trans_U0.inStream_y_blk_n;
    assign process_intf_2.pout_stall = 1'b0;
    assign process_intf_2.cin_stall = 1'b0;
    assign process_intf_2.cout_stall = 1'b0;
    assign process_intf_2.region_idle = region_0_idle;
    assign process_intf_2.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_2;
    csv_file_dump pstatus_csv_dumper_2;
    df_process_monitor process_monitor_2;
    df_process_intf process_intf_3(clock,reset);
    assign process_intf_3.ap_start = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_1_U0.ap_start;
    assign process_intf_3.ap_ready = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_1_U0.ap_ready;
    assign process_intf_3.ap_done = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_1_U0.ap_done;
    assign process_intf_3.ap_continue = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_1_U0.ap_continue;
    assign process_intf_3.real_start = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_1_U0.ap_start;
    assign process_intf_3.pin_stall = 1'b0;
    assign process_intf_3.pout_stall = 1'b0;
    assign process_intf_3.cin_stall = 1'b0;
    assign process_intf_3.cout_stall = 1'b0;
    assign process_intf_3.region_idle = region_0_idle;
    assign process_intf_3.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_3;
    csv_file_dump pstatus_csv_dumper_3;
    df_process_monitor process_monitor_3;
    df_process_intf process_intf_4(clock,reset);
    assign process_intf_4.ap_start = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_2_U0.ap_start;
    assign process_intf_4.ap_ready = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_2_U0.ap_ready;
    assign process_intf_4.ap_done = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_2_U0.ap_done;
    assign process_intf_4.ap_continue = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_2_U0.ap_continue;
    assign process_intf_4.real_start = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_2_U0.ap_start;
    assign process_intf_4.pin_stall = 1'b0;
    assign process_intf_4.pout_stall = 1'b0;
    assign process_intf_4.cin_stall = 1'b0;
    assign process_intf_4.cout_stall = 1'b0;
    assign process_intf_4.region_idle = region_0_idle;
    assign process_intf_4.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_4;
    csv_file_dump pstatus_csv_dumper_4;
    df_process_monitor process_monitor_4;
    df_process_intf process_intf_5(clock,reset);
    assign process_intf_5.ap_start = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_3_U0.ap_start;
    assign process_intf_5.ap_ready = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_3_U0.ap_ready;
    assign process_intf_5.ap_done = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_3_U0.ap_done;
    assign process_intf_5.ap_continue = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_3_U0.ap_continue;
    assign process_intf_5.real_start = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_3_U0.ap_start;
    assign process_intf_5.pin_stall = 1'b0;
    assign process_intf_5.pout_stall = 1'b0;
    assign process_intf_5.cin_stall = 1'b0;
    assign process_intf_5.cout_stall = 1'b0;
    assign process_intf_5.region_idle = region_0_idle;
    assign process_intf_5.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_5;
    csv_file_dump pstatus_csv_dumper_5;
    df_process_monitor process_monitor_5;
    df_process_intf process_intf_6(clock,reset);
    assign process_intf_6.ap_start = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_4_U0.ap_start;
    assign process_intf_6.ap_ready = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_4_U0.ap_ready;
    assign process_intf_6.ap_done = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_4_U0.ap_done;
    assign process_intf_6.ap_continue = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_4_U0.ap_continue;
    assign process_intf_6.real_start = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_4_U0.ap_start;
    assign process_intf_6.pin_stall = 1'b0;
    assign process_intf_6.pout_stall = 1'b0;
    assign process_intf_6.cin_stall = 1'b0;
    assign process_intf_6.cout_stall = 1'b0;
    assign process_intf_6.region_idle = region_0_idle;
    assign process_intf_6.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_6;
    csv_file_dump pstatus_csv_dumper_6;
    df_process_monitor process_monitor_6;
    df_process_intf process_intf_7(clock,reset);
    assign process_intf_7.ap_start = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_5_U0.ap_start;
    assign process_intf_7.ap_ready = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_5_U0.ap_ready;
    assign process_intf_7.ap_done = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_5_U0.ap_done;
    assign process_intf_7.ap_continue = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_5_U0.ap_continue;
    assign process_intf_7.real_start = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_5_U0.ap_start;
    assign process_intf_7.pin_stall = 1'b0;
    assign process_intf_7.pout_stall = 1'b0;
    assign process_intf_7.cin_stall = 1'b0;
    assign process_intf_7.cout_stall = 1'b0;
    assign process_intf_7.region_idle = region_0_idle;
    assign process_intf_7.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_7;
    csv_file_dump pstatus_csv_dumper_7;
    df_process_monitor process_monitor_7;
    df_process_intf process_intf_8(clock,reset);
    assign process_intf_8.ap_start = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_6_U0.ap_start;
    assign process_intf_8.ap_ready = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_6_U0.ap_ready;
    assign process_intf_8.ap_done = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_6_U0.ap_done;
    assign process_intf_8.ap_continue = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_6_U0.ap_continue;
    assign process_intf_8.real_start = AESL_inst_cordiccart2pol.cordic_cr_unsigned_short_6_U0.ap_start;
    assign process_intf_8.pin_stall = 1'b0;
    assign process_intf_8.pout_stall = 1'b0;
    assign process_intf_8.cin_stall = 1'b0;
    assign process_intf_8.cout_stall = 1'b0;
    assign process_intf_8.region_idle = region_0_idle;
    assign process_intf_8.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_8;
    csv_file_dump pstatus_csv_dumper_8;
    df_process_monitor process_monitor_8;
    df_process_intf process_intf_9(clock,reset);
    assign process_intf_9.ap_start = AESL_inst_cordiccart2pol.Block_entry4452_proc_U0.ap_start;
    assign process_intf_9.ap_ready = AESL_inst_cordiccart2pol.Block_entry4452_proc_U0.ap_ready;
    assign process_intf_9.ap_done = AESL_inst_cordiccart2pol.Block_entry4452_proc_U0.ap_done;
    assign process_intf_9.ap_continue = AESL_inst_cordiccart2pol.Block_entry4452_proc_U0.ap_continue;
    assign process_intf_9.real_start = AESL_inst_cordiccart2pol.Block_entry4452_proc_U0.ap_start;
    assign process_intf_9.pin_stall = 1'b0;
    assign process_intf_9.pout_stall = 1'b0;
    assign process_intf_9.cin_stall = 1'b0;
    assign process_intf_9.cout_stall = 1'b0;
    assign process_intf_9.region_idle = region_0_idle;
    assign process_intf_9.finish = finish | deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock;
    csv_file_dump pstall_csv_dumper_9;
    csv_file_dump pstatus_csv_dumper_9;
    df_process_monitor process_monitor_9;

    nodf_module_intf module_intf_1(clock,reset);
    assign module_intf_1.ap_start = AESL_inst_cordiccart2pol.ap_start;
    assign module_intf_1.ap_ready = AESL_inst_cordiccart2pol.ap_ready;
    assign module_intf_1.ap_done = AESL_inst_cordiccart2pol.ap_done;
    assign module_intf_1.ap_continue = AESL_inst_cordiccart2pol.ap_continue;
    assign module_intf_1.finish = finish;
    csv_file_dump mstatus_csv_dumper_1;
    nodf_module_monitor module_monitor_1;


    sample_manager sample_manager_inst;

initial begin
    sample_manager_inst = new;

    fifo_csv_dumper_1 = new("./depth1.csv");
    cstatus_csv_dumper_1 = new("./chan_status1.csv");
    fifo_monitor_1 = new(fifo_csv_dumper_1,fifo_intf_1,cstatus_csv_dumper_1);
    fifo_csv_dumper_2 = new("./depth2.csv");
    cstatus_csv_dumper_2 = new("./chan_status2.csv");
    fifo_monitor_2 = new(fifo_csv_dumper_2,fifo_intf_2,cstatus_csv_dumper_2);
    fifo_csv_dumper_3 = new("./depth3.csv");
    cstatus_csv_dumper_3 = new("./chan_status3.csv");
    fifo_monitor_3 = new(fifo_csv_dumper_3,fifo_intf_3,cstatus_csv_dumper_3);
    fifo_csv_dumper_4 = new("./depth4.csv");
    cstatus_csv_dumper_4 = new("./chan_status4.csv");
    fifo_monitor_4 = new(fifo_csv_dumper_4,fifo_intf_4,cstatus_csv_dumper_4);
    fifo_csv_dumper_5 = new("./depth5.csv");
    cstatus_csv_dumper_5 = new("./chan_status5.csv");
    fifo_monitor_5 = new(fifo_csv_dumper_5,fifo_intf_5,cstatus_csv_dumper_5);
    fifo_csv_dumper_6 = new("./depth6.csv");
    cstatus_csv_dumper_6 = new("./chan_status6.csv");
    fifo_monitor_6 = new(fifo_csv_dumper_6,fifo_intf_6,cstatus_csv_dumper_6);
    fifo_csv_dumper_7 = new("./depth7.csv");
    cstatus_csv_dumper_7 = new("./chan_status7.csv");
    fifo_monitor_7 = new(fifo_csv_dumper_7,fifo_intf_7,cstatus_csv_dumper_7);
    fifo_csv_dumper_8 = new("./depth8.csv");
    cstatus_csv_dumper_8 = new("./chan_status8.csv");
    fifo_monitor_8 = new(fifo_csv_dumper_8,fifo_intf_8,cstatus_csv_dumper_8);
    fifo_csv_dumper_9 = new("./depth9.csv");
    cstatus_csv_dumper_9 = new("./chan_status9.csv");
    fifo_monitor_9 = new(fifo_csv_dumper_9,fifo_intf_9,cstatus_csv_dumper_9);
    fifo_csv_dumper_10 = new("./depth10.csv");
    cstatus_csv_dumper_10 = new("./chan_status10.csv");
    fifo_monitor_10 = new(fifo_csv_dumper_10,fifo_intf_10,cstatus_csv_dumper_10);
    fifo_csv_dumper_11 = new("./depth11.csv");
    cstatus_csv_dumper_11 = new("./chan_status11.csv");
    fifo_monitor_11 = new(fifo_csv_dumper_11,fifo_intf_11,cstatus_csv_dumper_11);
    fifo_csv_dumper_12 = new("./depth12.csv");
    cstatus_csv_dumper_12 = new("./chan_status12.csv");
    fifo_monitor_12 = new(fifo_csv_dumper_12,fifo_intf_12,cstatus_csv_dumper_12);
    fifo_csv_dumper_13 = new("./depth13.csv");
    cstatus_csv_dumper_13 = new("./chan_status13.csv");
    fifo_monitor_13 = new(fifo_csv_dumper_13,fifo_intf_13,cstatus_csv_dumper_13);
    fifo_csv_dumper_14 = new("./depth14.csv");
    cstatus_csv_dumper_14 = new("./chan_status14.csv");
    fifo_monitor_14 = new(fifo_csv_dumper_14,fifo_intf_14,cstatus_csv_dumper_14);
    fifo_csv_dumper_15 = new("./depth15.csv");
    cstatus_csv_dumper_15 = new("./chan_status15.csv");
    fifo_monitor_15 = new(fifo_csv_dumper_15,fifo_intf_15,cstatus_csv_dumper_15);
    fifo_csv_dumper_16 = new("./depth16.csv");
    cstatus_csv_dumper_16 = new("./chan_status16.csv");
    fifo_monitor_16 = new(fifo_csv_dumper_16,fifo_intf_16,cstatus_csv_dumper_16);
    fifo_csv_dumper_17 = new("./depth17.csv");
    cstatus_csv_dumper_17 = new("./chan_status17.csv");
    fifo_monitor_17 = new(fifo_csv_dumper_17,fifo_intf_17,cstatus_csv_dumper_17);
    fifo_csv_dumper_18 = new("./depth18.csv");
    cstatus_csv_dumper_18 = new("./chan_status18.csv");
    fifo_monitor_18 = new(fifo_csv_dumper_18,fifo_intf_18,cstatus_csv_dumper_18);
    fifo_csv_dumper_19 = new("./depth19.csv");
    cstatus_csv_dumper_19 = new("./chan_status19.csv");
    fifo_monitor_19 = new(fifo_csv_dumper_19,fifo_intf_19,cstatus_csv_dumper_19);
    fifo_csv_dumper_20 = new("./depth20.csv");
    cstatus_csv_dumper_20 = new("./chan_status20.csv");
    fifo_monitor_20 = new(fifo_csv_dumper_20,fifo_intf_20,cstatus_csv_dumper_20);
    fifo_csv_dumper_21 = new("./depth21.csv");
    cstatus_csv_dumper_21 = new("./chan_status21.csv");
    fifo_monitor_21 = new(fifo_csv_dumper_21,fifo_intf_21,cstatus_csv_dumper_21);
    fifo_csv_dumper_22 = new("./depth22.csv");
    cstatus_csv_dumper_22 = new("./chan_status22.csv");
    fifo_monitor_22 = new(fifo_csv_dumper_22,fifo_intf_22,cstatus_csv_dumper_22);
    fifo_csv_dumper_23 = new("./depth23.csv");
    cstatus_csv_dumper_23 = new("./chan_status23.csv");
    fifo_monitor_23 = new(fifo_csv_dumper_23,fifo_intf_23,cstatus_csv_dumper_23);

    pstall_csv_dumper_1 = new("./stalling1.csv");
    pstatus_csv_dumper_1 = new("./status1.csv");
    process_monitor_1 = new(pstall_csv_dumper_1,process_intf_1,pstatus_csv_dumper_1);
    pstall_csv_dumper_2 = new("./stalling2.csv");
    pstatus_csv_dumper_2 = new("./status2.csv");
    process_monitor_2 = new(pstall_csv_dumper_2,process_intf_2,pstatus_csv_dumper_2);
    pstall_csv_dumper_3 = new("./stalling3.csv");
    pstatus_csv_dumper_3 = new("./status3.csv");
    process_monitor_3 = new(pstall_csv_dumper_3,process_intf_3,pstatus_csv_dumper_3);
    pstall_csv_dumper_4 = new("./stalling4.csv");
    pstatus_csv_dumper_4 = new("./status4.csv");
    process_monitor_4 = new(pstall_csv_dumper_4,process_intf_4,pstatus_csv_dumper_4);
    pstall_csv_dumper_5 = new("./stalling5.csv");
    pstatus_csv_dumper_5 = new("./status5.csv");
    process_monitor_5 = new(pstall_csv_dumper_5,process_intf_5,pstatus_csv_dumper_5);
    pstall_csv_dumper_6 = new("./stalling6.csv");
    pstatus_csv_dumper_6 = new("./status6.csv");
    process_monitor_6 = new(pstall_csv_dumper_6,process_intf_6,pstatus_csv_dumper_6);
    pstall_csv_dumper_7 = new("./stalling7.csv");
    pstatus_csv_dumper_7 = new("./status7.csv");
    process_monitor_7 = new(pstall_csv_dumper_7,process_intf_7,pstatus_csv_dumper_7);
    pstall_csv_dumper_8 = new("./stalling8.csv");
    pstatus_csv_dumper_8 = new("./status8.csv");
    process_monitor_8 = new(pstall_csv_dumper_8,process_intf_8,pstatus_csv_dumper_8);
    pstall_csv_dumper_9 = new("./stalling9.csv");
    pstatus_csv_dumper_9 = new("./status9.csv");
    process_monitor_9 = new(pstall_csv_dumper_9,process_intf_9,pstatus_csv_dumper_9);

    mstatus_csv_dumper_1 = new("./module_status1.csv");
    module_monitor_1 = new(module_intf_1,mstatus_csv_dumper_1);





    sample_manager_inst.add_one_monitor(fifo_monitor_1);
    sample_manager_inst.add_one_monitor(fifo_monitor_2);
    sample_manager_inst.add_one_monitor(fifo_monitor_3);
    sample_manager_inst.add_one_monitor(fifo_monitor_4);
    sample_manager_inst.add_one_monitor(fifo_monitor_5);
    sample_manager_inst.add_one_monitor(fifo_monitor_6);
    sample_manager_inst.add_one_monitor(fifo_monitor_7);
    sample_manager_inst.add_one_monitor(fifo_monitor_8);
    sample_manager_inst.add_one_monitor(fifo_monitor_9);
    sample_manager_inst.add_one_monitor(fifo_monitor_10);
    sample_manager_inst.add_one_monitor(fifo_monitor_11);
    sample_manager_inst.add_one_monitor(fifo_monitor_12);
    sample_manager_inst.add_one_monitor(fifo_monitor_13);
    sample_manager_inst.add_one_monitor(fifo_monitor_14);
    sample_manager_inst.add_one_monitor(fifo_monitor_15);
    sample_manager_inst.add_one_monitor(fifo_monitor_16);
    sample_manager_inst.add_one_monitor(fifo_monitor_17);
    sample_manager_inst.add_one_monitor(fifo_monitor_18);
    sample_manager_inst.add_one_monitor(fifo_monitor_19);
    sample_manager_inst.add_one_monitor(fifo_monitor_20);
    sample_manager_inst.add_one_monitor(fifo_monitor_21);
    sample_manager_inst.add_one_monitor(fifo_monitor_22);
    sample_manager_inst.add_one_monitor(fifo_monitor_23);
    sample_manager_inst.add_one_monitor(process_monitor_1);
    sample_manager_inst.add_one_monitor(process_monitor_2);
    sample_manager_inst.add_one_monitor(process_monitor_3);
    sample_manager_inst.add_one_monitor(process_monitor_4);
    sample_manager_inst.add_one_monitor(process_monitor_5);
    sample_manager_inst.add_one_monitor(process_monitor_6);
    sample_manager_inst.add_one_monitor(process_monitor_7);
    sample_manager_inst.add_one_monitor(process_monitor_8);
    sample_manager_inst.add_one_monitor(process_monitor_9);
    sample_manager_inst.add_one_monitor(module_monitor_1);
    
    fork
        sample_manager_inst.start_monitor();
        last_transaction_done;
    join
    disable fork;

    sample_manager_inst.start_dump();
end

    task last_transaction_done();
        wait(reset == 0);
        while(1) begin
            if (finish == 1'b1 || deadlock_detector.AESL_deadlock_report_unit_inst.find_df_deadlock == 1'b1) begin
                @(negedge clock);
                break;
            end
            else
                @(posedge clock);
        end
    endtask


endmodule
