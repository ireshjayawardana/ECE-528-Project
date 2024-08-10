//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
//Date        : Sat May  4 13:26:47 2024
//Host        : iresh running 64-bit major release  (build 9200)
//Command     : generate_target ACC_unit.bd
//Design      : ACC_unit
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "ACC_unit,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=ACC_unit,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=Hierarchical}" *) (* HW_HANDOFF = "ACC_unit.hwdef" *) 
module ACC_unit
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

  wire [21:0]acc_0_dout;
  wire acc_ctrl_0_en;
  wire acc_ctrl_0_sel;
  wire [7:0]b_1;
  wire clk_1;
  wire [19:0]din_1;
  wire rst_1;

  assign b_1 = b[7:0];
  assign clk_1 = clk;
  assign din_1 = din[19:0];
  assign dout[21:0] = acc_0_dout;
  assign rst_1 = rst;
  ACC_unit_acc_0_0 acc_0
       (.b(b_1),
        .clk(clk_1),
        .din(din_1),
        .dout(acc_0_dout),
        .en(acc_ctrl_0_en),
        .rst(rst_1),
        .sel(acc_ctrl_0_sel));
  ACC_unit_acc_ctrl_0_0 acc_ctrl_0
       (.clk(clk_1),
        .en(acc_ctrl_0_en),
        .rst(rst_1),
        .sel(acc_ctrl_0_sel));
endmodule
