
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
  set btnC [ create_bd_port -dir I btnC ]
  set clk [ create_bd_port -dir I clk ]
  set led [ create_bd_port -dir O -from 15 -to 0 led ]
  set seg [ create_bd_port -dir O -from 6 -to 0 seg ]
  set sw [ create_bd_port -dir I -from 3 -to 0 sw ]

  # Create instance: DC32_0, and set properties
  set DC32_0 [ create_bd_cell -type ip -vlnv ua.pt:user:DC32:1.0 DC32_0 ]

  # Create instance: MaxNetworkExam_0, and set properties
  set MaxNetworkExam_0 [ create_bd_cell -type ip -vlnv user.org:user:MaxNetworkExam:1.0 MaxNetworkExam_0 ]

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
CONFIG.Coe_File {../../../../../../../exam.coe} \
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
CONFIG.Write_Depth_A {8} \
CONFIG.Write_Width_A {4} \
CONFIG.Write_Width_B {4} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: resetCircuit_0, and set properties
  set resetCircuit_0 [ create_bd_cell -type ip -vlnv user.org:user:resetCircuit:1.0 resetCircuit_0 ]

  # Create instance: xlconcat_0, and set properties
  set xlconcat_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconcat:2.1 xlconcat_0 ]
  set_property -dict [ list \
CONFIG.IN0_WIDTH {3} \
CONFIG.IN1_WIDTH {9} \
CONFIG.IN2_WIDTH {4} \
CONFIG.NUM_PORTS {3} \
 ] $xlconcat_0

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
CONFIG.CONST_VAL {0} \
CONFIG.CONST_WIDTH {9} \
 ] $xlconstant_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {31} \
CONFIG.DIN_TO {28} \
CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_0

  # Create port connections
  connect_bd_net -net DC32_0_segments [get_bd_ports seg] [get_bd_pins DC32_0/segments]
  connect_bd_net -net DC32_0_select_display [get_bd_ports an] [get_bd_pins DC32_0/select_display]
  connect_bd_net -net MaxNetworkExam_0_data_out [get_bd_pins MaxNetworkExam_0/data_out] [get_bd_pins xlslice_0/Din]
  connect_bd_net -net ROM_Reader1_0_addr [get_bd_pins ROM_Reader1_0/addr] [get_bd_pins blk_mem_gen_0/addra]
  connect_bd_net -net ROM_Reader1_0_data_out [get_bd_pins ROM_Reader1_0/data_out] [get_bd_pins resetCircuit_0/data_in]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins ROM_Reader1_0/data_in] [get_bd_pins blk_mem_gen_0/douta]
  connect_bd_net -net btnC_1 [get_bd_ports btnC] [get_bd_pins ROM_Reader1_0/rst] [get_bd_pins resetCircuit_0/reset]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins DC32_0/clk] [get_bd_pins ROM_Reader1_0/clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins resetCircuit_0/clk]
  connect_bd_net -net resetCircuit_0_data_out [get_bd_pins DC32_0/data_in] [get_bd_pins MaxNetworkExam_0/data_in] [get_bd_pins resetCircuit_0/data_out]
  connect_bd_net -net resetCircuit_0_hamming [get_bd_pins resetCircuit_0/hamming] [get_bd_pins xlconcat_0/In0]
  connect_bd_net -net sw_1 [get_bd_ports sw] [get_bd_pins resetCircuit_0/sw]
  connect_bd_net -net xlconcat_0_dout [get_bd_ports led] [get_bd_pins xlconcat_0/dout]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins xlconcat_0/In1] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins xlconcat_0/In2] [get_bd_pins xlslice_0/Dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port btnC -pg 1 -y 160 -defaultsOSRD
preplace port clk -pg 1 -y 70 -defaultsOSRD
preplace portBus sw -pg 1 -y 290 -defaultsOSRD
preplace portBus an -pg 1 -y 50 -defaultsOSRD
preplace portBus led -pg 1 -y 350 -defaultsOSRD
preplace portBus seg -pg 1 -y 70 -defaultsOSRD
preplace inst ROM_Reader1_0 -pg 1 -lvl 1 -y 140 -defaultsOSRD
preplace inst xlslice_0 -pg 1 -lvl 4 -y 250 -defaultsOSRD
preplace inst xlconstant_0 -pg 1 -lvl 4 -y 350 -defaultsOSRD
preplace inst xlconcat_0 -pg 1 -lvl 5 -y 350 -defaultsOSRD
preplace inst DC32_0 -pg 1 -lvl 5 -y 60 -defaultsOSRD
preplace inst MaxNetworkExam_0 -pg 1 -lvl 3 -y 250 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 2 -y 130 -defaultsOSRD
preplace inst resetCircuit_0 -pg 1 -lvl 2 -y 290 -defaultsOSRD
preplace netloc MaxNetworkExam_0_data_out 1 3 1 NJ
preplace netloc btnC_1 1 0 2 20 70 290
preplace netloc xlconstant_0_dout 1 4 1 NJ
preplace netloc xlconcat_0_dout 1 5 1 NJ
preplace netloc DC32_0_select_display 1 5 1 NJ
preplace netloc clk_1 1 0 5 10 40 320 40 NJ 40 NJ 40 NJ
preplace netloc ROM_Reader1_0_addr 1 1 1 300
preplace netloc resetCircuit_0_hamming 1 2 3 NJ 300 NJ 300 NJ
preplace netloc blk_mem_gen_0_douta 1 0 2 30 60 NJ
preplace netloc ROM_Reader1_0_data_out 1 1 1 280
preplace netloc sw_1 1 0 2 NJ 290 NJ
preplace netloc DC32_0_segments 1 5 1 NJ
preplace netloc xlslice_0_Dout 1 4 1 1020
preplace netloc resetCircuit_0_data_out 1 2 3 560 70 NJ 70 NJ
levelinfo -pg 1 -10 150 440 680 910 1160 1320 -top 0 -bot 420
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


