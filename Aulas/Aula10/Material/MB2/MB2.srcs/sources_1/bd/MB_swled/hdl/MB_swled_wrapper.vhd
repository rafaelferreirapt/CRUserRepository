--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4 (win64) Build 1412921 Wed Nov 18 09:43:45 MST 2015
--Date        : Sun May 01 13:49:30 2016
--Host        : DETI-PC0018 running 64-bit Service Pack 1  (build 7601)
--Command     : generate_target MB_swled_wrapper.bd
--Design      : MB_swled_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity MB_swled_wrapper is
  port (
    btnCpuReset : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
end MB_swled_wrapper;

architecture STRUCTURE of MB_swled_wrapper is
  component MB_swled is
  port (
    clk : in STD_LOGIC;
    btnCpuReset : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 );
    led : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component MB_swled;
begin
MB_swled_i: component MB_swled
     port map (
      btnCpuReset => btnCpuReset,
      clk => clk,
      led(15 downto 0) => led(15 downto 0),
      sw(15 downto 0) => sw(15 downto 0)
    );
end STRUCTURE;
