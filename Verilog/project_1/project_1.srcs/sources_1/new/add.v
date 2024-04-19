`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/16/2024 06:17:31 PM
// Design Name: 
// Module Name: add
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


module add#(parameter WIDTH = 8)(
    input [WIDTH - 1:0] a,
    input [WIDTH - 1:0] b,
    output reg [WIDTH:0] sum
    );
    
   always @ (a or b)
   begin
        sum = a + b;
   end
endmodule
