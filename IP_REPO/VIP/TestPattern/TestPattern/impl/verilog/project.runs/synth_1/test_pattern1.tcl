# 
# Synthesis run script generated by Vivado
# 

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
create_project -in_memory -part xc7z010clg400-2

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir D:/BaiduNetdiskDownload/P10_SD_VGA_m/IP_REPO/VIP/TestPattern/TestPattern/impl/verilog/project.cache/wt [current_project]
set_property parent.project_path D:/BaiduNetdiskDownload/P10_SD_VGA_m/IP_REPO/VIP/TestPattern/TestPattern/impl/verilog/project.xpr [current_project]
set_property XPM_LIBRARIES XPM_MEMORY [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  D:/BaiduNetdiskDownload/P10_SD_VGA_m/IP_REPO/VIP/TestPattern/TestPattern/impl/verilog/Loop_loop_height1_pr.v
  D:/BaiduNetdiskDownload/P10_SD_VGA_m/IP_REPO/VIP/TestPattern/TestPattern/impl/verilog/Mat2AXIvideo.v
  D:/BaiduNetdiskDownload/P10_SD_VGA_m/IP_REPO/VIP/TestPattern/TestPattern/impl/verilog/fifo_w8_d1_A.v
  D:/BaiduNetdiskDownload/P10_SD_VGA_m/IP_REPO/VIP/TestPattern/TestPattern/impl/verilog/test_pattern1.v
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc D:/BaiduNetdiskDownload/P10_SD_VGA_m/IP_REPO/VIP/TestPattern/TestPattern/impl/verilog/test_pattern1.xdc
set_property used_in_implementation false [get_files D:/BaiduNetdiskDownload/P10_SD_VGA_m/IP_REPO/VIP/TestPattern/TestPattern/impl/verilog/test_pattern1.xdc]


synth_design -top test_pattern1 -part xc7z010clg400-2 -no_iobuf -mode out_of_context


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef test_pattern1.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file test_pattern1_utilization_synth.rpt -pb test_pattern1_utilization_synth.pb"
