// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Mon May 29 09:13:09 2023
// Host        : Marco running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub C:/Users/marco/Desktop/LAE/lae/fpga/labs/lab8/cores/PLL/PLL_stub.v
// Design      : PLL
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module PLL(CLK_OUT, LOCKED, CLK_IN)
/* synthesis syn_black_box black_box_pad_pin="CLK_OUT,LOCKED,CLK_IN" */;
  output CLK_OUT;
  output LOCKED;
  input CLK_IN;
endmodule
