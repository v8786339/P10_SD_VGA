`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/13 15:08:28
// Design Name: 
// Module Name: TEST
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


module      VGA_OUT     (
                        input vid_clk,
                        input vid_hsync,
                        input vid_vsync,
                        input vid_hblank,
                        input vid_vblank,
                        input [23:0] vid_data,   
                        
                        output vga_clk,
                        output vga_hsync,   
                        output vga_vsync,
                        output vga_blank,
                        output [7:0] vga_r,
                        output [7:0] vga_g,
                        output [7:0] vga_b                 
                        );
assign vga_clk   = ~vid_clk;
assign vga_hsync = vid_hsync;
assign vga_vsync = vid_vsync;
assign vga_blank = ~(vid_hblank | vid_vblank);
assign vga_r     = vid_data[23:16];
assign vga_g     = vid_data[15:8];  
assign vga_b     = vid_data[7:0];                       
                        
                        

endmodule
