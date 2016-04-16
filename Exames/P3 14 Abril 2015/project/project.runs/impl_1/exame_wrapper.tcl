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
  set_param xicom.use_bs_reader 1
  set_property design_mode GateLvl [current_fileset]
  set_property webtalk.parent_dir {/media/psf/Home/Development/ect_ua/UserRepository/Exames/P3 14 Abril 2015/project/project.cache/wt} [current_project]
  set_property parent.project_path {/media/psf/Home/Development/ect_ua/UserRepository/Exames/P3 14 Abril 2015/project/project.xpr} [current_project]
  set_property ip_repo_paths {
  {/media/psf/Home/Development/ect_ua/UserRepository/Exames/P3 14 Abril 2015/project/project.cache/ip}
  /media/psf/Home/Development/ect_ua/UserRepository/Repository
} [current_project]
  set_property ip_output_repo {{/media/psf/Home/Development/ect_ua/UserRepository/Exames/P3 14 Abril 2015/project/project.cache/ip}} [current_project]
  add_files -quiet {{/media/psf/Home/Development/ect_ua/UserRepository/Exames/P3 14 Abril 2015/project/project.runs/synth_1/exame_wrapper.dcp}}
  read_xdc {{/media/psf/Home/Development/ect_ua/UserRepository/Exames/P3 14 Abril 2015/project/project.srcs/constrs_1/imports/xdc/Nexys4_Master.xdc}}
  link_design -top exame_wrapper -part xc7a100tcsg324-1
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
  catch {write_debug_probes -quiet -force debug_nets}
  opt_design 
  write_checkpoint -force exame_wrapper_opt.dcp
  report_drc -file exame_wrapper_drc_opted.rpt
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
  catch {write_hwdef -file exame_wrapper.hwdef}
  place_design 
  write_checkpoint -force exame_wrapper_placed.dcp
  report_io -file exame_wrapper_io_placed.rpt
  report_utilization -file exame_wrapper_utilization_placed.rpt -pb exame_wrapper_utilization_placed.pb
  report_control_sets -verbose -file exame_wrapper_control_sets_placed.rpt
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
  write_checkpoint -force exame_wrapper_routed.dcp
  report_drc -file exame_wrapper_drc_routed.rpt -pb exame_wrapper_drc_routed.pb
  report_timing_summary -warn_on_violation -max_paths 10 -file exame_wrapper_timing_summary_routed.rpt -rpx exame_wrapper_timing_summary_routed.rpx
  report_power -file exame_wrapper_power_routed.rpt -pb exame_wrapper_power_summary_routed.pb
  report_route_status -file exame_wrapper_route_status.rpt -pb exame_wrapper_route_status.pb
  report_clock_utilization -file exame_wrapper_clock_utilization_routed.rpt
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
  catch { write_mem_info -force exame_wrapper.mmi }
  write_bitstream -force exame_wrapper.bit 
  catch { write_sysdef -hwdef exame_wrapper.hwdef -bitfile exame_wrapper.bit -meminfo exame_wrapper.mmi -file exame_wrapper.sysdef }
  close_msg_db -file write_bitstream.pb
} RESULT]
if {$rc} {
  step_failed write_bitstream
  return -code error $RESULT
} else {
  end_step write_bitstream
}

