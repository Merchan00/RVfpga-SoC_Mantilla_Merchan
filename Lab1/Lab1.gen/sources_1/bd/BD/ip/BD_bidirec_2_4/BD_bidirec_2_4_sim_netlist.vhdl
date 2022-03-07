-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Mar  6 17:13:28 2022
-- Host        : DESKTOP-JE3GUPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim {c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de
--               computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_2_4/BD_bidirec_2_4_sim_netlist.vhdl}
-- Design      : BD_bidirec_2_4
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity BD_bidirec_2_4 is
  port (
    oe : in STD_LOGIC;
    inp : in STD_LOGIC;
    outp : out STD_LOGIC;
    bidir : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of BD_bidirec_2_4 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of BD_bidirec_2_4 : entity is "BD_bidirec_2_4,bidirec,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of BD_bidirec_2_4 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of BD_bidirec_2_4 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of BD_bidirec_2_4 : entity is "bidirec,Vivado 2020.2";
end BD_bidirec_2_4;

architecture STRUCTURE of BD_bidirec_2_4 is
  signal \^bidir\ : STD_LOGIC;
begin
  bidir <= \^bidir\;
  outp <= \^bidir\;
bidir_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => inp,
      I1 => oe,
      O => \^bidir\
    );
end STRUCTURE;
