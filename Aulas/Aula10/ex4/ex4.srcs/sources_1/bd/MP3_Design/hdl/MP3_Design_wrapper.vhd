--Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2016.1 (lin64) Build 1538259 Fri Apr  8 15:45:23 MDT 2016
--Date        : Fri May 13 22:50:25 2016
--Host        : ubuntu running 64-bit Ubuntu 14.04.1 LTS
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
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end MP3_Design_wrapper;

architecture STRUCTURE of MP3_Design_wrapper is
  component MP3_Design is
  port (
    btnCpuReset : in STD_LOGIC;
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component MP3_Design;
begin
MP3_Design_i: component MP3_Design
     port map (
      an(7 downto 0) => an(7 downto 0),
      btnC => btnC,
      btnCpuReset => btnCpuReset,
      clk => clk,
      seg(6 downto 0) => seg(6 downto 0),
      sw(15 downto 0) => sw(15 downto 0)
    );
end STRUCTURE;
