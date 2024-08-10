//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Sat May  4 13:29:17 2024
//Host        : iresh running 64-bit major release  (build 9200)
//Command     : generate_target ACC_MAC_wrapper.bd
//Design      : ACC_MAC_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ACC_MAC_wrapper
   (b,
    clk,
    data_w,
    dout,
    pata_p,
    rst,
    sumOUT);
  input [7:0]b;
  input clk;
  input [127:0]data_w;
  output [21:0]dout;
  input [127:0]pata_p;
  input rst;
  output [19:0]sumOUT;

  wire [7:0]b;
  wire clk;
  wire [127:0]data_w;
  wire [21:0]dout;
  wire [127:0]pata_p;
  wire rst;
  wire [19:0]sumOUT;

  ACC_MAC ACC_MAC_i
       (.b(b),
        .clk(clk),
        .data_w(data_w),
        .dout(dout),
        .pata_p(pata_p),
        .rst(rst),
        .sumOUT(sumOUT));
endmodule
