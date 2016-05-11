--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
--Date        : Mon May 02 07:36:16 2016
--Host        : DETI-PC0018 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target MP3_Design_wrapper.bd
--Design      : MP3_Design_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MP3_Design_wrapper is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    btnCpuReset : in STD_LOGIC;
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end MP3_Design_wrapper;

architecture STRUCTURE of MP3_Design_wrapper is
  component MP3_Design is
  port (
    clk : in STD_LOGIC;
    btnCpuReset : in STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    btnC : in STD_LOGIC
  );
  end component MP3_Design;
begin
MP3_Design_i: component MP3_Design
     port map (
      an(7 downto 0) => an(7 downto 0),
      btnC => btnC,
      btnCpuReset => btnCpuReset,
      clk => clk,
      seg(6 downto 0) => seg(6 downto 0)
    );
end STRUCTURE;
