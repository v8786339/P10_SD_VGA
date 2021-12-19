//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_ed1d_wrapper.bd
//Design : bd_ed1d_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_ed1d_wrapper
   (clk,
    probe0);
  input clk;
  input [23:0]probe0;

  wire clk;
  wire [23:0]probe0;

  bd_ed1d bd_ed1d_i
       (.clk(clk),
        .probe0(probe0));
endmodule
