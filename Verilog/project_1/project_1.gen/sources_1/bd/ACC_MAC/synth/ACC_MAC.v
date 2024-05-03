//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Wed May  1 20:46:57 2024
//Host        : iresh running 64-bit major release  (build 9200)
//Command     : generate_target ACC_MAC.bd
//Design      : ACC_MAC
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ACC_MAC,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ACC_MAC,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ACC_MAC.hwdef" *) 
module ACC_MAC
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

  wire [21:0]ACC_unit_wrapper_0_dout;
  wire [19:0]MAC_0_sum;
  wire Net;
  wire Net1;
  wire [7:0]b_1;
  wire [127:0]data_w_1;
  wire [127:0]pata_p_1;

  assign Net = clk;
  assign Net1 = rst;
  assign b_1 = b[7:0];
  assign data_w_1 = data_w[127:0];
  assign dout[21:0] = ACC_unit_wrapper_0_dout;
  assign pata_p_1 = pata_p[127:0];
  assign sumOUT[19:0] = MAC_0_sum;
  ACC_MAC_ACC_unit_wrapper_0_0 ACC_unit_wrapper_0
       (.b(b_1),
        .clk(Net),
        .din(MAC_0_sum),
        .dout(ACC_unit_wrapper_0_dout),
        .rst(Net1));
  ACC_MAC_MAC_0_0 MAC_0
       (.clk(Net),
        .data_p(pata_p_1),
        .data_w(data_w_1),
        .rst(Net1),
        .sum(MAC_0_sum));
endmodule
