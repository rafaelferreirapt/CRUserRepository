onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+DMB1 -L unisims_ver -L unimacro_ver -L secureip -L xil_defaultlib -L xpm -L microblaze_v9_6_0 -L lmb_v10_v3_0_8 -L lmb_bram_if_cntlr_v4_0_8 -L blk_mem_gen_v8_3_2 -L axi_lite_ipif_v3_0_3 -L mdm_v3_2_5 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_9 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_8 -L fifo_generator_v13_1_0 -L axi_data_fifo_v2_1_7 -L axi_crossbar_v2_1_9 -L axi_protocol_converter_v2_1_8 -O5 xil_defaultlib.DMB1 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {DMB1.udo}

run -all

endsim

quit -force
