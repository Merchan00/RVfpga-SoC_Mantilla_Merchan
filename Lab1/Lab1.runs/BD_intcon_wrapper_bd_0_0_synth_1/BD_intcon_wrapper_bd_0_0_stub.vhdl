-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sun Mar  6 16:57:20 2022
-- Host        : DESKTOP-JE3GUPC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ BD_intcon_wrapper_bd_0_0_stub.vhdl
-- Design      : BD_intcon_wrapper_bd_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk_i_wrapper : in STD_LOGIC;
    rst_ni_wrapper : in STD_LOGIC;
    i_ifu_arid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_ifu_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_ifu_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_ifu_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_ifu_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_ifu_arlock : in STD_LOGIC;
    i_ifu_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_ifu_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_ifu_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_ifu_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_ifu_arvalid : in STD_LOGIC;
    i_ifu_rready : in STD_LOGIC;
    o_ifu_arready : out STD_LOGIC;
    o_ifu_rid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_ifu_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_ifu_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_ifu_rlast : out STD_LOGIC;
    o_ifu_rvalid : out STD_LOGIC;
    i_lsu_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_lsu_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_lsu_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_lsu_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_lsu_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_lsu_awlock : in STD_LOGIC;
    i_lsu_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_lsu_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_lsu_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_lsu_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_lsu_awvalid : in STD_LOGIC;
    i_lsu_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    i_lsu_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_lsu_wlast : in STD_LOGIC;
    i_lsu_wvalid : in STD_LOGIC;
    i_lsu_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_lsu_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_lsu_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_lsu_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_lsu_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_lsu_arlock : in STD_LOGIC;
    i_lsu_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_lsu_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_lsu_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_lsu_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_lsu_arvalid : in STD_LOGIC;
    i_lsu_bready : in STD_LOGIC;
    i_lsu_rready : in STD_LOGIC;
    o_lsu_awready : out STD_LOGIC;
    o_lsu_arready : out STD_LOGIC;
    o_lsu_wready : out STD_LOGIC;
    o_lsu_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_lsu_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_lsu_bvalid : out STD_LOGIC;
    o_lsu_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_lsu_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_lsu_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_lsu_rlast : out STD_LOGIC;
    o_lsu_rvalid : out STD_LOGIC;
    i_sb_awid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_sb_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_sb_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_sb_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_sb_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_sb_awlock : in STD_LOGIC;
    i_sb_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_sb_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_sb_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_sb_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_sb_awvalid : in STD_LOGIC;
    i_sb_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    i_sb_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_sb_wlast : in STD_LOGIC;
    i_sb_wvalid : in STD_LOGIC;
    o_sb_awready : out STD_LOGIC;
    i_sb_bready : in STD_LOGIC;
    i_sb_arid : in STD_LOGIC_VECTOR ( 0 to 0 );
    i_sb_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    i_sb_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    i_sb_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_sb_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_sb_arlock : in STD_LOGIC;
    i_sb_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_sb_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    i_sb_arregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_sb_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    i_sb_arvalid : in STD_LOGIC;
    o_sb_arready : out STD_LOGIC;
    o_sb_wready : out STD_LOGIC;
    o_sb_bid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_sb_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_sb_bvalid : out STD_LOGIC;
    o_sb_rid : out STD_LOGIC_VECTOR ( 0 to 0 );
    o_sb_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_sb_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_sb_rlast : out STD_LOGIC;
    o_sb_rvalid : out STD_LOGIC;
    i_sb_rready : in STD_LOGIC;
    o_ram_awid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    o_ram_awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_ram_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_ram_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_ram_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_ram_awlock : out STD_LOGIC;
    o_ram_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_ram_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_ram_awregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_ram_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_ram_awvalid : out STD_LOGIC;
    i_ram_awready : in STD_LOGIC;
    o_ram_arid : out STD_LOGIC_VECTOR ( 5 downto 0 );
    o_ram_araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    o_ram_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_ram_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_ram_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    o_ram_arlock : out STD_LOGIC;
    o_ram_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_ram_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    o_ram_arregion : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_ram_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    o_ram_arvalid : out STD_LOGIC;
    i_ram_arready : in STD_LOGIC;
    o_ram_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    o_ram_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    o_ram_wlast : out STD_LOGIC;
    o_ram_wvalid : out STD_LOGIC;
    i_ram_wready : in STD_LOGIC;
    i_ram_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    i_ram_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_ram_bvalid : in STD_LOGIC;
    o_ram_bready : out STD_LOGIC;
    i_ram_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    i_ram_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    i_ram_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    i_ram_rlast : in STD_LOGIC;
    i_ram_rvalid : in STD_LOGIC;
    o_ram_rready : out STD_LOGIC;
    wb_rom_adr_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_rom_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_rom_sel_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wb_rom_we_o : out STD_LOGIC;
    wb_rom_cyc_o : out STD_LOGIC;
    wb_rom_stb_o : out STD_LOGIC;
    wb_rom_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_rom_ack_i : in STD_LOGIC;
    wb_spi_flash_adr_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_spi_flash_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_spi_flash_sel_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wb_spi_flash_we_o : out STD_LOGIC;
    wb_spi_flash_cyc_o : out STD_LOGIC;
    wb_spi_flash_stb_o : out STD_LOGIC;
    wb_spi_flash_cti_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    wb_spi_flash_bte_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    wb_spi_flash_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_spi_flash_ack_i : in STD_LOGIC;
    wb_spi_flash_err_i : in STD_LOGIC;
    wb_spi_flash_rty_i : in STD_LOGIC;
    wb_sys_adr_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_sys_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_sys_sel_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wb_sys_we_o : out STD_LOGIC;
    wb_sys_cyc_o : out STD_LOGIC;
    wb_sys_stb_o : out STD_LOGIC;
    wb_sys_cti_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    wb_sys_bte_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    wb_sys_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_sys_ack_i : in STD_LOGIC;
    wb_sys_err_i : in STD_LOGIC;
    wb_sys_rty_i : in STD_LOGIC;
    wb_uart_adr_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_uart_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_uart_sel_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wb_uart_we_o : out STD_LOGIC;
    wb_uart_cyc_o : out STD_LOGIC;
    wb_uart_stb_o : out STD_LOGIC;
    wb_uart_cti_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    wb_uart_bte_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    wb_uart_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_uart_ack_i : in STD_LOGIC;
    wb_uart_err_i : in STD_LOGIC;
    wb_uart_rty_i : in STD_LOGIC;
    wb_gpio_adr_o : out STD_LOGIC_VECTOR ( 7 downto 0 );
    wb_gpio_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_gpio_sel_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wb_gpio_we_o : out STD_LOGIC;
    wb_gpio_cyc_o : out STD_LOGIC;
    wb_gpio_stb_o : out STD_LOGIC;
    wb_gpio_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_gpio_ack_i : in STD_LOGIC;
    wb_gpio_err_i : in STD_LOGIC;
    wb_ptc_adr_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_ptc_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_ptc_sel_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wb_ptc_we_o : out STD_LOGIC;
    wb_ptc_cyc_o : out STD_LOGIC;
    wb_ptc_stb_o : out STD_LOGIC;
    wb_ptc_cti_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    wb_ptc_bte_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    wb_ptc_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_ptc_ack_i : in STD_LOGIC;
    wb_ptc_err_i : in STD_LOGIC;
    wb_ptc_rty_i : in STD_LOGIC;
    wb_spi_accel_adr_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_spi_accel_dat_o : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_spi_accel_sel_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wb_spi_accel_we_o : out STD_LOGIC;
    wb_spi_accel_cyc_o : out STD_LOGIC;
    wb_spi_accel_stb_o : out STD_LOGIC;
    wb_spi_accel_cti_o : out STD_LOGIC_VECTOR ( 2 downto 0 );
    wb_spi_accel_bte_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    wb_spi_accel_dat_i : in STD_LOGIC_VECTOR ( 31 downto 0 );
    wb_spi_accel_ack_i : in STD_LOGIC;
    wb_spi_accel_err_i : in STD_LOGIC;
    wb_spi_accel_rty_i : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_i_wrapper,rst_ni_wrapper,i_ifu_arid[2:0],i_ifu_araddr[31:0],i_ifu_arlen[7:0],i_ifu_arsize[2:0],i_ifu_arburst[1:0],i_ifu_arlock,i_ifu_arcache[3:0],i_ifu_arprot[2:0],i_ifu_arregion[3:0],i_ifu_arqos[3:0],i_ifu_arvalid,i_ifu_rready,o_ifu_arready,o_ifu_rid[2:0],o_ifu_rdata[63:0],o_ifu_rresp[1:0],o_ifu_rlast,o_ifu_rvalid,i_lsu_awid[3:0],i_lsu_awaddr[31:0],i_lsu_awlen[7:0],i_lsu_awsize[2:0],i_lsu_awburst[1:0],i_lsu_awlock,i_lsu_awcache[3:0],i_lsu_awprot[2:0],i_lsu_awregion[3:0],i_lsu_awqos[3:0],i_lsu_awvalid,i_lsu_wdata[63:0],i_lsu_wstrb[7:0],i_lsu_wlast,i_lsu_wvalid,i_lsu_arid[3:0],i_lsu_araddr[31:0],i_lsu_arlen[7:0],i_lsu_arsize[2:0],i_lsu_arburst[1:0],i_lsu_arlock,i_lsu_arcache[3:0],i_lsu_arprot[2:0],i_lsu_arregion[3:0],i_lsu_arqos[3:0],i_lsu_arvalid,i_lsu_bready,i_lsu_rready,o_lsu_awready,o_lsu_arready,o_lsu_wready,o_lsu_bid[3:0],o_lsu_bresp[1:0],o_lsu_bvalid,o_lsu_rid[3:0],o_lsu_rdata[63:0],o_lsu_rresp[1:0],o_lsu_rlast,o_lsu_rvalid,i_sb_awid[0:0],i_sb_awaddr[31:0],i_sb_awlen[7:0],i_sb_awsize[2:0],i_sb_awburst[1:0],i_sb_awlock,i_sb_awcache[3:0],i_sb_awprot[2:0],i_sb_awregion[3:0],i_sb_awqos[3:0],i_sb_awvalid,i_sb_wdata[63:0],i_sb_wstrb[7:0],i_sb_wlast,i_sb_wvalid,o_sb_awready,i_sb_bready,i_sb_arid[0:0],i_sb_araddr[31:0],i_sb_arlen[7:0],i_sb_arsize[2:0],i_sb_arburst[1:0],i_sb_arlock,i_sb_arcache[3:0],i_sb_arprot[2:0],i_sb_arregion[3:0],i_sb_arqos[3:0],i_sb_arvalid,o_sb_arready,o_sb_wready,o_sb_bid[0:0],o_sb_bresp[1:0],o_sb_bvalid,o_sb_rid[0:0],o_sb_rdata[63:0],o_sb_rresp[1:0],o_sb_rlast,o_sb_rvalid,i_sb_rready,o_ram_awid[5:0],o_ram_awaddr[31:0],o_ram_awlen[7:0],o_ram_awsize[2:0],o_ram_awburst[1:0],o_ram_awlock,o_ram_awcache[3:0],o_ram_awprot[2:0],o_ram_awregion[3:0],o_ram_awqos[3:0],o_ram_awvalid,i_ram_awready,o_ram_arid[5:0],o_ram_araddr[31:0],o_ram_arlen[7:0],o_ram_arsize[2:0],o_ram_arburst[1:0],o_ram_arlock,o_ram_arcache[3:0],o_ram_arprot[2:0],o_ram_arregion[3:0],o_ram_arqos[3:0],o_ram_arvalid,i_ram_arready,o_ram_wdata[63:0],o_ram_wstrb[7:0],o_ram_wlast,o_ram_wvalid,i_ram_wready,i_ram_bid[5:0],i_ram_bresp[1:0],i_ram_bvalid,o_ram_bready,i_ram_rid[5:0],i_ram_rdata[63:0],i_ram_rresp[1:0],i_ram_rlast,i_ram_rvalid,o_ram_rready,wb_rom_adr_o[31:0],wb_rom_dat_o[31:0],wb_rom_sel_o[3:0],wb_rom_we_o,wb_rom_cyc_o,wb_rom_stb_o,wb_rom_dat_i[31:0],wb_rom_ack_i,wb_spi_flash_adr_o[31:0],wb_spi_flash_dat_o[31:0],wb_spi_flash_sel_o[3:0],wb_spi_flash_we_o,wb_spi_flash_cyc_o,wb_spi_flash_stb_o,wb_spi_flash_cti_o[2:0],wb_spi_flash_bte_o[1:0],wb_spi_flash_dat_i[31:0],wb_spi_flash_ack_i,wb_spi_flash_err_i,wb_spi_flash_rty_i,wb_sys_adr_o[31:0],wb_sys_dat_o[31:0],wb_sys_sel_o[3:0],wb_sys_we_o,wb_sys_cyc_o,wb_sys_stb_o,wb_sys_cti_o[2:0],wb_sys_bte_o[1:0],wb_sys_dat_i[31:0],wb_sys_ack_i,wb_sys_err_i,wb_sys_rty_i,wb_uart_adr_o[31:0],wb_uart_dat_o[31:0],wb_uart_sel_o[3:0],wb_uart_we_o,wb_uart_cyc_o,wb_uart_stb_o,wb_uart_cti_o[2:0],wb_uart_bte_o[1:0],wb_uart_dat_i[31:0],wb_uart_ack_i,wb_uart_err_i,wb_uart_rty_i,wb_gpio_adr_o[7:0],wb_gpio_dat_o[31:0],wb_gpio_sel_o[3:0],wb_gpio_we_o,wb_gpio_cyc_o,wb_gpio_stb_o,wb_gpio_dat_i[31:0],wb_gpio_ack_i,wb_gpio_err_i,wb_ptc_adr_o[31:0],wb_ptc_dat_o[31:0],wb_ptc_sel_o[3:0],wb_ptc_we_o,wb_ptc_cyc_o,wb_ptc_stb_o,wb_ptc_cti_o[2:0],wb_ptc_bte_o[1:0],wb_ptc_dat_i[31:0],wb_ptc_ack_i,wb_ptc_err_i,wb_ptc_rty_i,wb_spi_accel_adr_o[31:0],wb_spi_accel_dat_o[31:0],wb_spi_accel_sel_o[3:0],wb_spi_accel_we_o,wb_spi_accel_cyc_o,wb_spi_accel_stb_o,wb_spi_accel_cti_o[2:0],wb_spi_accel_bte_o[1:0],wb_spi_accel_dat_i[31:0],wb_spi_accel_ack_i,wb_spi_accel_err_i,wb_spi_accel_rty_i";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "intcon_wrapper_bd,Vivado 2020.2";
begin
end;
