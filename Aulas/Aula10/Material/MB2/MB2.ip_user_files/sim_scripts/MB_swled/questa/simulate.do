onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MB_swled_opt

do {wave.do}

view wave
view structure
view signals

do {MB_swled.udo}

run -all

quit -force
