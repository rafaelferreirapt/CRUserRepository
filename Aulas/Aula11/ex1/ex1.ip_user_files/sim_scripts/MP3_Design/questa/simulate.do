onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib MP3_Design_opt

do {wave.do}

view wave
view structure
view signals

do {MP3_Design.udo}

run -all

quit -force
