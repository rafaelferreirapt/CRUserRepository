--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.1 (lin64) Build 1538259 Fri Apr  8 15:45:23 MDT 2016
--Date        : Fri May 13 00:29:06 2016
--Host        : ubuntu running 64-bit Ubuntu 14.04.1 LTS
--Command     : generate_target DMB1_wrapper.bd
--Design      : DMB1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity DMB1_wrapper is
  port (
    btnC : in STD_LOGIC;
    btnCpuReset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end DMB1_wrapper;

architecture STRUCTURE of DMB1_wrapper is
  component DMB1 is
  port (
    btnCpuReset : in STD_LOGIC;
    clk : in STD_LOGIC;
    btnC : in STD_LOGIC
  );
  end component DMB1;
begin
DMB1_i: component DMB1
     port map (
      btnC => btnC,
      btnCpuReset => btnCpuReset,
      clk => clk
    );
end STRUCTURE;
