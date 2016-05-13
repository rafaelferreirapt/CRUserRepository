# 
# Synthesis run script generated by Vivado
# 

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.cache/wt [current_project]
set_property parent.project_path /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.xpr [current_project]
set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language VHDL [current_project]
add_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/DMB1.bd
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_microblaze_0_0/DMB1_microblaze_0_0.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_microblaze_0_0/DMB1_microblaze_0_0_ooc_debug.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_microblaze_0_0/DMB1_microblaze_0_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_dlmb_v10_0/DMB1_dlmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_dlmb_v10_0/DMB1_dlmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_ilmb_v10_0/DMB1_ilmb_v10_0.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_ilmb_v10_0/DMB1_ilmb_v10_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_dlmb_bram_if_cntlr_0/DMB1_dlmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_ilmb_bram_if_cntlr_0/DMB1_ilmb_bram_if_cntlr_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_lmb_bram_0/DMB1_lmb_bram_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_mdm_1_0/DMB1_mdm_1_0.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_mdm_1_0/DMB1_mdm_1_0_ooc_trace.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_mdm_1_0/DMB1_mdm_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0_board.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_rst_clk_wiz_1_100M_0/DMB1_rst_clk_wiz_1_100M_0_board.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_rst_clk_wiz_1_100M_0/DMB1_rst_clk_wiz_1_100M_0.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_rst_clk_wiz_1_100M_0/DMB1_rst_clk_wiz_1_100M_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_xbar_0/DMB1_xbar_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_auto_pc_0/DMB1_auto_pc_0_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_auto_pc_1/DMB1_auto_pc_1_ooc.xdc]
set_property used_in_implementation false [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/DMB1_ooc.xdc]
set_property is_locked true [get_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/DMB1.bd]

read_vhdl -library xil_defaultlib /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/hdl/DMB1_wrapper.vhd
foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/constrs_1/imports/Aula1_15Feb2016/Nexys4_Master.xdc
set_property used_in_implementation false [get_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/constrs_1/imports/Aula1_15Feb2016/Nexys4_Master.xdc]

read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top DMB1_wrapper -part xc7a100tcsg324-1


write_checkpoint -force -noxdef DMB1_wrapper.dcp

catch { report_utilization -file DMB1_wrapper_utilization_synth.rpt -pb DMB1_wrapper_utilization_synth.pb }