# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "out_len" -parent ${Page_0}
  ipgui::add_param $IPINST -name "sw_len" -parent ${Page_0}


}

proc update_PARAM_VALUE.out_len { PARAM_VALUE.out_len } {
	# Procedure called to update out_len when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.out_len { PARAM_VALUE.out_len } {
	# Procedure called to validate out_len
	return true
}

proc update_PARAM_VALUE.sw_len { PARAM_VALUE.sw_len } {
	# Procedure called to update sw_len when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.sw_len { PARAM_VALUE.sw_len } {
	# Procedure called to validate sw_len
	return true
}


proc update_MODELPARAM_VALUE.sw_len { MODELPARAM_VALUE.sw_len PARAM_VALUE.sw_len } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.sw_len}] ${MODELPARAM_VALUE.sw_len}
}

proc update_MODELPARAM_VALUE.out_len { MODELPARAM_VALUE.out_len PARAM_VALUE.out_len } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.out_len}] ${MODELPARAM_VALUE.out_len}
}

