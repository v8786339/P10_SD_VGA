############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project TestPattern
set_top test_pattern1
add_files TestPattern/tp.cpp
add_files TestPattern/tp.h
add_files -tb TestPattern/testtp.cpp
open_solution "TestPattern"
set_part {xc7z010clg400-2} -tool vivado
create_clock -period 10 -name default
#source "./TestPattern/TestPattern/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -flow impl -rtl verilog -format ip_catalog
