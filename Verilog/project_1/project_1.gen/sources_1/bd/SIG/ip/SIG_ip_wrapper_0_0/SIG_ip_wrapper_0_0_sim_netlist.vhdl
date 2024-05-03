-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2022.1.2 (win64) Build 3605665 Fri Aug  5 22:53:37 MDT 2022
-- Date        : Tue Apr 30 21:06:50 2024
-- Host        : iresh running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/iresh/OneDrive/Desktop/sem2/528
--               asic/ECE-428-Project/Verilog/project_1/project_1.gen/sources_1/bd/SIG/ip/SIG_ip_wrapper_0_0/SIG_ip_wrapper_0_0_sim_netlist.vhdl}
-- Design      : SIG_ip_wrapper_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a12tcpg238-3
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity SIG_ip_wrapper_0_0 is
  port (
    din : in STD_LOGIC_VECTOR ( 21 downto 0 );
    addr : out STD_LOGIC_VECTOR ( 8 downto 0 );
    sign : out STD_LOGIC;
    ovf : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of SIG_ip_wrapper_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of SIG_ip_wrapper_0_0 : entity is "SIG_ip_wrapper_0_0,ip_wrapper,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of SIG_ip_wrapper_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of SIG_ip_wrapper_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of SIG_ip_wrapper_0_0 : entity is "ip_wrapper,Vivado 2022.1.2";
end SIG_ip_wrapper_0_0;

architecture STRUCTURE of SIG_ip_wrapper_0_0 is
  signal \^din\ : STD_LOGIC_VECTOR ( 21 downto 0 );
  signal ovf_INST_0_i_1_n_0 : STD_LOGIC;
  signal ovf_INST_0_i_2_n_0 : STD_LOGIC;
  signal ovf_INST_0_i_3_n_0 : STD_LOGIC;
  signal ovf_INST_0_i_4_n_0 : STD_LOGIC;
begin
  \^din\(21 downto 5) <= din(21 downto 5);
  addr(8 downto 0) <= \^din\(13 downto 5);
  sign <= \^din\(21);
ovf_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FF01FF01FFFF00"
    )
        port map (
      I0 => ovf_INST_0_i_1_n_0,
      I1 => ovf_INST_0_i_2_n_0,
      I2 => \^din\(13),
      I3 => \^din\(21),
      I4 => ovf_INST_0_i_3_n_0,
      I5 => ovf_INST_0_i_4_n_0,
      O => ovf
    );
ovf_INST_0_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^din\(6),
      I1 => \^din\(5),
      I2 => \^din\(8),
      I3 => \^din\(7),
      O => ovf_INST_0_i_1_n_0
    );
ovf_INST_0_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^din\(10),
      I1 => \^din\(9),
      I2 => \^din\(12),
      I3 => \^din\(11),
      O => ovf_INST_0_i_2_n_0
    );
ovf_INST_0_i_3: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \^din\(20),
      I1 => \^din\(15),
      I2 => \^din\(14),
      O => ovf_INST_0_i_3_n_0
    );
ovf_INST_0_i_4: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \^din\(17),
      I1 => \^din\(16),
      I2 => \^din\(19),
      I3 => \^din\(18),
      O => ovf_INST_0_i_4_n_0
    );
end STRUCTURE;
