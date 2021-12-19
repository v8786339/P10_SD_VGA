############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project VIP
set_top vip1_m
add_files VIP/vip.cpp
add_files VIP/vip.h
add_files -tb VIP/testvip.cpp
open_solution "VIP"
set_part {xc7z010clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./VIP/VIP/directives.tcl"
csim_design
csynth_design
cosim_design -trace_level all -tool xsim
export_design -flow impl -rtl verilog -format ip_catalog
