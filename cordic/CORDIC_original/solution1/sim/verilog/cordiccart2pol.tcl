
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/theta_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/r_ap_vld -into $return_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/theta -into $return_group -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/r -into $return_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set x__y_group [add_wave_group x__y(axi_slave) -into $cinputgroup]
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_BRESP -into $x__y_group -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_BREADY -into $x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_BVALID -into $x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_RRESP -into $x__y_group -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_RDATA -into $x__y_group -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_RREADY -into $x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_RVALID -into $x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_ARREADY -into $x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_ARVALID -into $x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_ARADDR -into $x__y_group -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_WSTRB -into $x__y_group -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_WDATA -into $x__y_group -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_WREADY -into $x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_WVALID -into $x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_AWREADY -into $x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_AWVALID -into $x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/s_axi_control_AWADDR -into $x__y_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/ap_start -into $blocksiggroup
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/ap_done -into $blocksiggroup
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/ap_ready -into $blocksiggroup
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/ap_idle -into $blocksiggroup
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/ap_continue -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/ap_rst_n -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_cordiccart2pol_top/AESL_inst_cordiccart2pol/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_cordiccart2pol_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_cordiccart2pol_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_cordiccart2pol_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_cordiccart2pol_top/LENGTH_x -into $tb_portdepth_group -radix hex
add_wave /apatb_cordiccart2pol_top/LENGTH_y -into $tb_portdepth_group -radix hex
add_wave /apatb_cordiccart2pol_top/LENGTH_r -into $tb_portdepth_group -radix hex
add_wave /apatb_cordiccart2pol_top/LENGTH_theta -into $tb_portdepth_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcoutputgroup]
add_wave /apatb_cordiccart2pol_top/theta_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/r_ap_vld -into $tb_return_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/theta -into $tb_return_group -radix hex
add_wave /apatb_cordiccart2pol_top/r -into $tb_return_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_x__y_group [add_wave_group x__y(axi_slave) -into $tbcinputgroup]
add_wave /apatb_cordiccart2pol_top/control_BRESP -into $tb_x__y_group -radix hex
add_wave /apatb_cordiccart2pol_top/control_BREADY -into $tb_x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/control_BVALID -into $tb_x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/control_RRESP -into $tb_x__y_group -radix hex
add_wave /apatb_cordiccart2pol_top/control_RDATA -into $tb_x__y_group -radix hex
add_wave /apatb_cordiccart2pol_top/control_RREADY -into $tb_x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/control_RVALID -into $tb_x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/control_ARREADY -into $tb_x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/control_ARVALID -into $tb_x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/control_ARADDR -into $tb_x__y_group -radix hex
add_wave /apatb_cordiccart2pol_top/control_WSTRB -into $tb_x__y_group -radix hex
add_wave /apatb_cordiccart2pol_top/control_WDATA -into $tb_x__y_group -radix hex
add_wave /apatb_cordiccart2pol_top/control_WREADY -into $tb_x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/control_WVALID -into $tb_x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/control_AWREADY -into $tb_x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/control_AWVALID -into $tb_x__y_group -color #ffff00 -radix hex
add_wave /apatb_cordiccart2pol_top/control_AWADDR -into $tb_x__y_group -radix hex
save_wave_config cordiccart2pol.wcfg
run all
quit

