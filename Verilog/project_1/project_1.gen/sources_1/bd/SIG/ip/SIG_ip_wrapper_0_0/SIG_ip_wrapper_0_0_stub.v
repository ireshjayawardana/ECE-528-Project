// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
// Date        : Tue Apr 30 21:06:50 2024
// Host        : iresh running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/iresh/OneDrive/Desktop/sem2/528
//               asic/ECE-428-Project/Verilog/project_1/project_1.gen/sources_1/bd/SIG/ip/SIG_ip_wrapper_0_0/SIG_ip_wrapper_0_0_stub.v}
// Design      : SIG_ip_wrapper_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a12tcpg238-3
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ip_wrapper,Vivado 2022.1.2" *)
module SIG_ip_wrapper_0_0(din, addr, sign, ovf)
/* synthesis syn_black_box black_box_pad_pin="din[21:0],addr[8:0],sign,ovf" */;
  input [21:0]din;
  output [8:0]addr;
  output sign;
  output ovf;
endmodule
