// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2017.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="test_pattern1,hls_ip_2017_4,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z010clg400-2,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=4.264875,HLS_SYN_LAT=1232642,HLS_SYN_TPT=1232642,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=199,HLS_SYN_LUT=963}" *)

module test_pattern1 (
        src_axi0_TDATA,
        src_axi0_TKEEP,
        src_axi0_TSTRB,
        src_axi0_TUSER,
        src_axi0_TLAST,
        src_axi0_TID,
        src_axi0_TDEST,
        ap_clk,
        ap_rst_n,
        ap_start,
        src_axi0_TVALID,
        src_axi0_TREADY,
        ap_done,
        ap_ready,
        ap_idle
);


output  [23:0] src_axi0_TDATA;
output  [2:0] src_axi0_TKEEP;
output  [2:0] src_axi0_TSTRB;
output  [0:0] src_axi0_TUSER;
output  [0:0] src_axi0_TLAST;
output  [0:0] src_axi0_TID;
output  [0:0] src_axi0_TDEST;
input   ap_clk;
input   ap_rst_n;
input   ap_start;
output   src_axi0_TVALID;
input   src_axi0_TREADY;
output   ap_done;
output   ap_ready;
output   ap_idle;

reg    ap_rst_n_inv;
wire    Loop_loop_height1_pr_U0_ap_start;
wire    Loop_loop_height1_pr_U0_ap_done;
wire    Loop_loop_height1_pr_U0_ap_continue;
wire    Loop_loop_height1_pr_U0_ap_idle;
wire    Loop_loop_height1_pr_U0_ap_ready;
wire   [7:0] Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_din;
wire    Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_write;
wire   [7:0] Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_din;
wire    Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_write;
wire   [7:0] Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_din;
wire    Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_write;
reg    Mat2AXIvideo_U0_ap_start;
wire    Mat2AXIvideo_U0_ap_done;
wire    Mat2AXIvideo_U0_ap_continue;
wire    Mat2AXIvideo_U0_ap_idle;
wire    Mat2AXIvideo_U0_ap_ready;
wire    Mat2AXIvideo_U0_img_data_stream_0_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_1_V_read;
wire    Mat2AXIvideo_U0_img_data_stream_2_V_read;
wire   [23:0] Mat2AXIvideo_U0_src_axi0_TDATA;
wire    Mat2AXIvideo_U0_src_axi0_TVALID;
wire   [2:0] Mat2AXIvideo_U0_src_axi0_TKEEP;
wire   [2:0] Mat2AXIvideo_U0_src_axi0_TSTRB;
wire   [0:0] Mat2AXIvideo_U0_src_axi0_TUSER;
wire   [0:0] Mat2AXIvideo_U0_src_axi0_TLAST;
wire   [0:0] Mat2AXIvideo_U0_src_axi0_TID;
wire   [0:0] Mat2AXIvideo_U0_src_axi0_TDEST;
wire    ap_sync_continue;
wire    imag0_0_data_stream_s_full_n;
wire   [7:0] imag0_0_data_stream_s_dout;
wire    imag0_0_data_stream_s_empty_n;
wire    imag0_0_data_stream_1_full_n;
wire   [7:0] imag0_0_data_stream_1_dout;
wire    imag0_0_data_stream_1_empty_n;
wire    imag0_0_data_stream_2_full_n;
wire   [7:0] imag0_0_data_stream_2_dout;
wire    imag0_0_data_stream_2_empty_n;
wire    ap_sync_done;
wire    ap_sync_ready;
wire    Loop_loop_height1_pr_U0_start_full_n;
wire    Loop_loop_height1_pr_U0_start_write;
wire    Mat2AXIvideo_U0_start_full_n;
wire    Mat2AXIvideo_U0_start_write;

// power-on initialization
initial begin
#0 Mat2AXIvideo_U0_ap_start = 1'b0;
end

Loop_loop_height1_pr Loop_loop_height1_pr_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Loop_loop_height1_pr_U0_ap_start),
    .ap_done(Loop_loop_height1_pr_U0_ap_done),
    .ap_continue(Loop_loop_height1_pr_U0_ap_continue),
    .ap_idle(Loop_loop_height1_pr_U0_ap_idle),
    .ap_ready(Loop_loop_height1_pr_U0_ap_ready),
    .imag0_0_data_stream_0_V_din(Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_din),
    .imag0_0_data_stream_0_V_full_n(imag0_0_data_stream_s_full_n),
    .imag0_0_data_stream_0_V_write(Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_write),
    .imag0_0_data_stream_1_V_din(Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_din),
    .imag0_0_data_stream_1_V_full_n(imag0_0_data_stream_1_full_n),
    .imag0_0_data_stream_1_V_write(Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_write),
    .imag0_0_data_stream_2_V_din(Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_din),
    .imag0_0_data_stream_2_V_full_n(imag0_0_data_stream_2_full_n),
    .imag0_0_data_stream_2_V_write(Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_write)
);

Mat2AXIvideo Mat2AXIvideo_U0(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(Mat2AXIvideo_U0_ap_start),
    .ap_done(Mat2AXIvideo_U0_ap_done),
    .ap_continue(Mat2AXIvideo_U0_ap_continue),
    .ap_idle(Mat2AXIvideo_U0_ap_idle),
    .ap_ready(Mat2AXIvideo_U0_ap_ready),
    .img_data_stream_0_V_dout(imag0_0_data_stream_s_dout),
    .img_data_stream_0_V_empty_n(imag0_0_data_stream_s_empty_n),
    .img_data_stream_0_V_read(Mat2AXIvideo_U0_img_data_stream_0_V_read),
    .img_data_stream_1_V_dout(imag0_0_data_stream_1_dout),
    .img_data_stream_1_V_empty_n(imag0_0_data_stream_1_empty_n),
    .img_data_stream_1_V_read(Mat2AXIvideo_U0_img_data_stream_1_V_read),
    .img_data_stream_2_V_dout(imag0_0_data_stream_2_dout),
    .img_data_stream_2_V_empty_n(imag0_0_data_stream_2_empty_n),
    .img_data_stream_2_V_read(Mat2AXIvideo_U0_img_data_stream_2_V_read),
    .src_axi0_TDATA(Mat2AXIvideo_U0_src_axi0_TDATA),
    .src_axi0_TVALID(Mat2AXIvideo_U0_src_axi0_TVALID),
    .src_axi0_TREADY(src_axi0_TREADY),
    .src_axi0_TKEEP(Mat2AXIvideo_U0_src_axi0_TKEEP),
    .src_axi0_TSTRB(Mat2AXIvideo_U0_src_axi0_TSTRB),
    .src_axi0_TUSER(Mat2AXIvideo_U0_src_axi0_TUSER),
    .src_axi0_TLAST(Mat2AXIvideo_U0_src_axi0_TLAST),
    .src_axi0_TID(Mat2AXIvideo_U0_src_axi0_TID),
    .src_axi0_TDEST(Mat2AXIvideo_U0_src_axi0_TDEST)
);

fifo_w8_d1_A imag0_0_data_stream_s_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_din),
    .if_full_n(imag0_0_data_stream_s_full_n),
    .if_write(Loop_loop_height1_pr_U0_imag0_0_data_stream_0_V_write),
    .if_dout(imag0_0_data_stream_s_dout),
    .if_empty_n(imag0_0_data_stream_s_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_0_V_read)
);

fifo_w8_d1_A imag0_0_data_stream_1_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_din),
    .if_full_n(imag0_0_data_stream_1_full_n),
    .if_write(Loop_loop_height1_pr_U0_imag0_0_data_stream_1_V_write),
    .if_dout(imag0_0_data_stream_1_dout),
    .if_empty_n(imag0_0_data_stream_1_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_1_V_read)
);

fifo_w8_d1_A imag0_0_data_stream_2_U(
    .clk(ap_clk),
    .reset(ap_rst_n_inv),
    .if_read_ce(1'b1),
    .if_write_ce(1'b1),
    .if_din(Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_din),
    .if_full_n(imag0_0_data_stream_2_full_n),
    .if_write(Loop_loop_height1_pr_U0_imag0_0_data_stream_2_V_write),
    .if_dout(imag0_0_data_stream_2_dout),
    .if_empty_n(imag0_0_data_stream_2_empty_n),
    .if_read(Mat2AXIvideo_U0_img_data_stream_2_V_read)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        Mat2AXIvideo_U0_ap_start <= 1'b0;
    end else begin
        Mat2AXIvideo_U0_ap_start <= 1'b1;
    end
end

assign Loop_loop_height1_pr_U0_ap_continue = 1'b1;

assign Loop_loop_height1_pr_U0_ap_start = ap_start;

assign Loop_loop_height1_pr_U0_start_full_n = 1'b1;

assign Loop_loop_height1_pr_U0_start_write = 1'b0;

assign Mat2AXIvideo_U0_ap_continue = 1'b1;

assign Mat2AXIvideo_U0_start_full_n = 1'b1;

assign Mat2AXIvideo_U0_start_write = 1'b0;

assign ap_done = Mat2AXIvideo_U0_ap_done;

assign ap_idle = (Mat2AXIvideo_U0_ap_idle & Loop_loop_height1_pr_U0_ap_idle);

assign ap_ready = Mat2AXIvideo_U0_ap_done;

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign ap_sync_continue = 1'b1;

assign ap_sync_done = Mat2AXIvideo_U0_ap_done;

assign ap_sync_ready = ap_sync_done;

assign src_axi0_TDATA = Mat2AXIvideo_U0_src_axi0_TDATA;

assign src_axi0_TDEST = Mat2AXIvideo_U0_src_axi0_TDEST;

assign src_axi0_TID = Mat2AXIvideo_U0_src_axi0_TID;

assign src_axi0_TKEEP = Mat2AXIvideo_U0_src_axi0_TKEEP;

assign src_axi0_TLAST = Mat2AXIvideo_U0_src_axi0_TLAST;

assign src_axi0_TSTRB = Mat2AXIvideo_U0_src_axi0_TSTRB;

assign src_axi0_TUSER = Mat2AXIvideo_U0_src_axi0_TUSER;

assign src_axi0_TVALID = Mat2AXIvideo_U0_src_axi0_TVALID;

endmodule //test_pattern1