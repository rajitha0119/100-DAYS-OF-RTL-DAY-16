`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.06.2023 17:31:59
// Design Name: 
// Module Name: D_FLIPFLOP_tb
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


module D_FLIPFLOP_tb();
reg d;
reg clk;
reg reset;
wire q;

D_FLIPFLOP aab(.q(q),.d(d),.clk(clk),.reset(reset));
initial
$monitor(q,clk,d);
initial
 begin
 clk=0;
forever #10 clk=~clk;
 end
 initial
 begin
 d=1'b0;
 clk=1'b0;
 reset=1'b1;
 #10 reset=1'b0;
 #122 ; forever #40 d=~d;
 end
 always #10 clk=~clk;



endmodule
