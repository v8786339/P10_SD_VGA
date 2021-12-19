//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_ed1d.bd
//Design : bd_ed1d
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_ed1d,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_ed1d,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "zynq_sys_system_ila_1_0.hwdef" *) 
module bd_ed1d
   (clk,
    probe0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, CLK_DOMAIN zynq_sys_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 100000000, PHASE 0.000" *) input clk;
  input [23:0]probe0;

  wire clk_1;
  wire [23:0]probe0_1;

  assign clk_1 = clk;
  assign probe0_1 = probe0[23:0];
  bd_ed1d_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1));
endmodule
