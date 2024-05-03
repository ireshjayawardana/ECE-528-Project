//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
//Date        : Tue Apr 30 21:05:33 2024
//Host        : iresh running 64-bit major release  (build 9200)
//Command     : generate_target SIG_wrapper.bd
//Design      : SIG_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module SIG_wrapper
   (din,
    dout);
  input [21:0]din;
  output [7:0]dout;

  wire [21:0]din;
  wire [7:0]dout;

  SIG SIG_i
       (.din(din),
        .dout(dout));
endmodule
