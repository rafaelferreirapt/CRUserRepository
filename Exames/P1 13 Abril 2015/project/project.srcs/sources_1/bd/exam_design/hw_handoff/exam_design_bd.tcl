
################################################################
# This is a generated script based on design: exam_design
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2015.4
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   puts "ERROR: This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source exam_design_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7a100tcsg324-1

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name exam_design

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "ERROR: Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      puts "INFO: Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   puts "INFO: Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "ERROR: Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   puts "INFO: Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   puts "INFO: Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

puts "INFO: Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   puts $errMsg
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     puts "ERROR: Unable to find parent cell <$parentCell>!"
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     puts "ERROR: Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set an [ create_bd_port -dir O -from 7 -to 0 an ]
  set btnC [ create_bd_port -dir I btnC ]
  set clk [ create_bd_port -dir I clk ]
  set seg [ create_bd_port -dir O -from 6 -to 0 seg ]
  set sw [ create_bd_port -dir I -from 2 -to 0 sw ]

  # Create instance: EightDisplayControl_0, and set properties
  set EightDisplayControl_0 [ create_bd_cell -type ip -vlnv ua.pt:user:EightDisplayControl:1.0 EightDisplayControl_0 ]

  # Create instance: ROM_Reader1_0, and set properties
  set ROM_Reader1_0 [ create_bd_cell -type ip -vlnv user.org:user:ROM_Reader1:1.0 ROM_Reader1_0 ]
  set_property -dict [ list \
CONFIG.address_bits {2} \
CONFIG.data_width {4} \
 ] $ROM_Reader1_0

  # Create instance: ROM_Reader1_1, and set properties
  set ROM_Reader1_1 [ create_bd_cell -type ip -vlnv user.org:user:ROM_Reader1:1.0 ROM_Reader1_1 ]
  set_property -dict [ list \
CONFIG.address_bits {2} \
CONFIG.data_width {4} \
 ] $ROM_Reader1_1

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {../../../../../../../../../Memoria/4words4bits_1.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Read_Width_A {4} \
CONFIG.Read_Width_B {4} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Depth_A {4} \
CONFIG.Write_Width_A {4} \
CONFIG.Write_Width_B {4} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: blk_mem_gen_1, and set properties
  set blk_mem_gen_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_1 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {../../../../../../../../../Memoria/4words4bits_2.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Read_Width_A {4} \
CONFIG.Read_Width_B {4} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Depth_A {4} \
CONFIG.Write_Width_A {4} \
CONFIG.Write_Width_B {4} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_1

  # Create instance: iterative_sorter_0, and set properties
  set iterative_sorter_0 [ create_bd_cell -type ip -vlnv user.org:user:iterative_sorter:1.0 iterative_sorter_0 ]
  set_property -dict [ list \
CONFIG.how_many_words {4} \
CONFIG.word_length {4} \
 ] $iterative_sorter_0

  # Create instance: iterative_sorter_1, and set properties
  set iterative_sorter_1 [ create_bd_cell -type ip -vlnv user.org:user:iterative_sorter:1.0 iterative_sorter_1 ]
  set_property -dict [ list \
CONFIG.how_many_words {4} \
CONFIG.word_length {4} \
 ] $iterative_sorter_1

  # Create instance: mux2p_0, and set properties
  set mux2p_0 [ create_bd_cell -type ip -vlnv user.org:user:mux2p:1.0 mux2p_0 ]

  # Create instance: smart_mux_0, and set properties
  set smart_mux_0 [ create_bd_cell -type ip -vlnv user.org:user:smart_mux:1.0 smart_mux_0 ]
  set_property -dict [ list \
CONFIG.data_width {4} \
 ] $smart_mux_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {0} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {3} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {2} \
CONFIG.DIN_TO {1} \
CONFIG.DIN_WIDTH {3} \
CONFIG.DOUT_WIDTH {2} \
 ] $xlslice_1

  # Create port connections
  connect_bd_net -net EightDisplayControl_0_segments [get_bd_ports seg] [get_bd_pins EightDisplayControl_0/segments]
  connect_bd_net -net EightDisplayControl_0_select_display [get_bd_ports an] [get_bd_pins EightDisplayControl_0/select_display]
  connect_bd_net -net ROM_Reader1_0_addr [get_bd_pins ROM_Reader1_0/addr] [get_bd_pins blk_mem_gen_0/addra]
  connect_bd_net -net ROM_Reader1_0_completed [get_bd_pins ROM_Reader1_0/completed] [get_bd_pins iterative_sorter_1/run]
  connect_bd_net -net ROM_Reader1_0_data_out [get_bd_pins ROM_Reader1_0/data_out] [get_bd_pins iterative_sorter_1/data_in]
  connect_bd_net -net ROM_Reader1_1_addr [get_bd_pins ROM_Reader1_1/addr] [get_bd_pins blk_mem_gen_1/addra]
  connect_bd_net -net ROM_Reader1_1_completed [get_bd_pins ROM_Reader1_1/completed] [get_bd_pins iterative_sorter_0/run]
  connect_bd_net -net ROM_Reader1_1_data_out [get_bd_pins ROM_Reader1_1/data_out] [get_bd_pins iterative_sorter_0/data_in]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins ROM_Reader1_0/data_in] [get_bd_pins blk_mem_gen_0/douta]
  connect_bd_net -net blk_mem_gen_1_douta [get_bd_pins ROM_Reader1_1/data_in] [get_bd_pins blk_mem_gen_1/douta]
  connect_bd_net -net btnC_1 [get_bd_ports btnC] [get_bd_pins ROM_Reader1_0/rst] [get_bd_pins ROM_Reader1_1/rst] [get_bd_pins iterative_sorter_0/reset] [get_bd_pins iterative_sorter_1/reset]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins EightDisplayControl_0/clk] [get_bd_pins ROM_Reader1_0/clk] [get_bd_pins ROM_Reader1_1/clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins blk_mem_gen_1/clka] [get_bd_pins iterative_sorter_0/clk] [get_bd_pins iterative_sorter_1/clk]
  connect_bd_net -net iterative_sorter_0_data_out [get_bd_pins iterative_sorter_0/data_out] [get_bd_pins mux2p_0/port1]
  connect_bd_net -net iterative_sorter_1_data_out [get_bd_pins iterative_sorter_1/data_out] [get_bd_pins mux2p_0/port0]
  connect_bd_net -net mux2p_0_port_out [get_bd_pins mux2p_0/port_out] [get_bd_pins smart_mux_0/port_in]
  connect_bd_net -net smart_mux_0_port_out [get_bd_pins EightDisplayControl_0/rightR] [get_bd_pins smart_mux_0/port_out]
  connect_bd_net -net sw_1 [get_bd_ports sw] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins mux2p_0/select_port] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins smart_mux_0/select_port] [get_bd_pins xlslice_1/Dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port btnC -pg 1 -y 260 -defaultsOSRD
preplace port clk -pg 1 -y 220 -defaultsOSRD
preplace portBus sw -pg 1 -y 510 -defaultsOSRD -right
preplace portBus an -pg 1 -y 630 -defaultsOSRD
preplace portBus seg -pg 1 -y 650 -defaultsOSRD
preplace inst EightDisplayControl_0 -pg 1 -lvl 5 -y 640 -defaultsOSRD
preplace inst ROM_Reader1_0 -pg 1 -lvl 1 -y 390 -defaultsOSRD
preplace inst smart_mux_0 -pg 1 -lvl 4 -y 720 -defaultsOSRD
preplace inst xlslice_0 -pg 1 -lvl 2 -y 710 -defaultsOSRD
preplace inst ROM_Reader1_1 -pg 1 -lvl 1 -y 240 -defaultsOSRD
preplace inst xlslice_1 -pg 1 -lvl 3 -y 730 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 2 -y 410 -defaultsOSRD
preplace inst blk_mem_gen_1 -pg 1 -lvl 2 -y 90 -defaultsOSRD
preplace inst mux2p_0 -pg 1 -lvl 3 -y 620 -defaultsOSRD
preplace inst iterative_sorter_0 -pg 1 -lvl 2 -y 250 -defaultsOSRD
preplace inst iterative_sorter_1 -pg 1 -lvl 2 -y 580 -defaultsOSRD
preplace netloc iterative_sorter_1_data_out 1 2 1 560
preplace netloc ROM_Reader1_1_completed 1 1 1 N
preplace netloc mux2p_0_port_out 1 3 1 830
preplace netloc xlslice_1_Dout 1 3 1 N
preplace netloc blk_mem_gen_1_douta 1 0 2 40 110 NJ
preplace netloc smart_mux_0_port_out 1 4 1 N
preplace netloc btnC_1 1 0 2 20 320 320
preplace netloc ROM_Reader1_0_completed 1 1 1 280
preplace netloc iterative_sorter_0_data_out 1 2 1 570
preplace netloc ROM_Reader1_1_data_out 1 1 1 290
preplace netloc clk_1 1 0 5 30 310 310 500 NJ 500 NJ 500 1090
preplace netloc ROM_Reader1_0_addr 1 1 1 300
preplace netloc blk_mem_gen_0_douta 1 0 2 40 460 NJ
preplace netloc EightDisplayControl_0_select_display 1 5 1 NJ
preplace netloc sw_1 1 1 5 300 660 580 510 NJ 510 NJ 510 NJ
preplace netloc ROM_Reader1_0_data_out 1 1 1 290
preplace netloc ROM_Reader1_1_addr 1 1 1 290
preplace netloc EightDisplayControl_0_segments 1 5 1 NJ
preplace netloc xlslice_0_Dout 1 2 1 NJ
levelinfo -pg 1 0 160 440 710 960 1230 1390 -top 0 -bot 780
",
}

  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


