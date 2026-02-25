-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Mon May 29 09:13:09 2023
-- Host        : Marco running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub C:/Users/marco/Desktop/LAE/lae/fpga/labs/lab8/cores/PLL/PLL_stub.vhdl
-- Design      : PLL
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity PLL is
  Port ( 
    CLK_OUT : out STD_LOGIC;
    LOCKED : out STD_LOGIC;
    CLK_IN : in STD_LOGIC
  );

end PLL;

architecture stub of PLL is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK_OUT,LOCKED,CLK_IN";
begin
end;
