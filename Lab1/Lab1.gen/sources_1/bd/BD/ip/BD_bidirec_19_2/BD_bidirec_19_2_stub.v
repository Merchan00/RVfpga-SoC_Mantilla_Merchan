// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sun Mar  6 17:03:59 2022
// Host        : DESKTOP-JE3GUPC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub {c:/Users/Usuario/Documents/Noveno Semestre/Arquitectura de
//               computadores/RVfpgaSoC-v1.0/RVfpgaSoC/Labs/LabProjects/Lab1.gen/sources_1/bd/BD/ip/BD_bidirec_19_2/BD_bidirec_19_2_stub.v}
// Design      : BD_bidirec_19_2
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bidirec,Vivado 2020.2" *)
module BD_bidirec_19_2(oe, inp, outp, bidir)
/* synthesis syn_black_box black_box_pad_pin="oe,inp,outp,bidir" */;
  input oe;
  input inp;
  output outp;
  output bidir;
endmodule
