`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/30/2024 05:10:49 PM
// Design Name: 
// Module Name: ip_wrapper
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


module ip_wrapper(
    input [21:0] din,
    output [8:0] addr,
    output sign, ovf
    );
    
    wire s9_0, s9_1;
    assign sign = din[21];
    assign addr = din [14:5];
    
    assign s9_0 = din[20] | din[19] |din[18] |din[17] |din[16] |din[15] |din[14] ;
    assign s9_1 = ~(din[20] | din[19] |din[18] |din[17] |din[16] |din[15] |din[14]) | ~( din[13] | din[12] | din[11] | din[10] | din[9] | din[8]| din[7] | din[6]| din[5]);
    
    assign ovf = din[21] ? s9_1 : s9_0 ;
endmodule
