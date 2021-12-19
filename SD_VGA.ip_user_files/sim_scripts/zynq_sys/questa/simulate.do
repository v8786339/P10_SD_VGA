onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib zynq_sys_opt

do {wave.do}

view wave
view structure
view signals

do {zynq_sys.udo}

run -all

quit -force
