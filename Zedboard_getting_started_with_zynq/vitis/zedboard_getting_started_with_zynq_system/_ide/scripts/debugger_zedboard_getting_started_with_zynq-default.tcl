# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: F:\FPGA-Projects\Zedboard_getting_started_with_zynq\vitis\zedboard_getting_started_with_zynq_system\_ide\scripts\debugger_zedboard_getting_started_with_zynq-default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source F:\FPGA-Projects\Zedboard_getting_started_with_zynq\vitis\zedboard_getting_started_with_zynq_system\_ide\scripts\debugger_zedboard_getting_started_with_zynq-default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248585719" && level==0 && jtag_device_ctx=="jsn-Zed-210248585719-23727093-0"}
fpga -file F:/FPGA-Projects/Zedboard_getting_started_with_zynq/vitis/zedboard_getting_started_with_zynq/_ide/bitstream/system_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw F:/FPGA-Projects/Zedboard_getting_started_with_zynq/vitis/system_wrapper/export/system_wrapper/hw/system_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source F:/FPGA-Projects/Zedboard_getting_started_with_zynq/vitis/zedboard_getting_started_with_zynq/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow F:/FPGA-Projects/Zedboard_getting_started_with_zynq/vitis/zedboard_getting_started_with_zynq/Debug/zedboard_getting_started_with_zynq.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
