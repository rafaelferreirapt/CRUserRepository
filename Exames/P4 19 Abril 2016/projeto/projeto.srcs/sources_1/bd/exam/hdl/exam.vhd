--Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
--Date        : Tue Apr 19 15:34:41 2016
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
    btnL : in STD_LOGIC;
    btnR : in STD_LOGIC;
    clk : in STD_LOGIC;
    led : out STD_LOGIC_VECTOR ( 3 downto 0 );
    seg : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of exam : entity is "exam,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=exam,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=25,numReposBlks=25,numNonXlnxBlks=10,numHierBlks=0,maxHierDepth=0,synth_mode=Global}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of exam : entity is "exam.hwdef";
end exam;

architecture STRUCTURE of exam is
  component exam_dist_mem_gen_0_0 is
  port (
    a : in STD_LOGIC_VECTOR ( 3 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component exam_dist_mem_gen_0_0;
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
  component exam_xlconcat_0_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 2 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    dout : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component exam_xlconcat_0_0;
  component exam_xlconstant_0_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component exam_xlconstant_0_0;
  component exam_DC32_0_0 is
  port (
    clk : in STD_LOGIC;
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    select_display : out STD_LOGIC_VECTOR ( 7 downto 0 );
    segments : out STD_LOGIC_VECTOR ( 6 downto 0 )
  );
  end component exam_DC32_0_0;
  component exam_mux2p_0_0 is
  port (
    port0 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    port1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    select_port : in STD_LOGIC;
    port_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component exam_mux2p_0_0;
  component exam_circuit_c_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component exam_circuit_c_0_0;
  component exam_xlslice_0_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component exam_xlslice_0_0;
  component exam_xlslice_1_0 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component exam_xlslice_1_0;
  component exam_circuit_c_0_1 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component exam_circuit_c_0_1;
  component exam_xlconcat_1_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component exam_xlconcat_1_0;
  component exam_xlslice_0_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component exam_xlslice_0_1;
  component exam_xlslice_1_1 is
  port (
    Din : in STD_LOGIC_VECTOR ( 31 downto 0 );
    Dout : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component exam_xlslice_1_1;
  component exam_xlconcat_1_1 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 15 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component exam_xlconcat_1_1;
  component exam_circuit_c_0_2 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component exam_circuit_c_0_2;
  component exam_circuit_c_2_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 15 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 15 downto 0 )
  );
  end component exam_circuit_c_2_0;
  component exam_circuito_m_0_0 is
  port (
    data_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    data_out : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  end component exam_circuito_m_0_0;
  component exam_blk_mem_gen_0_0 is
  port (
    clka : in STD_LOGIC;
    wea : in STD_LOGIC_VECTOR ( 0 to 0 );
    addra : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dina : in STD_LOGIC_VECTOR ( 31 downto 0 );
    douta : out STD_LOGIC_VECTOR ( 3 downto 0 );
    clkb : in STD_LOGIC;
    web : in STD_LOGIC_VECTOR ( 0 to 0 );
    addrb : in STD_LOGIC_VECTOR ( 5 downto 0 );
    dinb : in STD_LOGIC_VECTOR ( 31 downto 0 );
    doutb : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component exam_blk_mem_gen_0_0;
  component exam_xlconstant_1_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component exam_xlconstant_1_0;
  component exam_xlconstant_1_1 is
  port (
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component exam_xlconstant_1_1;
  component exam_xlconstant_1_2 is
  port (
    dout : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  end component exam_xlconstant_1_2;
  component exam_clock_divider_0_0 is
  port (
    clk : in STD_LOGIC;
    divided_clk : out STD_LOGIC
  );
  end component exam_clock_divider_0_0;
  component exam_xlconcat_3_0 is
  port (
    In0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    In1 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dout : out STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  end component exam_xlconcat_3_0;
  component exam_xlconstant_4_0 is
  port (
    dout : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  end component exam_xlconstant_4_0;
  component exam_showRam_0_0 is
  port (
    clk : in STD_LOGIC;
    addr_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  end component exam_showRam_0_0;
  signal DC32_0_segments : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal DC32_0_select_display : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal ROM_Reader1_0_addr : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal ROM_Reader1_0_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal blk_mem_gen_0_doutb : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal btnL_1 : STD_LOGIC;
  signal btnR_1 : STD_LOGIC;
  signal circuit_c_0_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal circuit_c_1_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal circuit_c_2_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal circuit_c_3_data_out : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal circuito_m_0_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal clk_1 : STD_LOGIC;
  signal clock_divider_0_divided_clk : STD_LOGIC;
  signal dist_mem_gen_0_spo : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mux2p_0_port_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal showRam_0_addr_out : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconcat_0_dout : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal xlconcat_1_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconcat_2_dout : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal xlconcat_3_dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xlconstant_0_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_1_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_2_dout : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal xlconstant_3_dout : STD_LOGIC_VECTOR ( 0 to 0 );
  signal xlconstant_4_dout : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal xlslice_0_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_1_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_2_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal xlslice_3_Dout : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal NLW_ROM_Reader1_0_completed_UNCONNECTED : STD_LOGIC;
  signal NLW_blk_mem_gen_0_douta_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  an(7 downto 0) <= DC32_0_select_display(7 downto 0);
  btnL_1 <= btnL;
  btnR_1 <= btnR;
  clk_1 <= clk;
  led(3 downto 0) <= blk_mem_gen_0_doutb(3 downto 0);
  seg(6 downto 0) <= DC32_0_segments(6 downto 0);
DC32_0: component exam_DC32_0_0
     port map (
      clk => clk_1,
      data_in(31 downto 0) => mux2p_0_port_out(31 downto 0),
      segments(6 downto 0) => DC32_0_segments(6 downto 0),
      select_display(7 downto 0) => DC32_0_select_display(7 downto 0)
    );
ROM_Reader1_0: component exam_ROM_Reader1_0_0
     port map (
      addr(2 downto 0) => ROM_Reader1_0_addr(2 downto 0),
      clk => clk_1,
      completed => NLW_ROM_Reader1_0_completed_UNCONNECTED,
      data_in(3 downto 0) => dist_mem_gen_0_spo(3 downto 0),
      data_out(31 downto 0) => ROM_Reader1_0_data_out(31 downto 0),
      rst => btnR_1
    );
blk_mem_gen_0: component exam_blk_mem_gen_0_0
     port map (
      addra(5 downto 0) => xlconstant_2_dout(5 downto 0),
      addrb(5 downto 0) => xlconcat_3_dout(5 downto 0),
      clka => clk_1,
      clkb => clk_1,
      dina(31 downto 0) => xlconcat_2_dout(31 downto 0),
      dinb(31 downto 0) => B"00000000000000000000000000000000",
      douta(3 downto 0) => NLW_blk_mem_gen_0_douta_UNCONNECTED(3 downto 0),
      doutb(3 downto 0) => blk_mem_gen_0_doutb(3 downto 0),
      wea(0) => xlconstant_1_dout(0),
      web(0) => xlconstant_3_dout(0)
    );
circuit_c_0: component exam_circuit_c_0_0
     port map (
      data_in(15 downto 0) => xlslice_0_Dout(15 downto 0),
      data_out(15 downto 0) => circuit_c_0_data_out(15 downto 0)
    );
circuit_c_1: component exam_circuit_c_0_1
     port map (
      data_in(15 downto 0) => xlslice_1_Dout(15 downto 0),
      data_out(15 downto 0) => circuit_c_1_data_out(15 downto 0)
    );
circuit_c_2: component exam_circuit_c_0_2
     port map (
      data_in(15 downto 0) => xlslice_2_Dout(15 downto 0),
      data_out(15 downto 0) => circuit_c_2_data_out(15 downto 0)
    );
circuit_c_3: component exam_circuit_c_2_0
     port map (
      data_in(15 downto 0) => xlslice_3_Dout(15 downto 0),
      data_out(15 downto 0) => circuit_c_3_data_out(15 downto 0)
    );
circuito_m_0: component exam_circuito_m_0_0
     port map (
      data_in(31 downto 0) => xlconcat_1_dout(31 downto 0),
      data_out(31 downto 0) => circuito_m_0_data_out(31 downto 0)
    );
clock_divider_0: component exam_clock_divider_0_0
     port map (
      clk => clk_1,
      divided_clk => clock_divider_0_divided_clk
    );
dist_mem_gen_0: component exam_dist_mem_gen_0_0
     port map (
      a(3 downto 0) => xlconcat_0_dout(3 downto 0),
      spo(3 downto 0) => dist_mem_gen_0_spo(3 downto 0)
    );
mux2p_0: component exam_mux2p_0_0
     port map (
      port0(31 downto 0) => xlconcat_2_dout(31 downto 0),
      port1(31 downto 0) => ROM_Reader1_0_data_out(31 downto 0),
      port_out(31 downto 0) => mux2p_0_port_out(31 downto 0),
      select_port => btnL_1
    );
showRam_0: component exam_showRam_0_0
     port map (
      addr_out(3 downto 0) => showRam_0_addr_out(3 downto 0),
      clk => clock_divider_0_divided_clk
    );
xlconcat_0: component exam_xlconcat_0_0
     port map (
      In0(2 downto 0) => ROM_Reader1_0_addr(2 downto 0),
      In1(0) => xlconstant_0_dout(0),
      dout(3 downto 0) => xlconcat_0_dout(3 downto 0)
    );
xlconcat_1: component exam_xlconcat_1_0
     port map (
      In0(15 downto 0) => circuit_c_0_data_out(15 downto 0),
      In1(15 downto 0) => circuit_c_1_data_out(15 downto 0),
      dout(31 downto 0) => xlconcat_1_dout(31 downto 0)
    );
xlconcat_2: component exam_xlconcat_1_1
     port map (
      In0(15 downto 0) => circuit_c_2_data_out(15 downto 0),
      In1(15 downto 0) => circuit_c_3_data_out(15 downto 0),
      dout(31 downto 0) => xlconcat_2_dout(31 downto 0)
    );
xlconcat_3: component exam_xlconcat_3_0
     port map (
      In0(3 downto 0) => showRam_0_addr_out(3 downto 0),
      In1(1 downto 0) => xlconstant_4_dout(1 downto 0),
      dout(5 downto 0) => xlconcat_3_dout(5 downto 0)
    );
xlconstant_0: component exam_xlconstant_0_0
     port map (
      dout(0) => xlconstant_0_dout(0)
    );
xlconstant_1: component exam_xlconstant_1_0
     port map (
      dout(0) => xlconstant_1_dout(0)
    );
xlconstant_2: component exam_xlconstant_1_1
     port map (
      dout(5 downto 0) => xlconstant_2_dout(5 downto 0)
    );
xlconstant_3: component exam_xlconstant_1_2
     port map (
      dout(0) => xlconstant_3_dout(0)
    );
xlconstant_4: component exam_xlconstant_4_0
     port map (
      dout(1 downto 0) => xlconstant_4_dout(1 downto 0)
    );
xlslice_0: component exam_xlslice_0_0
     port map (
      Din(31 downto 0) => ROM_Reader1_0_data_out(31 downto 0),
      Dout(15 downto 0) => xlslice_0_Dout(15 downto 0)
    );
xlslice_1: component exam_xlslice_1_0
     port map (
      Din(31 downto 0) => ROM_Reader1_0_data_out(31 downto 0),
      Dout(15 downto 0) => xlslice_1_Dout(15 downto 0)
    );
xlslice_2: component exam_xlslice_0_1
     port map (
      Din(31 downto 0) => circuito_m_0_data_out(31 downto 0),
      Dout(15 downto 0) => xlslice_2_Dout(15 downto 0)
    );
xlslice_3: component exam_xlslice_1_1
     port map (
      Din(31 downto 0) => circuito_m_0_data_out(31 downto 0),
      Dout(15 downto 0) => xlslice_3_Dout(15 downto 0)
    );
end STRUCTURE;
