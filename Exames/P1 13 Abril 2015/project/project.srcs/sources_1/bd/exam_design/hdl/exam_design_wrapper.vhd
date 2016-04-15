--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
--Date        : Fri Apr 15 23:07:23 2016
--Host        : ubuntu running 64-bit Ubuntu 14.04.1 LTS
--Command     : generate_target exam_design_wrapper.bd
--Design      : exam_design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity exam_design_wrapper is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
end exam_design_wrapper;

architecture STRUCTURE of exam_design_wrapper is
  component exam_design is
  port (
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 2 downto 0 );
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component exam_design;
begin
exam_design_i: component exam_design
     port map (
      an(7 downto 0) => an(7 downto 0),
      btnC => btnC,
      clk => clk,
      seg(6 downto 0) => seg(6 downto 0),
      sw(2 downto 0) => sw(2 downto 0)
    );
end STRUCTURE;
