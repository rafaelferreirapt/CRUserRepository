set_property SRC_FILE_INFO {cfile:k:/CR_MicroBlase/MB1/MB1.srcs/sources_1/bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0.xdc rfile:../../../MB1.srcs/sources_1/bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0.xdc id:1 order:EARLY scoped_inst:DMB1_i/clk_wiz_1/inst} [current_design]
set_property SRC_FILE_INFO {cfile:K:/CR_MicroBlase/MB1/MB1.srcs/constrs_1/imports/Aula1_15Feb2016/Nexys4_Master.xdc rfile:../../../MB1.srcs/constrs_1/imports/Aula1_15Feb2016/Nexys4_Master.xdc id:2} [current_design]
set_property src_info {type:SCOPED_XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1]] 0.1
set_property src_info {type:XDC file:2 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E3 [get_ports clk]
set_property src_info {type:XDC file:2 line:191 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN C12 [get_ports btnCpuReset]
