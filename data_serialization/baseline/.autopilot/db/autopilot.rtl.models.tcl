set SynModuleInfo {
  {SRCNAME dut_Pipeline_1 MODELNAME dut_Pipeline_1 RTLNAME dut_dut_Pipeline_1
    SUBMODULES {
      {MODELNAME dut_flow_control_loop_pipe_sequential_init RTLNAME dut_flow_control_loop_pipe_sequential_init BINDTYPE interface TYPE internal_upc_flow_control INSTNAME dut_flow_control_loop_pipe_sequential_init_U}
    }
  }
  {SRCNAME dut_Pipeline_2 MODELNAME dut_Pipeline_2 RTLNAME dut_dut_Pipeline_2}
  {SRCNAME dut_Pipeline_3 MODELNAME dut_Pipeline_3 RTLNAME dut_dut_Pipeline_3}
  {SRCNAME dut_Pipeline_VITIS_LOOP_38_1 MODELNAME dut_Pipeline_VITIS_LOOP_38_1 RTLNAME dut_dut_Pipeline_VITIS_LOOP_38_1}
  {SRCNAME dut_Pipeline_VITIS_LOOP_73_2 MODELNAME dut_Pipeline_VITIS_LOOP_73_2 RTLNAME dut_dut_Pipeline_VITIS_LOOP_73_2}
  {SRCNAME dut MODELNAME dut RTLNAME dut IS_TOP 1
    SUBMODULES {
      {MODELNAME dut_mul_32s_34ns_65_5_1 RTLNAME dut_mul_32s_34ns_65_5_1 BINDTYPE op TYPE mul IMPL auto LATENCY 4 ALLOW_PRAGMA 1}
      {MODELNAME dut_ptr_col_RAM_AUTO_1R1W RTLNAME dut_ptr_col_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_ptr_col2_RAM_AUTO_1R1W RTLNAME dut_ptr_col2_RAM_AUTO_1R1W BINDTYPE storage TYPE ram IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME dut_gmem_m_axi RTLNAME dut_gmem_m_axi BINDTYPE interface TYPE adapter IMPL m_axi}
      {MODELNAME dut_control_s_axi RTLNAME dut_control_s_axi BINDTYPE interface TYPE interface_s_axilite}
    }
  }
}
