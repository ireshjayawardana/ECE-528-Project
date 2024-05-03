//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Tue Apr 30 22:07:24 2024
//Host        : iresh running 64-bit major release  (build 9200)
//Command     : generate_target ACC_unit_wrapper.bd
//Design      : ACC_unit_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ACC_unit_wrapper
   (b,
    clk,
    din,
    dout,
    rst);
  input [7:0]b;
  input clk;
  input [19:0]din;
  output [21:0]dout;
  input rst;

  wire [7:0]b;
  wire clk;
  wire [19:0]din;
  wire [21:0]dout;
  wire rst;

  ACC_unit ACC_unit_i
       (.b(b),
        .clk(clk),
        .din(din),
        .dout(dout),
        .rst(rst));
endmodule
