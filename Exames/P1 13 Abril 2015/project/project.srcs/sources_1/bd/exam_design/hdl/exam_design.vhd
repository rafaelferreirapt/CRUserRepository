--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
--Date        : Fri Apr 15 23:07:23 2016
--Host        : ubuntu running 64-bit Ubuntu 14.04.1 LTS
--Command     : generate_target exam_design.bd
--Design      : exam_design
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity exam_design is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of exam_design : entity is "exam_design,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=exam_design,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=11,numReposBlks=11,numNonXlnxBlks=7,numHierBlks=0,maxHierDepth=0,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of exam_design : entity is "exam_design.hwdef";
end exam_design;

architecture STRUCTURE of exam_design is
  component exam_design_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 1 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component exam_design_blk_mem_gen_0_0;
  component exam_design_blk_mem_gen_1_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 1 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component exam_design_blk_mem_gen_1_0;
  component exam_design_ROM_Reader1_0_0 is
  port (
    clk : in STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    completed : out STD_LOGIC
  );
  end component exam_design_ROM_Reader1_0_0;
  component exam_design_ROM_Reader1_0_1 is
  port (
    clk : in STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 1 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 );
    completed : out STD_LOGIC
  );
  end component exam_design_ROM_Reader1_0_1;
  component exam_design_iterative_sorter_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    run : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component exam_design_iterative_sorter_0_0;
  component exam_design_iterative_sorter_0_1 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    run : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component exam_design_iterative_sorter_0_1;
  component exam_design_mux2p_0_0 is
  port (
    port0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    port1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    select_port : in STD_LOGIC;
    port_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component exam_design_mux2p_0_0;
  component exam_design_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component exam_design_xlslice_0_0;
  component exam_design_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 2 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component exam_design_xlslice_0_1;
  component exam_design_smart_mux_0_0 is
  port (
    port_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    port_out : out STD_LOGIC_VECTOR ( 3 downto 0 );
    select_port : in STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component exam_design_smart_mux_0_0;
  component exam_design_EightDisplayControl_0_0 is
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
  end component exam_design_EightDisplayControl_0_0;
  signal EightDisplayControl_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal EightDisplayControl_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ROM_Reader1_0_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ROM_Reader1_0_completed : STD_LOGIC;
  signal ROM_Reader1_0_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal ROM_Reader1_1_addr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal ROM_Reader1_1_completed : STD_LOGIC;
  signal ROM_Reader1_1_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal blk_mem_gen_1_douta : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal btnC_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal iterative_sorter_0_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal iterative_sorter_1_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal mux2p_0_port_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal smart_mux_0_port_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal sw_1 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 1 downto 0 );
begin
  an(7 downto 0) <= EightDisplayControl_0_select_display(7 downto 0);
  btnC_1 <= btnC;
  clk_1 <= clk;
  seg(6 downto 0) <= EightDisplayControl_0_segments(6 downto 0);
  sw_1(2 downto 0) <= sw(2 downto 0);
EightDisplayControl_0: component exam_design_EightDisplayControl_0_0
     port map (
      clk => clk_1,
      leftL(3 downto 0) => B"0000",
      leftR(3 downto 0) => B"0000",
      near_leftL(3 downto 0) => B"0000",
      near_leftR(3 downto 0) => B"0000",
      near_rightL(3 downto 0) => B"0000",
      near_rightR(3 downto 0) => B"0000",
      rightL(3 downto 0) => B"0000",
      rightR(3 downto 0) => smart_mux_0_port_out(3 downto 0),
      segments(6 downto 0) => EightDisplayControl_0_segments(6 downto 0),
      select_display(7 downto 0) => EightDisplayControl_0_select_display(7 downto 0)
    );
ROM_Reader1_0: component exam_design_ROM_Reader1_0_0
     port map (
      addr(1 downto 0) => ROM_Reader1_0_addr(1 downto 0),
      clk => clk_1,
      completed => ROM_Reader1_0_completed,
      data_in(3 downto 0) => blk_mem_gen_0_douta(3 downto 0),
      data_out(15 downto 0) => ROM_Reader1_0_data_out(15 downto 0),
      rst => btnC_1
    );
ROM_Reader1_1: component exam_design_ROM_Reader1_0_1
     port map (
      addr(1 downto 0) => ROM_Reader1_1_addr(1 downto 0),
      clk => clk_1,
      completed => ROM_Reader1_1_completed,
      data_in(3 downto 0) => blk_mem_gen_1_douta(3 downto 0),
      data_out(15 downto 0) => ROM_Reader1_1_data_out(15 downto 0),
      rst => btnC_1
    );
blk_mem_gen_0: component exam_design_blk_mem_gen_0_0
     port map (
      addra(1 downto 0) => ROM_Reader1_0_addr(1 downto 0),
      clka => clk_1,
      douta(3 downto 0) => blk_mem_gen_0_douta(3 downto 0)
    );
blk_mem_gen_1: component exam_design_blk_mem_gen_1_0
     port map (
      addra(1 downto 0) => ROM_Reader1_1_addr(1 downto 0),
      clka => clk_1,
      douta(3 downto 0) => blk_mem_gen_1_douta(3 downto 0)
    );
iterative_sorter_0: component exam_design_iterative_sorter_0_0
     port map (
      clk => clk_1,
      data_in(15 downto 0) => ROM_Reader1_1_data_out(15 downto 0),
      data_out(15 downto 0) => iterative_sorter_0_data_out(15 downto 0),
      reset => btnC_1,
      run => ROM_Reader1_1_completed
    );
iterative_sorter_1: component exam_design_iterative_sorter_0_1
     port map (
      clk => clk_1,
      data_in(15 downto 0) => ROM_Reader1_0_data_out(15 downto 0),
      data_out(15 downto 0) => iterative_sorter_1_data_out(15 downto 0),
      reset => btnC_1,
      run => ROM_Reader1_0_completed
    );
mux2p_0: component exam_design_mux2p_0_0
     port map (
      port0(15 downto 0) => iterative_sorter_1_data_out(15 downto 0),
      port1(15 downto 0) => iterative_sorter_0_data_out(15 downto 0),
      port_out(15 downto 0) => mux2p_0_port_out(15 downto 0),
      select_port => xlslice_0_Dout(0)
    );
smart_mux_0: component exam_design_smart_mux_0_0
     port map (
      port_in(15 downto 0) => mux2p_0_port_out(15 downto 0),
      port_out(3 downto 0) => smart_mux_0_port_out(3 downto 0),
      select_port(1 downto 0) => xlslice_1_Dout(1 downto 0)
    );
xlslice_0: component exam_design_xlslice_0_0
     port map (
      Din(2 downto 0) => sw_1(2 downto 0),
      Dout(0) => xlslice_0_Dout(0)
    );
xlslice_1: component exam_design_xlslice_0_1
     port map (
      Din(2 downto 0) => sw_1(2 downto 0),
      Dout(1 downto 0) => xlslice_1_Dout(1 downto 0)
    );
end STRUCTURE;
