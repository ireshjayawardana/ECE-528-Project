//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
//Date        : Tue Apr 30 21:05:33 2024
//Host        : iresh running 64-bit major release  (build 9200)
//Command     : generate_target SIG.bd
//Design      : SIG
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "SIG,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=SIG,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "SIG.hwdef" *) 
module SIG
   (din,
    dout);
  input [21:0]din;
  output [7:0]dout;

  wire [21:0]din_1;
  wire [8:0]ip_wrapper_0_addr;
  wire ip_wrapper_0_ovf;
  wire ip_wrapper_0_sign;
  wire [7:0]sigmoid_0_data;

  assign din_1 = din[21:0];
  assign dout[7:0] = sigmoid_0_data;
  SIG_ip_wrapper_0_0 ip_wrapper_0
       (.addr(ip_wrapper_0_addr),
        .din(din_1),
        .ovf(ip_wrapper_0_ovf),
        .sign(ip_wrapper_0_sign));
  SIG_sigmoid_0_0 sigmoid_0
       (.addr(ip_wrapper_0_addr),
        .data(sigmoid_0_data),
        .ovf(ip_wrapper_0_ovf),
        .sign(ip_wrapper_0_sign));
endmodule
