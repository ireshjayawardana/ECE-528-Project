`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/18/2024 08:17:10 PM
// Design Name: 
// Module Name: MAC
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


module MAC(
    input clk,rst,
    input signed [127:0] data_p,
    input signed [127:0] data_w,
    output reg signed [19:0] sum

);
    wire [255:0] Mul_out;
    wire [135:0] l1_sum;
    wire [71:0] l2_sum;
    wire [37:0] l3_sum;
    //for reg
    reg [255:0] Mul_out_reg;
    reg [135:0] l1_sum_reg;
    reg [71:0] l2_sum_reg;
    reg [37:0] l3_sum_reg;

    reg [127:0] data_p_reg;
    reg [127:0] data_w_reg;
    wire [19:0] sum_reg;

    always @ (posedge clk) begin
        if (rst) begin
            data_p_reg <= 0;
            data_w_reg <= 0;
            sum <= 0;
            Mul_out_reg <= 0;
        end
        else begin
            data_p_reg <= data_p;
            data_w_reg <= data_w;
            sum <= sum_reg;
            Mul_out_reg <= Mul_out;
        end
    end
    genvar i;
    generate
        for (i = 0 ; i < 16 ; i = i + 1) begin
            mul mul_(.a(data_p_reg[((i+1) * 8) -1 : i * 8 ]) ,.b(data_w_reg[((i+1) * 8) -1 : i * 8]),.p(Mul_out[ ((i+1) * 16) -1 : i * 16]));
        end
    endgenerate

    //    genvar j;
    //    generate 
    //        for (j = 0 ; j< 8 ; j = j + 1) begin 
    //            add #(.WIDTH(16)) add_ (Mul_out[(j * 32) + 15 : j * 32], Mul_out[((j+1) * 32) -1 : ((j+1) * 32) - 1 ], l1_sum[((j+1) * 17) -1 : j * 17]);
    //           end 
    //    endgenerate
    add #(.WIDTH(16)) add_16_1 (Mul_out_reg[15:0],Mul_out_reg[31:16], l1_sum[16:0]);
    add #(.WIDTH(16)) add_16_2 (Mul_out_reg[47:32],Mul_out_reg[63:48], l1_sum[33:17]);
    add #(.WIDTH(16)) add_16_3 (Mul_out_reg[79:64],Mul_out_reg[95:80], l1_sum[50:34]);
    add #(.WIDTH(16)) add_16_4 (Mul_out_reg[111:96],Mul_out_reg[127:112], l1_sum[67:51]);
    add #(.WIDTH(16)) add_16_5 (Mul_out_reg[143:128],Mul_out_reg[159:144], l1_sum[84:68]);
    add #(.WIDTH(16)) add_16_6 (Mul_out_reg[175:160],Mul_out_reg[191:176], l1_sum[101:85]);
    add #(.WIDTH(16)) add_16_7 (Mul_out_reg[207:192],Mul_out_reg[223:208], l1_sum[118:102]);
    add #(.WIDTH(16)) add_16_8 (Mul_out_reg[239:224],Mul_out_reg[255:240], l1_sum[135:119]);

    add #(.WIDTH(17)) add_17_1 (l1_sum[16:0],l1_sum[33:17], l2_sum[17:0]);
    add #(.WIDTH(17)) add_17_2 (l1_sum[50:34],l1_sum[67:51], l2_sum[35:18]);
    add #(.WIDTH(17)) add_17_3 (l1_sum[84:68],l1_sum[101:85], l2_sum[53:36]);
    add #(.WIDTH(17)) add_17_4 (l1_sum[118:102],l1_sum[135:119], l2_sum[71:54]);

    add #(.WIDTH(18)) add_18_1 (l2_sum[17:0],l2_sum[35:18], l3_sum[18:0]);
    add #(.WIDTH(18)) add_18_2 (l2_sum[53:36],l2_sum[71:54], l3_sum[37:19]);

    add #(.WIDTH(19)) add_19_1 (l3_sum[18:0],l3_sum[37:19], sum_reg[19:0]);


endmodule
