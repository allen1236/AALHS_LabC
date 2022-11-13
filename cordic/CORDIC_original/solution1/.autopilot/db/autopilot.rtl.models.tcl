set SynModuleInfo {
  {SRCNAME Block_entry39_proc9 MODELNAME Block_entry39_proc9 RTLNAME cordiccart2pol_Block_entry39_proc9}
  {SRCNAME ini_trans MODELNAME ini_trans RTLNAME cordiccart2pol_ini_trans
    SUBMODULES {
      {MODELNAME cordiccart2pol_fpext_32ns_64_3_no_dsp_1 RTLNAME cordiccart2pol_fpext_32ns_64_3_no_dsp_1 BINDTYPE op TYPE fpext IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
      {MODELNAME cordiccart2pol_ashr_54ns_32ns_54_2_1 RTLNAME cordiccart2pol_ashr_54ns_32ns_54_2_1 BINDTYPE op TYPE ashr IMPL auto_pipe LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cordiccart2pol_shl_16ns_16ns_16_2_1 RTLNAME cordiccart2pol_shl_16ns_16ns_16_2_1 BINDTYPE op TYPE shl IMPL auto_pipe LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cordiccart2pol_ini_trans_ini_phase_V_ROM_AUTO_1R RTLNAME cordiccart2pol_ini_trans_ini_phase_V_ROM_AUTO_1R BINDTYPE storage TYPE rom IMPL auto LATENCY 2 ALLOW_PRAGMA 1}
    }
  }
  {SRCNAME {cordic_cr<(unsigned short)1>} MODELNAME cordic_cr_unsigned_short_1_s RTLNAME cordiccart2pol_cordic_cr_unsigned_short_1_s}
  {SRCNAME {cordic_cr<(unsigned short)2>} MODELNAME cordic_cr_unsigned_short_2_s RTLNAME cordiccart2pol_cordic_cr_unsigned_short_2_s}
  {SRCNAME {cordic_cr<(unsigned short)3>} MODELNAME cordic_cr_unsigned_short_3_s RTLNAME cordiccart2pol_cordic_cr_unsigned_short_3_s}
  {SRCNAME {cordic_cr<(unsigned short)4>} MODELNAME cordic_cr_unsigned_short_4_s RTLNAME cordiccart2pol_cordic_cr_unsigned_short_4_s}
  {SRCNAME {cordic_cr<(unsigned short)5>} MODELNAME cordic_cr_unsigned_short_5_s RTLNAME cordiccart2pol_cordic_cr_unsigned_short_5_s}
  {SRCNAME {cordic_cr<(unsigned short)6>} MODELNAME cordic_cr_unsigned_short_6_s RTLNAME cordiccart2pol_cordic_cr_unsigned_short_6_s}
  {SRCNAME Block_entry3947_proc MODELNAME Block_entry3947_proc RTLNAME cordiccart2pol_Block_entry3947_proc
    SUBMODULES {
      {MODELNAME cordiccart2pol_lshr_64ns_32ns_64_2_1 RTLNAME cordiccart2pol_lshr_64ns_32ns_64_2_1 BINDTYPE op TYPE lshr IMPL auto_pipe LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cordiccart2pol_shl_64ns_32ns_64_2_1 RTLNAME cordiccart2pol_shl_64ns_32ns_64_2_1 BINDTYPE op TYPE shl IMPL auto_pipe LATENCY 1 ALLOW_PRAGMA 1}
      {MODELNAME cordiccart2pol_mul_mul_16s_10ns_26_4_1 RTLNAME cordiccart2pol_mul_mul_16s_10ns_26_4_1 BINDTYPE op TYPE all IMPL dsp48 LATENCY 3 ALLOW_PRAGMA 1}
      {MODELNAME cordiccart2pol_fifo_w16_d1_S RTLNAME cordiccart2pol_fifo_w16_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
  {SRCNAME cordiccart2pol MODELNAME cordiccart2pol RTLNAME cordiccart2pol IS_TOP 1
    SUBMODULES {
      {MODELNAME cordiccart2pol_fifo_w32_d1_S RTLNAME cordiccart2pol_fifo_w32_d1_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME cordiccart2pol_fifo_w16_d2_S RTLNAME cordiccart2pol_fifo_w16_d2_S BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
      {MODELNAME cordiccart2pol_start_for_ini_trans_U0 RTLNAME cordiccart2pol_start_for_ini_trans_U0 BINDTYPE storage TYPE fifo IMPL srl ALLOW_PRAGMA 1 INSTNAME {$InstName}}
    }
  }
}
