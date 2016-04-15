# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "how_many_words" -parent ${Page_0}
  ipgui::add_param $IPINST -name "word_length" -parent ${Page_0}


}

proc update_PARAM_VALUE.how_many_words { PARAM_VALUE.how_many_words } {
	# Procedure called to update how_many_words when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.how_many_words { PARAM_VALUE.how_many_words } {
	# Procedure called to validate how_many_words
	return true
}

proc update_PARAM_VALUE.word_length { PARAM_VALUE.word_length } {
	# Procedure called to update word_length when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.word_length { PARAM_VALUE.word_length } {
	# Procedure called to validate word_length
	return true
}


proc update_MODELPARAM_VALUE.how_many_words { MODELPARAM_VALUE.how_many_words PARAM_VALUE.how_many_words } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.how_many_words}] ${MODELPARAM_VALUE.how_many_words}
}

proc update_MODELPARAM_VALUE.word_length { MODELPARAM_VALUE.word_length PARAM_VALUE.word_length } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.word_length}] ${MODELPARAM_VALUE.word_length}
}

