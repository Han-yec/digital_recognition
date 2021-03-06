# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
create_project -in_memory -part xc7s15ftgb196-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir D:/Demo/IP/RGB_LED_Task_IP/RGB_LED_Task/RGB_LED_Task.cache/wt [current_project]
set_property parent.project_path D:/Demo/IP/RGB_LED_Task_IP/RGB_LED_Task/RGB_LED_Task.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_repo_paths d:/Demo/IP [current_project]
set_property ip_output_repo d:/Demo/IP/RGB_LED_Task_IP/RGB_LED_Task/RGB_LED_Task.cache/ip [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib D:/Demo/IP/RGB_LED_Task_IP/RGB_LED_Task/RGB_LED_Task.srcs/sources_1/new/RGB_LED_Task.v
read_ip -quiet D:/Demo/IP/RGB_LED_Task_IP/RGB_LED_Task/RGB_LED_Task.srcs/sources_1/ip/Clk_Division_0/Clk_Division_0.xci

read_ip -quiet D:/Demo/IP/RGB_LED_Task_IP/RGB_LED_Task/RGB_LED_Task.srcs/sources_1/ip/Driver_SK6805_0/Driver_SK6805_0.xci

# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top RGB_LED_Task -part xc7s15ftgb196-1


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef RGB_LED_Task.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file RGB_LED_Task_utilization_synth.rpt -pb RGB_LED_Task_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
