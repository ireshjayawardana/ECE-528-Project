`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/19/2024 09:24:19 AM
// Design Name: 
// Module Name: MAC_TB
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


module MAC_TB();

parameter half_cycle = 20;

reg [127:0] data_p[39:0];
reg [127:0] data_w[39:0];
wire  [19:0] sum;

reg [127:0] p,w;
reg [7:0] count;
reg clk;
wire clk2;
reg rst;

wire test;
integer outfile;

MAC uut (clk,rst,p,w,sum);

assign #2 clk2 = clk;



initial begin

    $readmemh("digits_hex.txt", data_p);
    $readmemh("weights_hex.txt", data_w);
    
    #30 rst = 1;
    #10 rst =  0;
    clk = 0;
    count = 0;
    end 
    
    always #half_cycle clk = ~clk;
    
    integer i;
    initial  begin
    outfile = $fopen("simout2.txt","w");
    for (i = 0; i < 40; i = i + 1) begin
      # half_cycle $fwrite(outfile, "%h", sum);
      # half_cycle count = count + 1;
      p = data_p[count];
      w = data_w[count];
      if (count > 40)
            count = 0;
    end
    $fclose(outfile);
    end
endmodule
