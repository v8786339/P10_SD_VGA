// ==============================================================
// File generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ==============================================================

`timescale 1 ns / 1 ps
module vip1_m_top (
s_axi_CONTROL_BUS_AWADDR,
s_axi_CONTROL_BUS_AWVALID,
s_axi_CONTROL_BUS_AWREADY,
s_axi_CONTROL_BUS_WDATA,
s_axi_CONTROL_BUS_WSTRB,
s_axi_CONTROL_BUS_WVALID,
s_axi_CONTROL_BUS_WREADY,
s_axi_CONTROL_BUS_BRESP,
s_axi_CONTROL_BUS_BVALID,
s_axi_CONTROL_BUS_BREADY,
s_axi_CONTROL_BUS_ARADDR,
s_axi_CONTROL_BUS_ARVALID,
s_axi_CONTROL_BUS_ARREADY,
s_axi_CONTROL_BUS_RDATA,
s_axi_CONTROL_BUS_RRESP,
s_axi_CONTROL_BUS_RVALID,
s_axi_CONTROL_BUS_RREADY,
interrupt,
aresetn,
aclk,
src_axi0_TDATA,
src_axi0_TKEEP,
src_axi0_TSTRB,
src_axi0_TUSER,
src_axi0_TLAST,
src_axi0_TID,
src_axi0_TDEST,
src_axi0_TVALID,
src_axi0_TREADY,
dst_axi_TDATA,
dst_axi_TKEEP,
dst_axi_TSTRB,
dst_axi_TUSER,
dst_axi_TLAST,
dst_axi_TID,
dst_axi_TDEST,
dst_axi_TVALID,
dst_axi_TREADY
);

parameter C_S_AXI_CONTROL_BUS_ADDR_WIDTH = 4;
parameter C_S_AXI_CONTROL_BUS_DATA_WIDTH = 32;
parameter RESET_ACTIVE_LOW = 1;

input [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1:0] s_axi_CONTROL_BUS_AWADDR ;
input s_axi_CONTROL_BUS_AWVALID ;
output s_axi_CONTROL_BUS_AWREADY ;
input [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1:0] s_axi_CONTROL_BUS_WDATA ;
input [C_S_AXI_CONTROL_BUS_DATA_WIDTH/8 - 1:0] s_axi_CONTROL_BUS_WSTRB ;
input s_axi_CONTROL_BUS_WVALID ;
output s_axi_CONTROL_BUS_WREADY ;
output [2 - 1:0] s_axi_CONTROL_BUS_BRESP ;
output s_axi_CONTROL_BUS_BVALID ;
input s_axi_CONTROL_BUS_BREADY ;
input [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1:0] s_axi_CONTROL_BUS_ARADDR ;
input s_axi_CONTROL_BUS_ARVALID ;
output s_axi_CONTROL_BUS_ARREADY ;
output [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1:0] s_axi_CONTROL_BUS_RDATA ;
output [2 - 1:0] s_axi_CONTROL_BUS_RRESP ;
output s_axi_CONTROL_BUS_RVALID ;
input s_axi_CONTROL_BUS_RREADY ;
output interrupt ;

input aresetn ;

input aclk ;


input [24 - 1:0] src_axi0_TDATA ;
input [3 - 1:0] src_axi0_TKEEP ;
input [3 - 1:0] src_axi0_TSTRB ;
input [1 - 1:0] src_axi0_TUSER ;
input [1 - 1:0] src_axi0_TLAST ;
input [1 - 1:0] src_axi0_TID ;
input [1 - 1:0] src_axi0_TDEST ;
input src_axi0_TVALID ;
output src_axi0_TREADY ;


output [24 - 1:0] dst_axi_TDATA ;
output [3 - 1:0] dst_axi_TKEEP ;
output [3 - 1:0] dst_axi_TSTRB ;
output [1 - 1:0] dst_axi_TUSER ;
output [1 - 1:0] dst_axi_TLAST ;
output [1 - 1:0] dst_axi_TID ;
output [1 - 1:0] dst_axi_TDEST ;
output dst_axi_TVALID ;
input dst_axi_TREADY ;


wire [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1:0] s_axi_CONTROL_BUS_AWADDR;
wire s_axi_CONTROL_BUS_AWVALID;
wire s_axi_CONTROL_BUS_AWREADY;
wire [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1:0] s_axi_CONTROL_BUS_WDATA;
wire [C_S_AXI_CONTROL_BUS_DATA_WIDTH/8 - 1:0] s_axi_CONTROL_BUS_WSTRB;
wire s_axi_CONTROL_BUS_WVALID;
wire s_axi_CONTROL_BUS_WREADY;
wire [2 - 1:0] s_axi_CONTROL_BUS_BRESP;
wire s_axi_CONTROL_BUS_BVALID;
wire s_axi_CONTROL_BUS_BREADY;
wire [C_S_AXI_CONTROL_BUS_ADDR_WIDTH - 1:0] s_axi_CONTROL_BUS_ARADDR;
wire s_axi_CONTROL_BUS_ARVALID;
wire s_axi_CONTROL_BUS_ARREADY;
wire [C_S_AXI_CONTROL_BUS_DATA_WIDTH - 1:0] s_axi_CONTROL_BUS_RDATA;
wire [2 - 1:0] s_axi_CONTROL_BUS_RRESP;
wire s_axi_CONTROL_BUS_RVALID;
wire s_axi_CONTROL_BUS_RREADY;
wire interrupt;

wire aresetn;


wire sig_vip1_m_ap_start;
wire sig_vip1_m_ap_ready;
wire sig_vip1_m_ap_done;
wire sig_vip1_m_ap_idle;

wire sig_vip1_m_ap_rst_n;



vip1_m vip1_m_U(
    .ap_start(sig_vip1_m_ap_start),
    .ap_ready(sig_vip1_m_ap_ready),
    .ap_done(sig_vip1_m_ap_done),
    .ap_idle(sig_vip1_m_ap_idle),
    .ap_rst_n(sig_vip1_m_ap_rst_n),
    .ap_clk(aclk),
    .src_axi0_TDATA(src_axi0_TDATA),
    .src_axi0_TKEEP(src_axi0_TKEEP),
    .src_axi0_TSTRB(src_axi0_TSTRB),
    .src_axi0_TUSER(src_axi0_TUSER),
    .src_axi0_TLAST(src_axi0_TLAST),
    .src_axi0_TID(src_axi0_TID),
    .src_axi0_TDEST(src_axi0_TDEST),
    .src_axi0_TVALID(src_axi0_TVALID),
    .src_axi0_TREADY(src_axi0_TREADY),
    .dst_axi_TDATA(dst_axi_TDATA),
    .dst_axi_TKEEP(dst_axi_TKEEP),
    .dst_axi_TSTRB(dst_axi_TSTRB),
    .dst_axi_TUSER(dst_axi_TUSER),
    .dst_axi_TLAST(dst_axi_TLAST),
    .dst_axi_TID(dst_axi_TID),
    .dst_axi_TDEST(dst_axi_TDEST),
    .dst_axi_TVALID(dst_axi_TVALID),
    .dst_axi_TREADY(dst_axi_TREADY)
);

vip1_m_CONTROL_BUS_if #(
    .C_ADDR_WIDTH(C_S_AXI_CONTROL_BUS_ADDR_WIDTH),
    .C_DATA_WIDTH(C_S_AXI_CONTROL_BUS_DATA_WIDTH))
vip1_m_CONTROL_BUS_if_U(
    .ACLK(aclk),
    .ARESETN(aresetn),
    .I_ap_start(sig_vip1_m_ap_start),
    .O_ap_ready(sig_vip1_m_ap_ready),
    .O_ap_done(sig_vip1_m_ap_done),
    .O_ap_idle(sig_vip1_m_ap_idle),
    .AWADDR(s_axi_CONTROL_BUS_AWADDR),
    .AWVALID(s_axi_CONTROL_BUS_AWVALID),
    .AWREADY(s_axi_CONTROL_BUS_AWREADY),
    .WDATA(s_axi_CONTROL_BUS_WDATA),
    .WSTRB(s_axi_CONTROL_BUS_WSTRB),
    .WVALID(s_axi_CONTROL_BUS_WVALID),
    .WREADY(s_axi_CONTROL_BUS_WREADY),
    .BRESP(s_axi_CONTROL_BUS_BRESP),
    .BVALID(s_axi_CONTROL_BUS_BVALID),
    .BREADY(s_axi_CONTROL_BUS_BREADY),
    .ARADDR(s_axi_CONTROL_BUS_ARADDR),
    .ARVALID(s_axi_CONTROL_BUS_ARVALID),
    .ARREADY(s_axi_CONTROL_BUS_ARREADY),
    .RDATA(s_axi_CONTROL_BUS_RDATA),
    .RRESP(s_axi_CONTROL_BUS_RRESP),
    .RVALID(s_axi_CONTROL_BUS_RVALID),
    .RREADY(s_axi_CONTROL_BUS_RREADY),
    .interrupt(interrupt));

vip1_m_ap_rst_n_if #(
    .RESET_ACTIVE_LOW(RESET_ACTIVE_LOW))
ap_rst_n_if_U(
    .dout(sig_vip1_m_ap_rst_n),
    .din(aresetn));

endmodule
