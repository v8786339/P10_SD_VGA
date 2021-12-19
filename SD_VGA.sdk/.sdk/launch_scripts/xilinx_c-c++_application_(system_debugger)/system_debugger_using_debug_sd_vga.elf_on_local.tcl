connect -url tcp:127.0.0.1:3121
source D:/BaiduNetdiskDownload/P10_SD_VGA_m/SD_VGA.sdk/zynq_sys_wrapper_hw_platform_1/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870" && level==0} -index 1
fpga -file D:/BaiduNetdiskDownload/P10_SD_VGA_m/SD_VGA.sdk/zynq_sys_wrapper_hw_platform_1/zynq_sys_wrapper.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
loadhw -hw D:/BaiduNetdiskDownload/P10_SD_VGA_m/SD_VGA.sdk/zynq_sys_wrapper_hw_platform_1/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
dow D:/BaiduNetdiskDownload/P10_SD_VGA_m/SD_VGA.sdk/SD_VGA/Debug/SD_VGA.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-SMT2 210251A08870"} -index 0
con
