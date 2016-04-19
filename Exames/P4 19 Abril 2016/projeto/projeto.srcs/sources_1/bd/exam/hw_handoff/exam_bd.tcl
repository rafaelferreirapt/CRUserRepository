
################################################################
# This is a generated script based on design: exam
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
# source exam_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7a100tcsg324-1

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name exam

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
  set btnL [ create_bd_port -dir I btnL ]
  set btnR [ create_bd_port -dir I btnR ]
  set clk [ create_bd_port -dir I clk ]
  set led [ create_bd_port -dir O -from 3 -to 0 led ]
  set seg [ create_bd_port -dir O -from 6 -to 0 seg ]

  # Create instance: DC32_0, and set properties
  set DC32_0 [ create_bd_cell -type ip -vlnv ua.pt:user:DC32:1.0 DC32_0 ]

  # Create instance: ROM_Reader1_0, and set properties
  set ROM_Reader1_0 [ create_bd_cell -type ip -vlnv user.org:user:ROM_Reader1:1.0 ROM_Reader1_0 ]
  set_property -dict [ list \
CONFIG.address_bits {3} \
CONFIG.data_width {4} \
 ] $ROM_Reader1_0

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Enable_B {Always_Enabled} \
CONFIG.Fill_Remaining_Memory_Locations {true} \
CONFIG.Memory_Type {True_Dual_Port_RAM} \
CONFIG.Port_B_Clock {100} \
CONFIG.Port_B_Enable_Rate {100} \
CONFIG.Port_B_Write_Rate {50} \
CONFIG.Read_Width_A {4} \
CONFIG.Read_Width_B {4} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Depth_A {8} \
CONFIG.Write_Width_A {32} \
CONFIG.Write_Width_B {32} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: circuit_c_0, and set properties
  set circuit_c_0 [ create_bd_cell -type ip -vlnv user.org:user:circuit_c:1.0 circuit_c_0 ]

  # Create instance: circuit_c_1, and set properties
  set circuit_c_1 [ create_bd_cell -type ip -vlnv user.org:user:circuit_c:1.0 circuit_c_1 ]

  # Create instance: circuit_c_2, and set properties
  set circuit_c_2 [ create_bd_cell -type ip -vlnv user.org:user:circuit_c:1.0 circuit_c_2 ]

  # Create instance: circuit_c_3, and set properties
  set circuit_c_3 [ create_bd_cell -type ip -vlnv user.org:user:circuit_c:1.0 circuit_c_3 ]

  # Create instance: circuito_m_0, and set properties
  set circuito_m_0 [ create_bd_cell -type ip -vlnv user.org:user:circuito_m:1.0 circuito_m_0 ]

  # Create instance: clock_divider_0, and set properties
  set clock_divider_0 [ create_bd_cell -type ip -vlnv ua.pt:user:clock_divider:1.0 clock_divider_0 ]

  # Create instance: dist_mem_gen_0, and set properties
  set dist_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:dist_mem_gen:8.0 dist_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.coefficient_file {../../../../../../../memoria.coe} \
CONFIG.data_width {4} \
CONFIG.depth {16} \
CONFIG.memory_type {rom} \
 ] $dist_mem_gen_0

  # Create instance: mux2p_0, and set properties
  set mux2p_0 [ create_bd_cell -type ip -vlnv user.org:user:mux2p:1.0 mux2p_0 ]
  set_property -dict [ list \
CONFIG.data_width {32} \
 ] $mux2p_0

  # Create instance: showRam_0, and set properties
  set showRam_0 [ create_bd_cell -type ip -vlnv user.org:user:showRam:1.0 showRam_0 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {3} \
CONFIG.IN1_WIDTH {1} \
 ] $xlconcat_0

  # Create instance: xlconcat_1, and set properties
  set xlconcat_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_1 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {16} \
CONFIG.IN1_WIDTH {16} \
 ] $xlconcat_1

  # Create instance: xlconcat_2, and set properties
  set xlconcat_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_2 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {16} \
CONFIG.IN1_WIDTH {16} \
 ] $xlconcat_2

  # Create instance: xlconcat_3, and set properties
  set xlconcat_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_3 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {4} \
CONFIG.IN1_WIDTH {2} \
 ] $xlconcat_3

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]

  # Create instance: xlconstant_2, and set properties
  set xlconstant_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_2 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {6} \
 ] $xlconstant_2

  # Create instance: xlconstant_3, and set properties
  set xlconstant_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_3 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
 ] $xlconstant_3

  # Create instance: xlconstant_4, and set properties
  set xlconstant_4 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_4 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {2} \
 ] $xlconstant_4

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {15} \
CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {31} \
CONFIG.DIN_TO {16} \
CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_1

  # Create instance: xlslice_2, and set properties
  set xlslice_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_2 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {15} \
CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_2

  # Create instance: xlslice_3, and set properties
  set xlslice_3 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_3 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {31} \
CONFIG.DIN_TO {16} \
CONFIG.DOUT_WIDTH {16} \
 ] $xlslice_3

  # Create port connections
  connect_bd_net -net DC32_0_segments [get_bd_ports seg] [get_bd_pins DC32_0/segments]
  connect_bd_net -net DC32_0_select_display [get_bd_ports an] [get_bd_pins DC32_0/select_display]
  connect_bd_net -net ROM_Reader1_0_addr [get_bd_pins ROM_Reader1_0/addr] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net ROM_Reader1_0_data_out [get_bd_pins ROM_Reader1_0/data_out] [get_bd_pins mux2p_0/port1] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net blk_mem_gen_0_doutb [get_bd_ports led] [get_bd_pins blk_mem_gen_0/doutb]
  connect_bd_net -net btnL_1 [get_bd_ports btnL] [get_bd_pins mux2p_0/select_port]
  connect_bd_net -net btnR_1 [get_bd_ports btnR] [get_bd_pins ROM_Reader1_0/rst]
  connect_bd_net -net circuit_c_0_data_out [get_bd_pins circuit_c_0/data_out] [get_bd_pins xlconcat_1/In0]
  connect_bd_net -net circuit_c_1_data_out [get_bd_pins circuit_c_1/data_out] [get_bd_pins xlconcat_1/In1]
  connect_bd_net -net circuit_c_2_data_out [get_bd_pins circuit_c_2/data_out] [get_bd_pins xlconcat_2/In0]
  connect_bd_net -net circuit_c_3_data_out [get_bd_pins circuit_c_3/data_out] [get_bd_pins xlconcat_2/In1]
  connect_bd_net -net circuito_m_0_data_out [get_bd_pins circuito_m_0/data_out] [get_bd_pins xlslice_2/Din] [get_bd_pins xlslice_3/Din]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins DC32_0/clk] [get_bd_pins ROM_Reader1_0/clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins blk_mem_gen_0/clkb] [get_bd_pins clock_divider_0/clk]
  connect_bd_net -net clock_divider_0_divided_clk [get_bd_pins clock_divider_0/divided_clk] [get_bd_pins showRam_0/clk]
  connect_bd_net -net dist_mem_gen_0_spo [get_bd_pins ROM_Reader1_0/data_in] [get_bd_pins dist_mem_gen_0/spo]
  connect_bd_net -net mux2p_0_port_out [get_bd_pins DC32_0/data_in] [get_bd_pins mux2p_0/port_out]
  connect_bd_net -net showRam_0_addr_out [get_bd_pins showRam_0/addr_out] [get_bd_pins xlconcat_3/In0]
  connect_bd_net -net xlconcat_0_dout [get_bd_pins dist_mem_gen_0/a] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconcat_1_dout [get_bd_pins circuito_m_0/data_in] [get_bd_pins xlconcat_1/dout]
  connect_bd_net -net xlconcat_2_dout [get_bd_pins blk_mem_gen_0/dina] [get_bd_pins mux2p_0/port0] [get_bd_pins xlconcat_2/dout]
  connect_bd_net -net xlconcat_3_dout [get_bd_pins blk_mem_gen_0/addrb] [get_bd_pins xlconcat_3/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins blk_mem_gen_0/wea] [get_bd_pins xlconstant_1/dout]
  connect_bd_net -net xlconstant_2_dout [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins xlconstant_2/dout]
  connect_bd_net -net xlconstant_3_dout [get_bd_pins blk_mem_gen_0/web] [get_bd_pins xlconstant_3/dout]
  connect_bd_net -net xlconstant_4_dout [get_bd_pins xlconcat_3/In1] [get_bd_pins xlconstant_4/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins circuit_c_0/data_in] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins circuit_c_1/data_in] [get_bd_pins xlslice_1/Dout]
  connect_bd_net -net xlslice_2_Dout [get_bd_pins circuit_c_2/data_in] [get_bd_pins xlslice_2/Dout]
  connect_bd_net -net xlslice_3_Dout [get_bd_pins circuit_c_3/data_in] [get_bd_pins xlslice_3/Dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port btnL -pg 1 -y 80 -defaultsOSRD
preplace port btnR -pg 1 -y 220 -defaultsOSRD
preplace port clk -pg 1 -y 200 -defaultsOSRD
preplace portBus an -pg 1 -y 50 -defaultsOSRD
preplace portBus led -pg 1 -y 450 -defaultsOSRD
preplace portBus seg -pg 1 -y 70 -defaultsOSRD
preplace inst circuit_c_1 -pg 1 -lvl 6 -y 220 -defaultsOSRD
preplace inst ROM_Reader1_0 -pg 1 -lvl 4 -y 200 -defaultsOSRD
preplace inst circuit_c_2 -pg 1 -lvl 10 -y 130 -defaultsOSRD
preplace inst xlslice_0 -pg 1 -lvl 5 -y 130 -defaultsOSRD
preplace inst clock_divider_0 -pg 1 -lvl 4 -y 370 -defaultsOSRD
preplace inst circuit_c_3 -pg 1 -lvl 10 -y 220 -defaultsOSRD
preplace inst xlslice_1 -pg 1 -lvl 5 -y 220 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 1 -y 160 -defaultsOSRD
preplace inst xlconstant_1 -pg 1 -lvl 12 -y 290 -defaultsOSRD
preplace inst xlslice_2 -pg 1 -lvl 9 -y 130 -defaultsOSRD
preplace inst dist_mem_gen_0 -pg 1 -lvl 3 -y 150 -defaultsOSRD
preplace inst xlconstant_2 -pg 1 -lvl 12 -y 180 -defaultsOSRD
preplace inst circuito_m_0 -pg 1 -lvl 8 -y 140 -defaultsOSRD
preplace inst xlslice_3 -pg 1 -lvl 9 -y 220 -defaultsOSRD
preplace inst xlconstant_3 -pg 1 -lvl 12 -y 400 -defaultsOSRD
preplace inst DC32_0 -pg 1 -lvl 13 -y 60 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 2 -y 150 -defaultsOSRD
preplace inst xlconstant_4 -pg 1 -lvl 5 -y 460 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 13 -y 290 -defaultsOSRD
preplace inst xlconcat_1 -pg 1 -lvl 7 -y 140 -defaultsOSRD
preplace inst xlconcat_2 -pg 1 -lvl 11 -y 140 -defaultsOSRD
preplace inst xlconcat_3 -pg 1 -lvl 6 -y 450 -defaultsOSRD
preplace inst mux2p_0 -pg 1 -lvl 12 -y 70 -defaultsOSRD
preplace inst showRam_0 -pg 1 -lvl 5 -y 370 -defaultsOSRD
preplace inst circuit_c_0 -pg 1 -lvl 6 -y 130 -defaultsOSRD
preplace netloc xlconstant_1_dout 1 12 1 NJ
preplace netloc xlconstant_2_dout 1 12 1 NJ
preplace netloc xlslice_3_Dout 1 9 1 NJ
preplace netloc circuit_c_0_data_out 1 6 1 NJ
preplace netloc xlslice_1_Dout 1 5 1 NJ
preplace netloc mux2p_0_port_out 1 12 1 N
preplace netloc circuit_c_2_data_out 1 10 1 NJ
preplace netloc showRam_0_addr_out 1 5 1 NJ
preplace netloc xlconcat_1_dout 1 7 1 NJ
preplace netloc btnL_1 1 0 12 NJ 80 NJ 80 NJ 80 NJ 80 NJ 80 NJ 80 NJ 80 NJ 80 NJ 80 NJ 80 NJ 80 NJ
preplace netloc xlconcat_3_dout 1 6 7 NJ 340 NJ 340 NJ 340 NJ 340 NJ 340 NJ 340 2620
preplace netloc circuito_m_0_data_out 1 8 1 1710
preplace netloc DC32_0_select_display 1 13 1 NJ
preplace netloc xlconstant_0_dout 1 1 1 NJ
preplace netloc xlconcat_0_dout 1 2 1 NJ
preplace netloc dist_mem_gen_0_spo 1 3 1 550
preplace netloc clk_1 1 0 13 NJ 230 NJ 230 NJ 230 560 50 NJ 50 NJ 50 NJ 50 NJ 50 NJ 50 NJ 50 NJ 50 NJ 230 2630
preplace netloc xlslice_2_Dout 1 9 1 NJ
preplace netloc ROM_Reader1_0_addr 1 1 4 160 210 NJ 210 NJ 130 810
preplace netloc xlconstant_4_dout 1 5 1 NJ
preplace netloc clock_divider_0_divided_clk 1 4 1 NJ
preplace netloc blk_mem_gen_0_doutb 1 12 2 2630 450 NJ
preplace netloc circuit_c_3_data_out 1 10 1 NJ
preplace netloc circuit_c_1_data_out 1 6 1 1260
preplace netloc ROM_Reader1_0_data_out 1 4 8 820 70 NJ 70 NJ 70 NJ 70 NJ 70 NJ 70 NJ 70 NJ
preplace netloc DC32_0_segments 1 13 1 NJ
preplace netloc xlconcat_2_dout 1 11 2 2380 240 NJ
preplace netloc btnR_1 1 0 4 NJ 220 NJ 220 NJ 220 NJ
preplace netloc xlconstant_3_dout 1 12 1 NJ
preplace netloc xlslice_0_Dout 1 5 1 NJ
levelinfo -pg 1 0 90 250 450 690 920 1140 1360 1590 1810 2040 2260 2500 2770 2930 -top 0 -bot 510
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


