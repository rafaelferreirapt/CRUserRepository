--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
--Date        : Mon Apr 18 22:31:39 2016
--Host        : ubuntu running 64-bit Ubuntu 14.04.1 LTS
--Command     : generate_target exam.bd
--Design      : exam
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity exam is
  port (
    an : out STD_LOGIC_VECTOR ( 7 downto 0 );
    btnC : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 15 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 );
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of exam : entity is "exam,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=exam,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=8,numReposBlks=8,numNonXlnxBlks=4,numHierBlks=0,maxHierDepth=0,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of exam : entity is "exam.hwdef";
end exam;

architecture STRUCTURE of exam is
  component exam_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    addra : in STD_LOGIC_VECTOR ( 2 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component exam_blk_mem_gen_0_0;
  component exam_ROM_Reader1_0_0 is
  port (
    clk : in STD_LOGIC;
    addr : out STD_LOGIC_VECTOR ( 2 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rst : in STD_LOGIC;
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    completed : out STD_LOGIC
  );
  end component exam_ROM_Reader1_0_0;
  component exam_DC32_0_0 is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    select_display : out STD_LOGIC_VECTOR ( 7 downto 0 );
    segments : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component exam_DC32_0_0;
  component exam_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component exam_xlslice_0_0;
  component exam_MaxNetworkExam_0_2 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component exam_MaxNetworkExam_0_2;
  component exam_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 8 downto 0 );
    In2 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component exam_xlconcat_0_0;
  component exam_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 8 downto 0 )
  );
  end component exam_xlconstant_0_0;
  component exam_resetCircuit_0_0 is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    sw : in STD_LOGIC_VECTOR ( 3 downto 0 );
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 );
    hamming : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  end component exam_resetCircuit_0_0;
  signal DC32_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal DC32_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal MaxNetworkExam_0_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal ROM_Reader1_0_addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ROM_Reader1_0_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal blk_mem_gen_0_douta : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal btnC_1 : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal resetCircuit_0_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal resetCircuit_0_hamming : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal sw_1 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ROM_Reader1_0_completed_UNCONNECTED : STD_LOGIC;
begin
  an(7 downto 0) <= DC32_0_select_display(7 downto 0);
  btnC_1 <= btnC;
  clk_1 <= clk;
  led(15 downto 0) <= xlconcat_0_dout(15 downto 0);
  seg(6 downto 0) <= DC32_0_segments(6 downto 0);
  sw_1(3 downto 0) <= sw(3 downto 0);
DC32_0: component exam_DC32_0_0
     port map (
      clk => clk_1,
      data_in(31 downto 0) => resetCircuit_0_data_out(31 downto 0),
      segments(6 downto 0) => DC32_0_segments(6 downto 0),
      select_display(7 downto 0) => DC32_0_select_display(7 downto 0)
    );
MaxNetworkExam_0: component exam_MaxNetworkExam_0_2
     port map (
      data_in(31 downto 0) => resetCircuit_0_data_out(31 downto 0),
      data_out(31 downto 0) => MaxNetworkExam_0_data_out(31 downto 0)
    );
ROM_Reader1_0: component exam_ROM_Reader1_0_0
     port map (
      addr(2 downto 0) => ROM_Reader1_0_addr(2 downto 0),
      clk => clk_1,
      completed => NLW_ROM_Reader1_0_completed_UNCONNECTED,
      data_in(3 downto 0) => blk_mem_gen_0_douta(3 downto 0),
      data_out(31 downto 0) => ROM_Reader1_0_data_out(31 downto 0),
      rst => btnC_1
    );
blk_mem_gen_0: component exam_blk_mem_gen_0_0
     port map (
      addra(2 downto 0) => ROM_Reader1_0_addr(2 downto 0),
      clka => clk_1,
      douta(3 downto 0) => blk_mem_gen_0_douta(3 downto 0)
    );
resetCircuit_0: component exam_resetCircuit_0_0
     port map (
      clk => clk_1,
      data_in(31 downto 0) => ROM_Reader1_0_data_out(31 downto 0),
      data_out(31 downto 0) => resetCircuit_0_data_out(31 downto 0),
      hamming(2 downto 0) => resetCircuit_0_hamming(2 downto 0),
      reset => btnC_1,
      sw(3 downto 0) => sw_1(3 downto 0)
    );
xlconcat_0: component exam_xlconcat_0_0
     port map (
      In0(2 downto 0) => resetCircuit_0_hamming(2 downto 0),
      In1(8 downto 0) => xlconstant_0_dout(8 downto 0),
      In2(3 downto 0) => xlslice_0_Dout(3 downto 0),
      dout(15 downto 0) => xlconcat_0_dout(15 downto 0)
    );
xlconstant_0: component exam_xlconstant_0_0
     port map (
      dout(8 downto 0) => xlconstant_0_dout(8 downto 0)
    );
xlslice_0: component exam_xlslice_0_0
     port map (
      Din(31 downto 0) => MaxNetworkExam_0_data_out(31 downto 0),
      Dout(3 downto 0) => xlslice_0_Dout(3 downto 0)
    );
end STRUCTURE;
