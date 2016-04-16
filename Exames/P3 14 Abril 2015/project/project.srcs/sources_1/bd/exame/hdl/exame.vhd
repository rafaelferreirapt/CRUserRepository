--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
--Date        : Sat Apr 16 14:07:46 2016
--Host        : ubuntu running 64-bit Ubuntu 14.04.1 LTS
--Command     : generate_target exame.bd
--Design      : exame
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity exame is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnL : in STD_LOGIC;
    btnR : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of exame : entity is "exame,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=exame,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=7,numReposBlks=7,numNonXlnxBlks=2,numHierBlks=0,maxHierDepth=0,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of exame : entity is "exame.hwdef";
end exame;

architecture STRUCTURE of exame is
  component exame_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 1 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component exame_blk_mem_gen_0_0;
  component exame_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component exame_xlslice_0_0;
  component exame_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 15 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component exame_xlslice_1_0;
  component exame_EightDisplayControl_0_0 is
  port (
    clk : in STD_LOGIC;
    leftL : in STD_LOGIC_VECTOR ( 3 downto 0 );
    near_leftL : in STD_LOGIC_VECTOR ( 3 downto 0 );
    near_rightL : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rightL : in STD_LOGIC_VECTOR ( 3 downto 0 );
    leftR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    near_leftR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    near_rightR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rightR : in STD_LOGIC_VECTOR ( 3 downto 0 );
    select_display : out STD_LOGIC_VECTOR ( 7 downto 0 );
    segments : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component exame_EightDisplayControl_0_0;
  component exame_xlslice_2_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component exame_xlslice_2_0;
  component exame_xlslice_2_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component exame_xlslice_2_1;
  component exame_circuit_0_0 is
  port (
    clk : in STD_LOGIC;
    btnL : in STD_LOGIC;
    btnR : in STD_LOGIC;
    A1 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    A2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    led : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component exame_circuit_0_0;
  signal EightDisplayControl_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal EightDisplayControl_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal btnL_1 : STD_LOGIC;
  signal btnR_1 : STD_LOGIC;
  signal circuit_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal circuit_0_led : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal sw_1 : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  an(7 downto 0) <= EightDisplayControl_0_select_display(7 downto 0);
  btnL_1 <= btnL;
  btnR_1 <= btnR;
  clk_1 <= clk;
  led(15 downto 0) <= circuit_0_led(15 downto 0);
  seg(6 downto 0) <= EightDisplayControl_0_segments(6 downto 0);
  sw_1(15 downto 0) <= sw(15 downto 0);
EightDisplayControl_0: component exame_EightDisplayControl_0_0
     port map (
      clk => clk_1,
      leftL(3 downto 0) => B"0000",
      leftR(3 downto 0) => B"0000",
      near_leftL(3 downto 0) => B"0000",
      near_leftR(3 downto 0) => B"0000",
      near_rightL(3 downto 0) => B"0000",
      near_rightR(3 downto 0) => xlslice_3_Dout(3 downto 0),
      rightL(3 downto 0) => B"0000",
      rightR(3 downto 0) => xlslice_2_Dout(3 downto 0),
      segments(6 downto 0) => EightDisplayControl_0_segments(6 downto 0),
      select_display(7 downto 0) => EightDisplayControl_0_select_display(7 downto 0)
    );
blk_mem_gen_0: component exame_blk_mem_gen_0_0
     port map (
      addra(1 downto 0) => xlslice_0_Dout(1 downto 0),
      clka => clk_1,
      douta(3 downto 0) => blk_mem_gen_0_douta(3 downto 0)
    );
circuit_0: component exame_circuit_0_0
     port map (
      A1(3 downto 0) => blk_mem_gen_0_douta(3 downto 0),
      A2(3 downto 0) => xlslice_1_Dout(3 downto 0),
      btnL => btnL_1,
      btnR => btnR_1,
      clk => clk_1,
      data_out(7 downto 0) => circuit_0_data_out(7 downto 0),
      led(15 downto 0) => circuit_0_led(15 downto 0)
    );
xlslice_0: component exame_xlslice_0_0
     port map (
      Din(15 downto 0) => sw_1(15 downto 0),
      Dout(1 downto 0) => xlslice_0_Dout(1 downto 0)
    );
xlslice_1: component exame_xlslice_1_0
     port map (
      Din(15 downto 0) => sw_1(15 downto 0),
      Dout(3 downto 0) => xlslice_1_Dout(3 downto 0)
    );
xlslice_2: component exame_xlslice_2_0
     port map (
      Din(7 downto 0) => circuit_0_data_out(7 downto 0),
      Dout(3 downto 0) => xlslice_2_Dout(3 downto 0)
    );
xlslice_3: component exame_xlslice_2_1
     port map (
      Din(7 downto 0) => circuit_0_data_out(7 downto 0),
      Dout(3 downto 0) => xlslice_3_Dout(3 downto 0)
    );
end STRUCTURE;
