-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
-- Date        : Tue Apr 30 21:06:50 2024
-- Host        : iresh running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub {c:/Users/iresh/OneDrive/Desktop/sem2/528
--               asic/ECE-428-Project/Verilog/project_1/project_1.gen/sources_1/bd/SIG/ip/SIG_ip_wrapper_0_0/SIG_ip_wrapper_0_0_stub.vhdl}
-- Design      : SIG_ip_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a12tcpg238-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity SIG_ip_wrapper_0_0 is
  Port ( 
    din : in STD_LOGIC_VECTOR ( 21 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sign : out STD_LOGIC;
    ovf : out STD_LOGIC
  );

end SIG_ip_wrapper_0_0;

architecture stub of SIG_ip_wrapper_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "din[21:0],addr[8:0],sign,ovf";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ip_wrapper,Vivado 2022.1.2";
begin
end;
