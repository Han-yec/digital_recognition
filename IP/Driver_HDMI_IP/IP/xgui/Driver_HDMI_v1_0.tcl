# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  ipgui::add_param $IPINST -name "Component_Name"
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  ipgui::add_param $IPINST -name "H_ACTIVE_1280_720" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_ACTIVE_1920_1080" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_BP_1280_720" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_BP_1920_1080" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_FP_1280_720" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_FP_1920_1080" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_SYNC_1280_720" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_SYNC_1920_1080" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_TOTAL_1280_720" -parent ${Page_0}
  ipgui::add_param $IPINST -name "H_TOTAL_1920_1080" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_ACTIVE_1280_720" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_ACTIVE_1920_1080" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_BP_1280_720" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_BP_1920_1080" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_FP_1280_720" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_FP_1920_1080" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_SYNC_1280_720" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_SYNC_1920_1080" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_TOTAL_1280_720" -parent ${Page_0}
  ipgui::add_param $IPINST -name "V_TOTAL_1920_1080" -parent ${Page_0}


}

proc update_PARAM_VALUE.H_ACTIVE_1280_720 { PARAM_VALUE.H_ACTIVE_1280_720 } {
	# Procedure called to update H_ACTIVE_1280_720 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_ACTIVE_1280_720 { PARAM_VALUE.H_ACTIVE_1280_720 } {
	# Procedure called to validate H_ACTIVE_1280_720
	return true
}

proc update_PARAM_VALUE.H_ACTIVE_1920_1080 { PARAM_VALUE.H_ACTIVE_1920_1080 } {
	# Procedure called to update H_ACTIVE_1920_1080 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_ACTIVE_1920_1080 { PARAM_VALUE.H_ACTIVE_1920_1080 } {
	# Procedure called to validate H_ACTIVE_1920_1080
	return true
}

proc update_PARAM_VALUE.H_BP_1280_720 { PARAM_VALUE.H_BP_1280_720 } {
	# Procedure called to update H_BP_1280_720 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_BP_1280_720 { PARAM_VALUE.H_BP_1280_720 } {
	# Procedure called to validate H_BP_1280_720
	return true
}

proc update_PARAM_VALUE.H_BP_1920_1080 { PARAM_VALUE.H_BP_1920_1080 } {
	# Procedure called to update H_BP_1920_1080 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_BP_1920_1080 { PARAM_VALUE.H_BP_1920_1080 } {
	# Procedure called to validate H_BP_1920_1080
	return true
}

proc update_PARAM_VALUE.H_FP_1280_720 { PARAM_VALUE.H_FP_1280_720 } {
	# Procedure called to update H_FP_1280_720 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_FP_1280_720 { PARAM_VALUE.H_FP_1280_720 } {
	# Procedure called to validate H_FP_1280_720
	return true
}

proc update_PARAM_VALUE.H_FP_1920_1080 { PARAM_VALUE.H_FP_1920_1080 } {
	# Procedure called to update H_FP_1920_1080 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_FP_1920_1080 { PARAM_VALUE.H_FP_1920_1080 } {
	# Procedure called to validate H_FP_1920_1080
	return true
}

proc update_PARAM_VALUE.H_SYNC_1280_720 { PARAM_VALUE.H_SYNC_1280_720 } {
	# Procedure called to update H_SYNC_1280_720 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_SYNC_1280_720 { PARAM_VALUE.H_SYNC_1280_720 } {
	# Procedure called to validate H_SYNC_1280_720
	return true
}

proc update_PARAM_VALUE.H_SYNC_1920_1080 { PARAM_VALUE.H_SYNC_1920_1080 } {
	# Procedure called to update H_SYNC_1920_1080 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_SYNC_1920_1080 { PARAM_VALUE.H_SYNC_1920_1080 } {
	# Procedure called to validate H_SYNC_1920_1080
	return true
}

proc update_PARAM_VALUE.H_TOTAL_1280_720 { PARAM_VALUE.H_TOTAL_1280_720 } {
	# Procedure called to update H_TOTAL_1280_720 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_TOTAL_1280_720 { PARAM_VALUE.H_TOTAL_1280_720 } {
	# Procedure called to validate H_TOTAL_1280_720
	return true
}

proc update_PARAM_VALUE.H_TOTAL_1920_1080 { PARAM_VALUE.H_TOTAL_1920_1080 } {
	# Procedure called to update H_TOTAL_1920_1080 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.H_TOTAL_1920_1080 { PARAM_VALUE.H_TOTAL_1920_1080 } {
	# Procedure called to validate H_TOTAL_1920_1080
	return true
}

proc update_PARAM_VALUE.V_ACTIVE_1280_720 { PARAM_VALUE.V_ACTIVE_1280_720 } {
	# Procedure called to update V_ACTIVE_1280_720 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_ACTIVE_1280_720 { PARAM_VALUE.V_ACTIVE_1280_720 } {
	# Procedure called to validate V_ACTIVE_1280_720
	return true
}

proc update_PARAM_VALUE.V_ACTIVE_1920_1080 { PARAM_VALUE.V_ACTIVE_1920_1080 } {
	# Procedure called to update V_ACTIVE_1920_1080 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_ACTIVE_1920_1080 { PARAM_VALUE.V_ACTIVE_1920_1080 } {
	# Procedure called to validate V_ACTIVE_1920_1080
	return true
}

proc update_PARAM_VALUE.V_BP_1280_720 { PARAM_VALUE.V_BP_1280_720 } {
	# Procedure called to update V_BP_1280_720 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_BP_1280_720 { PARAM_VALUE.V_BP_1280_720 } {
	# Procedure called to validate V_BP_1280_720
	return true
}

proc update_PARAM_VALUE.V_BP_1920_1080 { PARAM_VALUE.V_BP_1920_1080 } {
	# Procedure called to update V_BP_1920_1080 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_BP_1920_1080 { PARAM_VALUE.V_BP_1920_1080 } {
	# Procedure called to validate V_BP_1920_1080
	return true
}

proc update_PARAM_VALUE.V_FP_1280_720 { PARAM_VALUE.V_FP_1280_720 } {
	# Procedure called to update V_FP_1280_720 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_FP_1280_720 { PARAM_VALUE.V_FP_1280_720 } {
	# Procedure called to validate V_FP_1280_720
	return true
}

proc update_PARAM_VALUE.V_FP_1920_1080 { PARAM_VALUE.V_FP_1920_1080 } {
	# Procedure called to update V_FP_1920_1080 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_FP_1920_1080 { PARAM_VALUE.V_FP_1920_1080 } {
	# Procedure called to validate V_FP_1920_1080
	return true
}

proc update_PARAM_VALUE.V_SYNC_1280_720 { PARAM_VALUE.V_SYNC_1280_720 } {
	# Procedure called to update V_SYNC_1280_720 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_SYNC_1280_720 { PARAM_VALUE.V_SYNC_1280_720 } {
	# Procedure called to validate V_SYNC_1280_720
	return true
}

proc update_PARAM_VALUE.V_SYNC_1920_1080 { PARAM_VALUE.V_SYNC_1920_1080 } {
	# Procedure called to update V_SYNC_1920_1080 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_SYNC_1920_1080 { PARAM_VALUE.V_SYNC_1920_1080 } {
	# Procedure called to validate V_SYNC_1920_1080
	return true
}

proc update_PARAM_VALUE.V_TOTAL_1280_720 { PARAM_VALUE.V_TOTAL_1280_720 } {
	# Procedure called to update V_TOTAL_1280_720 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_TOTAL_1280_720 { PARAM_VALUE.V_TOTAL_1280_720 } {
	# Procedure called to validate V_TOTAL_1280_720
	return true
}

proc update_PARAM_VALUE.V_TOTAL_1920_1080 { PARAM_VALUE.V_TOTAL_1920_1080 } {
	# Procedure called to update V_TOTAL_1920_1080 when any of the dependent parameters in the arguments change
}

proc validate_PARAM_VALUE.V_TOTAL_1920_1080 { PARAM_VALUE.V_TOTAL_1920_1080 } {
	# Procedure called to validate V_TOTAL_1920_1080
	return true
}


proc update_MODELPARAM_VALUE.H_ACTIVE_1280_720 { MODELPARAM_VALUE.H_ACTIVE_1280_720 PARAM_VALUE.H_ACTIVE_1280_720 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_ACTIVE_1280_720}] ${MODELPARAM_VALUE.H_ACTIVE_1280_720}
}

proc update_MODELPARAM_VALUE.H_FP_1280_720 { MODELPARAM_VALUE.H_FP_1280_720 PARAM_VALUE.H_FP_1280_720 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_FP_1280_720}] ${MODELPARAM_VALUE.H_FP_1280_720}
}

proc update_MODELPARAM_VALUE.H_SYNC_1280_720 { MODELPARAM_VALUE.H_SYNC_1280_720 PARAM_VALUE.H_SYNC_1280_720 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_SYNC_1280_720}] ${MODELPARAM_VALUE.H_SYNC_1280_720}
}

proc update_MODELPARAM_VALUE.H_BP_1280_720 { MODELPARAM_VALUE.H_BP_1280_720 PARAM_VALUE.H_BP_1280_720 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_BP_1280_720}] ${MODELPARAM_VALUE.H_BP_1280_720}
}

proc update_MODELPARAM_VALUE.V_ACTIVE_1280_720 { MODELPARAM_VALUE.V_ACTIVE_1280_720 PARAM_VALUE.V_ACTIVE_1280_720 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_ACTIVE_1280_720}] ${MODELPARAM_VALUE.V_ACTIVE_1280_720}
}

proc update_MODELPARAM_VALUE.V_FP_1280_720 { MODELPARAM_VALUE.V_FP_1280_720 PARAM_VALUE.V_FP_1280_720 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_FP_1280_720}] ${MODELPARAM_VALUE.V_FP_1280_720}
}

proc update_MODELPARAM_VALUE.V_SYNC_1280_720 { MODELPARAM_VALUE.V_SYNC_1280_720 PARAM_VALUE.V_SYNC_1280_720 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_SYNC_1280_720}] ${MODELPARAM_VALUE.V_SYNC_1280_720}
}

proc update_MODELPARAM_VALUE.V_BP_1280_720 { MODELPARAM_VALUE.V_BP_1280_720 PARAM_VALUE.V_BP_1280_720 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_BP_1280_720}] ${MODELPARAM_VALUE.V_BP_1280_720}
}

proc update_MODELPARAM_VALUE.H_TOTAL_1280_720 { MODELPARAM_VALUE.H_TOTAL_1280_720 PARAM_VALUE.H_TOTAL_1280_720 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_TOTAL_1280_720}] ${MODELPARAM_VALUE.H_TOTAL_1280_720}
}

proc update_MODELPARAM_VALUE.V_TOTAL_1280_720 { MODELPARAM_VALUE.V_TOTAL_1280_720 PARAM_VALUE.V_TOTAL_1280_720 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_TOTAL_1280_720}] ${MODELPARAM_VALUE.V_TOTAL_1280_720}
}

proc update_MODELPARAM_VALUE.H_ACTIVE_1920_1080 { MODELPARAM_VALUE.H_ACTIVE_1920_1080 PARAM_VALUE.H_ACTIVE_1920_1080 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_ACTIVE_1920_1080}] ${MODELPARAM_VALUE.H_ACTIVE_1920_1080}
}

proc update_MODELPARAM_VALUE.H_FP_1920_1080 { MODELPARAM_VALUE.H_FP_1920_1080 PARAM_VALUE.H_FP_1920_1080 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_FP_1920_1080}] ${MODELPARAM_VALUE.H_FP_1920_1080}
}

proc update_MODELPARAM_VALUE.H_SYNC_1920_1080 { MODELPARAM_VALUE.H_SYNC_1920_1080 PARAM_VALUE.H_SYNC_1920_1080 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_SYNC_1920_1080}] ${MODELPARAM_VALUE.H_SYNC_1920_1080}
}

proc update_MODELPARAM_VALUE.H_BP_1920_1080 { MODELPARAM_VALUE.H_BP_1920_1080 PARAM_VALUE.H_BP_1920_1080 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_BP_1920_1080}] ${MODELPARAM_VALUE.H_BP_1920_1080}
}

proc update_MODELPARAM_VALUE.V_ACTIVE_1920_1080 { MODELPARAM_VALUE.V_ACTIVE_1920_1080 PARAM_VALUE.V_ACTIVE_1920_1080 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_ACTIVE_1920_1080}] ${MODELPARAM_VALUE.V_ACTIVE_1920_1080}
}

proc update_MODELPARAM_VALUE.V_FP_1920_1080 { MODELPARAM_VALUE.V_FP_1920_1080 PARAM_VALUE.V_FP_1920_1080 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_FP_1920_1080}] ${MODELPARAM_VALUE.V_FP_1920_1080}
}

proc update_MODELPARAM_VALUE.V_SYNC_1920_1080 { MODELPARAM_VALUE.V_SYNC_1920_1080 PARAM_VALUE.V_SYNC_1920_1080 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_SYNC_1920_1080}] ${MODELPARAM_VALUE.V_SYNC_1920_1080}
}

proc update_MODELPARAM_VALUE.V_BP_1920_1080 { MODELPARAM_VALUE.V_BP_1920_1080 PARAM_VALUE.V_BP_1920_1080 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_BP_1920_1080}] ${MODELPARAM_VALUE.V_BP_1920_1080}
}

proc update_MODELPARAM_VALUE.H_TOTAL_1920_1080 { MODELPARAM_VALUE.H_TOTAL_1920_1080 PARAM_VALUE.H_TOTAL_1920_1080 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.H_TOTAL_1920_1080}] ${MODELPARAM_VALUE.H_TOTAL_1920_1080}
}

proc update_MODELPARAM_VALUE.V_TOTAL_1920_1080 { MODELPARAM_VALUE.V_TOTAL_1920_1080 PARAM_VALUE.V_TOTAL_1920_1080 } {
	# Procedure called to set VHDL generic/Verilog parameter value(s) based on TCL parameter value
	set_property value [get_property value ${PARAM_VALUE.V_TOTAL_1920_1080}] ${MODELPARAM_VALUE.V_TOTAL_1920_1080}
}

