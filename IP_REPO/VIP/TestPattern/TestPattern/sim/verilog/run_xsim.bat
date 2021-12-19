
call D:/Xilinx/Vivado/2017.4/bin/xelab xil_defaultlib.apatb_test_pattern1_top glbl -prj test_pattern1.prj -L smartconnect_v1_0 -L axi_protocol_checker_v1_1_12 -L axi_protocol_checker_v1_1_13 -L axis_protocol_checker_v1_1_11 -L axis_protocol_checker_v1_1_12 -L xil_defaultlib -L unisims_ver --initfile "D:/Xilinx/Vivado/2017.4/data/xsim/ip/xsim_ip.ini" --lib "ieee_proposed=./ieee_proposed" -s test_pattern1 
call D:/Xilinx/Vivado/2017.4/bin/xsim --noieeewarnings test_pattern1 -tclbatch test_pattern1.tcl

