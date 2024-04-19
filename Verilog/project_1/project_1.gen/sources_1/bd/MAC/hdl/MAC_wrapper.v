//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
//Date        : Thu Apr 18 17:29:41 2024
//Host        : iresh running 64-bit major release  (build 9200)
//Command     : generate_target MAC_wrapper.bd
//Design      : MAC_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module MAC_wrapper
   (A,
    B,
    S);
  input [15:0]A;
  input [15:0]B;
  output [16:0]S;

  wire [15:0]A;
  wire [15:0]B;
  wire [16:0]S;

  MAC MAC_i
       (.A(A),
        .B(B),
        .S(S));
endmodule
