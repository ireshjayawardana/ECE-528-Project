`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/29/2024 09:36:03 PM
// Design Name: 
// Module Name: acc
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


module acc(
    input [19:0] din,
    input [7:0] b,
    input clk,
    input rst,
    output [21:0] dout
);

    reg [21:0] accReg, muxout;
    reg [21:0] dout;
    wire sel, en;
    wire [21:0] b_ext, sum;

    adder22 u1 (din,muxout,sum);
    acc_ctrl u2 (clk,rst,sel,en);

    assign b_ext = {{14{b[7]}},b};

    always @ (posedge clk) begin
        if (en)
            dout <= sum;
    end
    always @  (posedge clk)
    accReg <= sum;

    always @ (*) begin
        if (sel)
            muxout = b_ext;
        else
            muxout = accReg;
    end
endmodule

