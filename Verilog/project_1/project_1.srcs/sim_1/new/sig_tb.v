`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/01/2024 08:43:39 PM
// Design Name: 
// Module Name: sig_tb
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


module sig_tb();

reg [21:0]din;
wire [7:0] dout;

SIG_wrapper uut (din,dout);

initial begin
#0 din = 21'b0000000000111111111111;
#10 din = 21'b00000001000111111111111;
#20 din = 21'b00000100000111111111111;
 
 end
 
endmodule
