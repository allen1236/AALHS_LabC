############################################################
## This file is generated automatically by Vitis HLS.
## Please DO NOT edit it.
## Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
############################################################
open_project Big_Data_Ser
set_top dut
add_files Big_Data_Ser/top.cpp
add_files Big_Data_Ser/top.hpp
add_files -tb Big_Data_Ser/test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "baseline" -flow_target vivado
set_part {xc7z020-clg400-1}
create_clock -period 7.6 -name default
source "./Big_Data_Ser/baseline/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level port
export_design -format ip_catalog
