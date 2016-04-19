--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
--Date        : Tue Apr 19 15:34:41 2016
--Host        : ubuntu running 64-bit Ubuntu 14.04.1 LTS
--Command     : generate_target exam_wrapper.bd
--Design      : exam_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity exam_wrapper is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnL : in STD_LOGIC;
    btnR : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end exam_wrapper;

architecture STRUCTURE of exam_wrapper is
  component exam is
  port (
    clk : in STD_LOGIC;
    btnR : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnL : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component exam;
begin
exam_i: component exam
     port map (
      an(7 downto 0) => an(7 downto 0),
      btnL => btnL,
      btnR => btnR,
      clk => clk,
      led(3 downto 0) => led(3 downto 0),
      seg(6 downto 0) => seg(6 downto 0)
    );
end STRUCTURE;
