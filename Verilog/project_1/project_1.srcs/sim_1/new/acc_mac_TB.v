`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2024 03:24:09 PM
// Design Name: 
// Module Name: acc_mac_TB
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
module ACC_MAC_tb(); 
	parameter half_cycle = 20; 
	reg [127:0] data_p[39:0]; 
	reg [127:0] data_w[39:0]; 
	wire [21:0] dout; 
	wire [19:0] sumOUT;
	reg [127:0] p, w; 
	reg [7:0] b; 
	reg [7:0] count; 
	reg clk, rst1, rst2; 
	wire clk2;
	
	integer outfile; 
	integer outfile2; 
	assign #2 clk2=clk; // delayed clk 
	ACC_MAC_wrapper uut (b, clk2, w, dout, p, rst2, sumOUT);  
	
	initial begin 
		$readmemh("digits_hex.txt", data_p); 
		$readmemh("weights_hex.txt", data_w); 
		outfile = $fopen("./simout.txt","w"); 
		outfile2 = $fopen("./macout.txt", "w"); 
		clk=0; 
		count=0; 
		rst1=1; 
		rst2=1; 
		b=11; 
		#100 rst1=0; 
		end

    always #half_cycle clk=!clk; 

	// write acc output to file always 
	always @(posedge clk) begin
		if ((count>7)&(count[1:0]==2'b00)) 
			$fdisplay(outfile, "%h\n", dout);
    end
	// write mac output to file always 
	always @(posedge clk) begin
		if(count>3) 
			$fdisplay(outfile2, "%h\n", sumOUT);
    end

always @(posedge clk2) begin 
	p=data_p[count]; 
	w=data_w[count];

	
	if (!rst1) begin 
		count= count+1; 
		if (count==4) 
			rst2 = 0; 
		if (count==45) begin 
			$fclose(outfile); 
			$fclose(outfile2);
			$finish; 			
		end 
	end 
end 

endmodule
