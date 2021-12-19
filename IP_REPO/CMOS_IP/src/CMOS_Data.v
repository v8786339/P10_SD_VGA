`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/09 17:45:27
// Design Name: 
// Module Name: CMOS_Data
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module      CMOS_Data      (
                            // interface from camera
                            input       cmos_pclk,//input pixel clock.
                            input       cmos_href,//input pixel hs signal.
                            input       cmos_vsync,//input pixel vs signal.
                            input [7:0] cmos_data,//data.
                            output      cmos_rst_n,
                            //to video in to axi4_stream
                            output [31:0] vid_data,
                            output        vid_active_video,
                            output        vid_vblank,
                            output        vid_hblank,
                            output        vid_vsync,
                            output        vid_hsync,
                            output        vid_field_in,
                            
                            output        vid_io_in_clk,
                            output        vid_io_in_ce                            
                            );
reg                        cmos_href_r;                            
reg                        cmos_vsync_r;
reg          [7:0]         cmos_data_r;



assign cmos_rst_n = 1'b1;

assign vid_io_in_clk = cmos_pclk;   
assign vid_io_in_ce  = 1'b1;

assign vid_vblank    = 1'b0;
assign vid_hblank    = 1'b0;

assign vid_field_in  = 1'b0; 

assign vid_active_video  = cmos_href_r;
assign vid_hsync         = cmos_href_r;
assign vid_vsync         = cmos_vsync_r;
assign vid_data          = {cmos_data_r,cmos_data_r,cmos_data_r,8'h00};


always @ (posedge cmos_pclk)
begin
    cmos_data_r  <= cmos_data;
    cmos_href_r <= cmos_href;
    cmos_vsync_r <= cmos_vsync;
end    

endmodule
