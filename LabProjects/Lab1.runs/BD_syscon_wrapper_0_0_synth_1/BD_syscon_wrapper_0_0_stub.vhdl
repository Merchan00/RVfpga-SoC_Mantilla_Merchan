-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Mar  7 08:47:04 2022
-- Host        : DESKTOP-JE3GUPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_syscon_wrapper_0_0_stub.vhdl
-- Design      : BD_syscon_wrapper_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    gpio_irq : in STD_LOGIC;
    ptc_irq : in STD_LOGIC;
    o_timer_irq : out STD_LOGIC;
    i_ram_init_done : in STD_LOGIC;
    i_ram_init_error : in STD_LOGIC;
    o_nmi_vec : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_nmi_int : out STD_LOGIC;
    i_wb_adr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_wb_dat : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_wb_sel : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_wb_we : in STD_LOGIC;
    i_wb_cyc : in STD_LOGIC;
    i_wb_stb : in STD_LOGIC;
    o_wb_rdt : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_wb_ack : out STD_LOGIC;
    AN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    Digits_Bits : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk,i_rst,gpio_irq,ptc_irq,o_timer_irq,i_ram_init_done,i_ram_init_error,o_nmi_vec[31:0],o_nmi_int,i_wb_adr[31:0],i_wb_dat[31:0],i_wb_sel[3:0],i_wb_we,i_wb_cyc,i_wb_stb,o_wb_rdt[31:0],o_wb_ack,AN[7:0],Digits_Bits[6:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "syscon_wrapper,Vivado 2019.2";
begin
end;
