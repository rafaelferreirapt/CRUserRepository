proc start_step { step } {
  set stopFile ".stop.rst"
  if {[file isfile .stop.rst]} {
    puts ""
    puts "*** Halting run - EA reset detected ***"
    puts ""
    puts ""
    return -code error
  }
  set beginFile ".$step.begin.rst"
  set platform "$::tcl_platform(platform)"
  set user "$::tcl_platform(user)"
  set pid [pid]
  set host ""
  if { [string equal $platform unix] } {
    if { [info exist ::env(HOSTNAME)] } {
      set host $::env(HOSTNAME)
    }
  } else {
    if { [info exist ::env(COMPUTERNAME)] } {
      set host $::env(COMPUTERNAME)
    }
  }
  set ch [open $beginFile w]
  puts $ch "<?xml version=\"1.0\"?>"
  puts $ch "<ProcessHandle Version=\"1\" Minor=\"0\">"
  puts $ch "    <Process Command=\".planAhead.\" Owner=\"$user\" Host=\"$host\" Pid=\"$pid\">"
  puts $ch "    </Process>"
  puts $ch "</ProcessHandle>"
  close $ch
}

proc end_step { step } {
  set endFile ".$step.end.rst"
  set ch [open $endFile w]
  close $ch
}

proc step_failed { step } {
  set endFile ".$step.error.rst"
  set ch [open $endFile w]
  close $ch
}

set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000

start_step init_design
set rc [catch {
  create_msg_db init_design.pb
  set_property design_mode GateLvl [current_fileset]
  set_param project.singleFileAddWarning.threshold 0
  set_property webtalk.parent_dir /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.cache/wt [current_project]
  set_property parent.project_path /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.xpr [current_project]
  set_property ip_repo_paths {
  /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.cache/ip
  /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/REPOSITORY
} [current_project]
  set_property ip_output_repo /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.cache/ip [current_project]
  set_property XPM_LIBRARIES {XPM_CDC XPM_MEMORY} [current_project]
  add_files -quiet /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.runs/synth_1/MP3_Design_wrapper.dcp
  add_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/MP3_Design.bmm
  set_property SCOPED_TO_REF MP3_Design [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/MP3_Design.bmm]
  add_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_microblaze_0_0/data/mb_bootloop_le.elf
  set_property SCOPED_TO_REF MP3_Design [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_microblaze_0_0/data/mb_bootloop_le.elf]
  set_property SCOPED_TO_CELLS microblaze_0 [get_files -all /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_microblaze_0_0/data/mb_bootloop_le.elf]
  read_xdc -ref MP3_Design_microblaze_0_0 -cells U0 /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_microblaze_0_0/MP3_Design_microblaze_0_0.xdc
  set_property processing_order EARLY [get_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_microblaze_0_0/MP3_Design_microblaze_0_0.xdc]
  read_xdc -ref MP3_Design_dlmb_v10_0 -cells U0 /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_dlmb_v10_0/MP3_Design_dlmb_v10_0.xdc
  set_property processing_order EARLY [get_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_dlmb_v10_0/MP3_Design_dlmb_v10_0.xdc]
  read_xdc -ref MP3_Design_ilmb_v10_0 -cells U0 /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_ilmb_v10_0/MP3_Design_ilmb_v10_0.xdc
  set_property processing_order EARLY [get_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_ilmb_v10_0/MP3_Design_ilmb_v10_0.xdc]
  read_xdc -ref MP3_Design_mdm_1_0 -cells U0 /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_mdm_1_0/MP3_Design_mdm_1_0.xdc
  set_property processing_order EARLY [get_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_mdm_1_0/MP3_Design_mdm_1_0.xdc]
  read_xdc -prop_thru_buffers -ref MP3_Design_clk_wiz_1_0 -cells inst /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_clk_wiz_1_0/MP3_Design_clk_wiz_1_0_board.xdc
  set_property processing_order EARLY [get_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_clk_wiz_1_0/MP3_Design_clk_wiz_1_0_board.xdc]
  read_xdc -ref MP3_Design_clk_wiz_1_0 -cells inst /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_clk_wiz_1_0/MP3_Design_clk_wiz_1_0.xdc
  set_property processing_order EARLY [get_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_clk_wiz_1_0/MP3_Design_clk_wiz_1_0.xdc]
  read_xdc -prop_thru_buffers -ref MP3_Design_rst_clk_wiz_1_100M_0 -cells U0 /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_rst_clk_wiz_1_100M_0/MP3_Design_rst_clk_wiz_1_100M_0_board.xdc
  set_property processing_order EARLY [get_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_rst_clk_wiz_1_100M_0/MP3_Design_rst_clk_wiz_1_100M_0_board.xdc]
  read_xdc -ref MP3_Design_rst_clk_wiz_1_100M_0 -cells U0 /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_rst_clk_wiz_1_100M_0/MP3_Design_rst_clk_wiz_1_100M_0.xdc
  set_property processing_order EARLY [get_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_rst_clk_wiz_1_100M_0/MP3_Design_rst_clk_wiz_1_100M_0.xdc]
  read_xdc -prop_thru_buffers -ref MP3_Design_axi_gpio_0_0 -cells U0 /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_axi_gpio_0_0/MP3_Design_axi_gpio_0_0_board.xdc
  set_property processing_order EARLY [get_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_axi_gpio_0_0/MP3_Design_axi_gpio_0_0_board.xdc]
  read_xdc -ref MP3_Design_axi_gpio_0_0 -cells U0 /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_axi_gpio_0_0/MP3_Design_axi_gpio_0_0.xdc
  set_property processing_order EARLY [get_files /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/sources_1/bd/MP3_Design/ip/MP3_Design_axi_gpio_0_0/MP3_Design_axi_gpio_0_0.xdc]
  read_xdc /media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex3/MP3/MP3.srcs/constrs_1/imports/Aula1_15Feb2016/Nexys4_Master.xdc
  link_design -top MP3_Design_wrapper -part xc7a100tcsg324-1
  write_hwdef -file MP3_Design_wrapper.hwdef
  close_msg_db -file init_design.pb
} RESULT]
if {$rc} {
  step_failed init_design
  return -code error $RESULT
} else {
  end_step init_design
}

start_step opt_design
set rc [catch {
  create_msg_db opt_design.pb
  opt_design 
  write_checkpoint -force MP3_Design_wrapper_opt.dcp
  report_drc -file MP3_Design_wrapper_drc_opted.rpt
  close_msg_db -file opt_design.pb
} RESULT]
if {$rc} {
  step_failed opt_design
  return -code error $RESULT
} else {
  end_step opt_design
}

start_step place_design
set rc [catch {
  create_msg_db place_design.pb
  implement_debug_core 
  place_design 
  write_checkpoint -force MP3_Design_wrapper_placed.dcp
  report_io -file MP3_Design_wrapper_io_placed.rpt
  report_utilization -file MP3_Design_wrapper_utilization_placed.rpt -pb MP3_Design_wrapper_utilization_placed.pb
  report_control_sets -verbose -file MP3_Design_wrapper_control_sets_placed.rpt
  close_msg_db -file place_design.pb
} RESULT]
if {$rc} {
  step_failed place_design
  return -code error $RESULT
} else {
  end_step place_design
}

start_step route_design
set rc [catch {
  create_msg_db route_design.pb
  route_design 
  write_checkpoint -force MP3_Design_wrapper_routed.dcp
  report_drc -file MP3_Design_wrapper_drc_routed.rpt -pb MP3_Design_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file MP3_Design_wrapper_timing_summary_routed.rpt -rpx MP3_Design_wrapper_timing_summary_routed.rpx
  report_power -file MP3_Design_wrapper_power_routed.rpt -pb MP3_Design_wrapper_power_summary_routed.pb -rpx MP3_Design_wrapper_power_routed.rpx
  report_route_status -file MP3_Design_wrapper_route_status.rpt -pb MP3_Design_wrapper_route_status.pb
  report_clock_utilization -file MP3_Design_wrapper_clock_utilization_routed.rpt
  close_msg_db -file route_design.pb
} RESULT]
if {$rc} {
  step_failed route_design
  return -code error $RESULT
} else {
  end_step route_design
}

start_step write_bitstream
set rc [catch {
  create_msg_db write_bitstream.pb
  catch { write_mem_info -force MP3_Design_wrapper.mmi }
  catch { write_bmm -force MP3_Design_wrapper_bd.bmm }
  write_bitstream -force MP3_Design_wrapper.bit 
  catch { write_sysdef -hwdef MP3_Design_wrapper.hwdef -bitfile MP3_Design_wrapper.bit -meminfo MP3_Design_wrapper.mmi -file MP3_Design_wrapper.sysdef }
  catch {write_debug_probes -quiet -force debug_nets}
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

