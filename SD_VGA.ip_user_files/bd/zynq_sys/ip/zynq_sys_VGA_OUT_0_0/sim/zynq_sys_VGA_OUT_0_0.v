// (c) Copyright 1995-2020 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: deng:user:VGA_OUT:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module zynq_sys_VGA_OUT_0_0 (
  vid_clk,
  vid_hsync,
  vid_vsync,
  vid_hblank,
  vid_vblank,
  vid_data,
  vga_clk,
  vga_hsync,
  vga_vsync,
  vga_blank,
  vga_r,
  vga_g,
  vga_b
);

input wire vid_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in HSYNC" *)
input wire vid_hsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in VSYNC" *)
input wire vid_vsync;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in HBLANK" *)
input wire vid_hblank;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in VBLANK" *)
input wire vid_vblank;
(* X_INTERFACE_INFO = "xilinx.com:interface:vid_io:1.0 vid_io_in DATA" *)
input wire [23 : 0] vid_data;
output wire vga_clk;
output wire vga_hsync;
output wire vga_vsync;
output wire vga_blank;
output wire [7 : 0] vga_r;
output wire [7 : 0] vga_g;
output wire [7 : 0] vga_b;

  VGA_OUT inst (
    .vid_clk(vid_clk),
    .vid_hsync(vid_hsync),
    .vid_vsync(vid_vsync),
    .vid_hblank(vid_hblank),
    .vid_vblank(vid_vblank),
    .vid_data(vid_data),
    .vga_clk(vga_clk),
    .vga_hsync(vga_hsync),
    .vga_vsync(vga_vsync),
    .vga_blank(vga_blank),
    .vga_r(vga_r),
    .vga_g(vga_g),
    .vga_b(vga_b)
  );
endmodule
