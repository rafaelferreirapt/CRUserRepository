# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir K:/CR_MicroBlase/MB1/MB1.cache/wt [current_project]
set_property parent.project_path K:/CR_MicroBlase/MB1/MB1.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
add_files K:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/DMB1.bd
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_microblaze_0_0/DMB1_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_microblaze_0_0/DMB1_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_microblaze_0_0/DMB1_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_dlmb_v10_0/DMB1_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_dlmb_v10_0/DMB1_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_ilmb_v10_0/DMB1_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_ilmb_v10_0/DMB1_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_dlmb_bram_if_cntlr_0/DMB1_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_ilmb_bram_if_cntlr_0/DMB1_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_lmb_bram_0/DMB1_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_mdm_1_0/DMB1_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_mdm_1_0/DMB1_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_mdm_1_0/DMB1_mdm_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_rst_clk_wiz_1_100M_0/DMB1_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_rst_clk_wiz_1_100M_0/DMB1_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_rst_clk_wiz_1_100M_0/DMB1_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all K:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/DMB1_ooc.xdc]
set_property is_locked true [get_files K:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/DMB1.bd]

read_vhdl -library xil_defaultlib K:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/hdl/DMB1_wrapper.vhd
read_xdc K:/CR_MicroBlase/MB1/MB1.srcs/constrs_1/imports/Aula1_15Feb2016/Nexys4_Master.xdc
set_property used_in_implementation false [get_files K:/CR_MicroBlase/MB1/MB1.srcs/constrs_1/imports/Aula1_15Feb2016/Nexys4_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]
synth_design -top DMB1_wrapper -part xc7a100tcsg324-1
write_checkpoint -noxdef DMB1_wrapper.dcp
catch { report_utilization -file DMB1_wrapper_utilization_synth.rpt -pb DMB1_wrapper_utilization_synth.pb }