`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2024 01:32:00 PM
// Design Name: 
// Module Name: acc_TB
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



module acc_TB(); 
	parameter half_cycle = 20; 
	reg clk, rst; 
	reg [7:0] b; 
	reg [19:0] din; 
	wire [21:0] dout; 
	
	ACC_unit_wrapper uut ( b, clk, din,dout, rst); 

	initial begin 
		clk = 0; 
		rst = 1; 
		b=11; 
		din=0; 
	end
	
always #half_cycle clk=!clk; 
	initial begin 
	#110 rst=0; 
	#40 din = 1; 
	#40 din = 2; 
	#40 din= 3; 
	#40 din = 4; 
	#40 din = -3;
	#40 din = 2; 
	#40 din= -5; 
	#40 din= -10; 
	#80 $finish;
	end 

endmodule
