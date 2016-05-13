set_property SRC_FILE_INFO {cfile:/media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_microblaze_0_0/DMB1_microblaze_0_0.xdc rfile:../../../ex2.srcs/sources_1/bd/DMB1/ip/DMB1_microblaze_0_0/DMB1_microblaze_0_0.xdc id:1 order:EARLY scoped_inst:DMB1_i/microblaze_0/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_mdm_1_0/DMB1_mdm_1_0.xdc rfile:../../../ex2.srcs/sources_1/bd/DMB1/ip/DMB1_mdm_1_0/DMB1_mdm_1_0.xdc id:2 order:EARLY scoped_inst:DMB1_i/mdm_1/U0} [current_design]
set_property SRC_FILE_INFO {cfile:/media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/sources_1/bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0.xdc rfile:../../../ex2.srcs/sources_1/bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0.xdc id:3 order:EARLY scoped_inst:DMB1_i/clk_wiz_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex2/ex2.srcs/constrs_1/imports/Aula1_15Feb2016/Nexys4_Master.xdc rfile:../../../ex2.srcs/constrs_1/imports/Aula1_15Feb2016/Nexys4_Master.xdc id:4} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
set_ip_msg_config -idlist { DPOP-3 PDCN-1569 CDC-1 CDC-4 CDC-7 TIMING-9 TIMING-10 }
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_ip_msg_config -idlist { CDC-1 CDCM-1 REQP-1851 TIMING-2 TIMING-4 TIMING-9 TIMING-10 TIMING-14 }
set_property src_info {type:SCOPED_XDC file:3 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:XDC file:4 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E3 [get_ports clk]
set_property src_info {type:XDC file:4 line:191 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN C12 [get_ports btnCpuReset]
set_property src_info {type:XDC file:4 line:194 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E16 [get_ports btnC]
