
################################################################
# This is a generated script based on design: project
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
# source project_script.tcl

# If you do not already have a project created,
# you can create a project using the following command:
#    create_project project_1 myproj -part xc7a100tcsg324-1

# CHECKING IF PROJECT EXISTS
if { [get_projects -quiet] eq "" } {
   puts "ERROR: Please open or create a project!"
   return 1
}



# CHANGE DESIGN NAME HERE
set design_name project

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

  # Create instance: EightDisplayControl_0, and set properties
  set EightDisplayControl_0 [ create_bd_cell -type ip -vlnv ua.pt:user:EightDisplayControl:1.0 EightDisplayControl_0 ]

  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.3 blk_mem_gen_0 ]
  set_property -dict [ list \
CONFIG.Byte_Size {9} \
CONFIG.Coe_File {../../../../../../../../../Memoria/16words_32bits_1.coe} \
CONFIG.Enable_32bit_Address {false} \
CONFIG.Enable_A {Always_Enabled} \
CONFIG.Load_Init_File {true} \
CONFIG.Memory_Type {Single_Port_ROM} \
CONFIG.Port_A_Write_Rate {0} \
CONFIG.Register_PortA_Output_of_Memory_Primitives {false} \
CONFIG.Use_Byte_Write_Enable {false} \
CONFIG.Use_RSTA_Pin {false} \
CONFIG.Write_Depth_A {16} \
CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: circuitp_0, and set properties
  set circuitp_0 [ create_bd_cell -type ip -vlnv user.org:user:circuitp:1.0 circuitp_0 ]
  set_property -dict [ list \
CONFIG.data_width {8} \
CONFIG.max {200} \
 ] $circuitp_0

  # Create instance: hw_0, and set properties
  set hw_0 [ create_bd_cell -type ip -vlnv user.org:user:hw:1.0 hw_0 ]
  set_property -dict [ list \
CONFIG.out_len {8} \
CONFIG.sw_len {32} \
 ] $hw_0

  # Create instance: xlslice_0, and set properties
  set xlslice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_0 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {3} \
CONFIG.DIN_TO {0} \
CONFIG.DIN_WIDTH {8} \
CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_0

  # Create instance: xlslice_1, and set properties
  set xlslice_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 xlslice_1 ]
  set_property -dict [ list \
CONFIG.DIN_FROM {7} \
CONFIG.DIN_TO {4} \
CONFIG.DIN_WIDTH {8} \
CONFIG.DOUT_WIDTH {4} \
 ] $xlslice_1

  # Create port connections
  connect_bd_net -net EightDisplayControl_0_segments [get_bd_ports seg] [get_bd_pins EightDisplayControl_0/segments]
  connect_bd_net -net EightDisplayControl_0_select_display [get_bd_ports an] [get_bd_pins EightDisplayControl_0/select_display]
  connect_bd_net -net blk_mem_gen_0_douta [get_bd_pins blk_mem_gen_0/douta] [get_bd_pins hw_0/in_data]
  connect_bd_net -net btnC_1 [get_bd_ports btnC] [get_bd_pins circuitp_0/btnC]
  connect_bd_net -net circuit_p_0_data_out [get_bd_pins circuitp_0/data_out] [get_bd_pins xlslice_0/Din] [get_bd_pins xlslice_1/Din]
  connect_bd_net -net circuitp_0_addr_rom [get_bd_pins blk_mem_gen_0/addra] [get_bd_pins circuitp_0/addr_rom]
  connect_bd_net -net circuitp_0_led [get_bd_ports led] [get_bd_pins circuitp_0/led]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins EightDisplayControl_0/clk] [get_bd_pins blk_mem_gen_0/clka] [get_bd_pins circuitp_0/clk]
  connect_bd_net -net hw_0_out_data [get_bd_pins circuitp_0/data_in] [get_bd_pins hw_0/out_data]
  connect_bd_net -net sw_1 [get_bd_ports sw] [get_bd_pins circuitp_0/addr_array]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins EightDisplayControl_0/rightR] [get_bd_pins xlslice_0/Dout]
  connect_bd_net -net xlslice_1_Dout [get_bd_pins EightDisplayControl_0/near_rightR] [get_bd_pins xlslice_1/Dout]

  # Create address segments

  # Perform GUI Layout
  regenerate_bd_layout -layout_string {
   guistr: "# # String gsaved with Nlview 6.5.5  2015-06-26 bk=1.3371 VDI=38 GEI=35 GUI=JA:1.8
#  -string -flagsOSRD
preplace port btnC -pg 1 -y 240 -defaultsOSRD
preplace port clk -pg 1 -y 200 -defaultsOSRD
preplace portBus sw -pg 1 -y 260 -defaultsOSRD
preplace portBus an -pg 1 -y 120 -defaultsOSRD
preplace portBus led -pg 1 -y 430 -defaultsOSRD
preplace portBus seg -pg 1 -y 140 -defaultsOSRD
preplace inst hw_0 -pg 1 -lvl 1 -y 310 -defaultsOSRD
preplace inst EightDisplayControl_0 -pg 1 -lvl 4 -y 130 -defaultsOSRD
preplace inst xlslice_0 -pg 1 -lvl 3 -y 210 -defaultsOSRD
preplace inst xlslice_1 -pg 1 -lvl 3 -y 120 -defaultsOSRD
preplace inst circuitp_0 -pg 1 -lvl 2 -y 280 -defaultsOSRD
preplace inst blk_mem_gen_0 -pg 1 -lvl 3 -y 340 -defaultsOSRD
preplace netloc circuitp_0_addr_rom 1 2 1 550
preplace netloc xlslice_1_Dout 1 3 1 NJ
preplace netloc btnC_1 1 0 2 NJ 240 NJ
preplace netloc circuit_p_0_data_out 1 2 1 540
preplace netloc clk_1 1 0 4 NJ 200 280 200 560 50 NJ
preplace netloc blk_mem_gen_0_douta 1 0 3 20 360 NJ 360 NJ
preplace netloc sw_1 1 0 2 NJ 260 NJ
preplace netloc hw_0_out_data 1 1 1 NJ
preplace netloc EightDisplayControl_0_select_display 1 4 1 NJ
preplace netloc EightDisplayControl_0_segments 1 4 1 NJ
preplace netloc circuitp_0_led 1 2 3 NJ 430 NJ 430 NJ
preplace netloc xlslice_0_Dout 1 3 1 NJ
levelinfo -pg 1 0 140 410 670 920 1080 -top 0 -bot 450
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


