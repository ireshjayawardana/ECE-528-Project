//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
//Date        : Thu Apr 18 17:29:41 2024
//Host        : iresh running 64-bit major release  (build 9200)
//Command     : generate_target MAC.bd
//Design      : MAC
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "MAC,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=MAC,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "MAC.hwdef" *) 
module MAC
   (A,
    B,
    S);
  input [15:0]A;
  input [15:0]B;
  output [16:0]S;

  wire [15:0]A_1;
  wire [15:0]B_1;
  wire [16:0]add_0_sum;
  wire [15:0]mul_0_p;
  wire [15:0]mul_1_p;

  assign A_1 = A[15:0];
  assign B_1 = B[15:0];
  assign S[16:0] = add_0_sum;
  MAC_add_0_0 add_0
       (.a(mul_0_p),
        .b(mul_1_p),
        .sum(add_0_sum));
  MAC_mul_0_0 mul_0
       (.a(A_1[7:0]),
        .b(B_1[7:0]),
        .p(mul_0_p));
  MAC_mul_0_1 mul_1
       (.a(A_1[7:0]),
        .b(B_1[7:0]),
        .p(mul_1_p));
endmodule
