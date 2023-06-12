`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2023 17:25:02
// Design Name: 
// Module Name: D_FLIPFLOP
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


module D_FLIPFLOP(
    input d,
    input clk,
    input reset,
    output reg q
    );
 always@(posedge clk)
 begin 
 if(reset==1'b1)
 q=1'b0;
 else
 q=d;
 end
endmodule
