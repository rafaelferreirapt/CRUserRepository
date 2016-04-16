--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
--Date        : Sat Apr 16 17:00:23 2016
--Host        : ubuntu running 64-bit Ubuntu 14.04.1 LTS
--Command     : generate_target project.bd
--Design      : project
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of project : entity is "project,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=project,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=6,numReposBlks=6,numNonXlnxBlks=3,numHierBlks=0,maxHierDepth=0,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of project : entity is "project.hwdef";
end project;

architecture STRUCTURE of project is
  component project_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 3 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component project_blk_mem_gen_0_0;
  component project_EightDisplayControl_0_0 is
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
  end component project_EightDisplayControl_0_0;
  component project_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component project_xlslice_0_0;
  component project_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 7 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component project_xlslice_0_1;
  component project_hw_0_0 is
  port (
    in_data : in STD_LOGIC_VECTOR ( 31 downto 0 );
    out_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  end component project_hw_0_0;
  component project_circuitp_0_0 is
  port (
    clk : in STD_LOGIC;
    btnC : in STD_LOGIC;
    addr_array : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 7 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 7 downto 0 );
    addr_rom : out STD_LOGIC_VECTOR ( 3 downto 0 );
    led : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component project_circuitp_0_0;
  signal EightDisplayControl_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal EightDisplayControl_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal btnC_1 : STD_LOGIC;
  signal circuit_p_0_data_out : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal circuitp_0_addr_rom : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal circuitp_0_led : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal hw_0_out_data : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sw_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  an(7 downto 0) <= EightDisplayControl_0_select_display(7 downto 0);
  btnC_1 <= btnC;
  clk_1 <= clk;
  led(15 downto 0) <= circuitp_0_led(15 downto 0);
  seg(6 downto 0) <= EightDisplayControl_0_segments(6 downto 0);
  sw_1(3 downto 0) <= sw(3 downto 0);
EightDisplayControl_0: component project_EightDisplayControl_0_0
     port map (
      clk => clk_1,
      leftL(3 downto 0) => B"0000",
      leftR(3 downto 0) => B"0000",
      near_leftL(3 downto 0) => B"0000",
      near_leftR(3 downto 0) => B"0000",
      near_rightL(3 downto 0) => B"0000",
      near_rightR(3 downto 0) => xlslice_1_Dout(3 downto 0),
      rightL(3 downto 0) => B"0000",
      rightR(3 downto 0) => xlslice_0_Dout(3 downto 0),
      segments(6 downto 0) => EightDisplayControl_0_segments(6 downto 0),
      select_display(7 downto 0) => EightDisplayControl_0_select_display(7 downto 0)
    );
blk_mem_gen_0: component project_blk_mem_gen_0_0
     port map (
      addra(3 downto 0) => circuitp_0_addr_rom(3 downto 0),
      clka => clk_1,
      douta(31 downto 0) => blk_mem_gen_0_douta(31 downto 0)
    );
circuitp_0: component project_circuitp_0_0
     port map (
      addr_array(3 downto 0) => sw_1(3 downto 0),
      addr_rom(3 downto 0) => circuitp_0_addr_rom(3 downto 0),
      btnC => btnC_1,
      clk => clk_1,
      data_in(7 downto 0) => hw_0_out_data(7 downto 0),
      data_out(7 downto 0) => circuit_p_0_data_out(7 downto 0),
      led(15 downto 0) => circuitp_0_led(15 downto 0)
    );
hw_0: component project_hw_0_0
     port map (
      in_data(31 downto 0) => blk_mem_gen_0_douta(31 downto 0),
      out_data(7 downto 0) => hw_0_out_data(7 downto 0)
    );
xlslice_0: component project_xlslice_0_0
     port map (
      Din(7 downto 0) => circuit_p_0_data_out(7 downto 0),
      Dout(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
xlslice_1: component project_xlslice_0_1
     port map (
      Din(7 downto 0) => circuit_p_0_data_out(7 downto 0),
      Dout(3 downto 0) => xlslice_1_Dout(3 downto 0)
    );
end STRUCTURE;
