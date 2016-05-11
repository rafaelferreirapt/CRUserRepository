--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
--Date        : Sun May 01 10:11:45 2016
--Host        : DETI-PC0018 running 64-bit Service Pack 1  (build 7601)
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
    btnCpuReset : in STD_LOGIC;
    clk : in STD_LOGIC
  );
end DMB1_wrapper;

architecture STRUCTURE of DMB1_wrapper is
  component DMB1 is
  port (
    clk : in STD_LOGIC;
    btnCpuReset : in STD_LOGIC
  );
  end component DMB1;
begin
DMB1_i: component DMB1
     port map (
      btnCpuReset => btnCpuReset,
      clk => clk
    );
end STRUCTURE;
