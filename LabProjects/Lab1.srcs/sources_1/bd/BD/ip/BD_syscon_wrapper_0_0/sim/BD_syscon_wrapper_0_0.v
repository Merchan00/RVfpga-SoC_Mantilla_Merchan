// (c) Copyright 1995-2022 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:syscon_wrapper:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module BD_syscon_wrapper_0_0 (
  i_clk,
  i_rst,
  gpio_irq,
  ptc_irq,
  o_timer_irq,
  i_ram_init_done,
  i_ram_init_error,
  o_nmi_vec,
  o_nmi_int,
  i_wb_adr,
  i_wb_dat,
  i_wb_sel,
  i_wb_we,
  i_wb_cyc,
  i_wb_stb,
  o_wb_rdt,
  o_wb_ack,
  AN,
  Digits_Bits
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_clk, ASSOCIATED_RESET i_rst, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN BD_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 i_clk CLK" *)
input wire i_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME i_rst, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 i_rst RST" *)
input wire i_rst;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gpio_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 gpio_irq INTERRUPT" *)
input wire gpio_irq;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME ptc_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 ptc_irq INTERRUPT" *)
input wire ptc_irq;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME o_timer_irq, SENSITIVITY LEVEL_HIGH, PortWidth 1" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:interrupt:1.0 o_timer_irq INTERRUPT" *)
output wire o_timer_irq;
input wire i_ram_init_done;
input wire i_ram_init_error;
output wire [31 : 0] o_nmi_vec;
output wire o_nmi_int;
input wire [31 : 0] i_wb_adr;
input wire [31 : 0] i_wb_dat;
input wire [3 : 0] i_wb_sel;
input wire i_wb_we;
input wire i_wb_cyc;
input wire i_wb_stb;
output wire [31 : 0] o_wb_rdt;
output wire o_wb_ack;
output wire [7 : 0] AN;
output wire [6 : 0] Digits_Bits;

  syscon_wrapper inst (
    .i_clk(i_clk),
    .i_rst(i_rst),
    .gpio_irq(gpio_irq),
    .ptc_irq(ptc_irq),
    .o_timer_irq(o_timer_irq),
    .i_ram_init_done(i_ram_init_done),
    .i_ram_init_error(i_ram_init_error),
    .o_nmi_vec(o_nmi_vec),
    .o_nmi_int(o_nmi_int),
    .i_wb_adr(i_wb_adr),
    .i_wb_dat(i_wb_dat),
    .i_wb_sel(i_wb_sel),
    .i_wb_we(i_wb_we),
    .i_wb_cyc(i_wb_cyc),
    .i_wb_stb(i_wb_stb),
    .o_wb_rdt(o_wb_rdt),
    .o_wb_ack(o_wb_ack),
    .AN(AN),
    .Digits_Bits(Digits_Bits)
  );
endmodule
