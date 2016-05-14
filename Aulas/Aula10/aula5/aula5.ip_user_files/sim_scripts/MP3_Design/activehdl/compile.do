vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/microblaze_v9_6_0
vlib activehdl/lmb_v10_v3_0_8
vlib activehdl/lmb_bram_if_cntlr_v4_0_8
vlib activehdl/blk_mem_gen_v8_3_2
vlib activehdl/axi_lite_ipif_v3_0_3
vlib activehdl/mdm_v3_2_5
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_9
vlib activehdl/interrupt_control_v3_1_3
vlib activehdl/axi_gpio_v2_0_10
vlib activehdl/generic_baseblocks_v2_1_0
vlib activehdl/axi_infrastructure_v1_1_0
vlib activehdl/axi_register_slice_v2_1_8
vlib activehdl/fifo_generator_v13_1_0
vlib activehdl/axi_data_fifo_v2_1_7
vlib activehdl/axi_crossbar_v2_1_9
vlib activehdl/dist_mem_gen_v8_0_10
vlib activehdl/axi_protocol_converter_v2_1_8

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap microblaze_v9_6_0 activehdl/microblaze_v9_6_0
vmap lmb_v10_v3_0_8 activehdl/lmb_v10_v3_0_8
vmap lmb_bram_if_cntlr_v4_0_8 activehdl/lmb_bram_if_cntlr_v4_0_8
vmap blk_mem_gen_v8_3_2 activehdl/blk_mem_gen_v8_3_2
vmap axi_lite_ipif_v3_0_3 activehdl/axi_lite_ipif_v3_0_3
vmap mdm_v3_2_5 activehdl/mdm_v3_2_5
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_9 activehdl/proc_sys_reset_v5_0_9
vmap interrupt_control_v3_1_3 activehdl/interrupt_control_v3_1_3
vmap axi_gpio_v2_0_10 activehdl/axi_gpio_v2_0_10
vmap generic_baseblocks_v2_1_0 activehdl/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 activehdl/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_8 activehdl/axi_register_slice_v2_1_8
vmap fifo_generator_v13_1_0 activehdl/fifo_generator_v13_1_0
vmap axi_data_fifo_v2_1_7 activehdl/axi_data_fifo_v2_1_7
vmap axi_crossbar_v2_1_9 activehdl/axi_crossbar_v2_1_9
vmap dist_mem_gen_v8_0_10 activehdl/dist_mem_gen_v8_0_10
vmap axi_protocol_converter_v2_1_8 activehdl/axi_protocol_converter_v2_1_8

vlog -work xil_defaultlib -v2k5 -sv "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_base.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_dpdistram.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_dprom.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_sdpram.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_spram.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_sprom.sv" \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_memory/hdl/xpm_memory_tdpram.sv" \

vcom -work xpm -93 \
"/opt/Xilinx/Vivado/2016.1/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work microblaze_v9_6_0 -93 \
"../../../ipstatic/microblaze_v9_6/hdl/microblaze_v9_6_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/MP3_Design/ip/MP3_Design_microblaze_0_0/sim/MP3_Design_microblaze_0_0.vhd" \

vcom -work lmb_v10_v3_0_8 -93 \
"../../../ipstatic/lmb_v10_v3_0/hdl/vhdl/lmb_v10.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/MP3_Design/ip/MP3_Design_dlmb_v10_0/sim/MP3_Design_dlmb_v10_0.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_ilmb_v10_0/sim/MP3_Design_ilmb_v10_0.vhd" \

vcom -work lmb_bram_if_cntlr_v4_0_8 -93 \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_funcs.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_primitives.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/xor18.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parity.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/parityenable.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/checkbit_handler.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/correct_one_bit.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/pselect_mask.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/axi_interface.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_mux.vhd" \
"../../../ipstatic/lmb_bram_if_cntlr_v4_0/hdl/vhdl/lmb_bram_if_cntlr.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/MP3_Design/ip/MP3_Design_dlmb_bram_if_cntlr_0/sim/MP3_Design_dlmb_bram_if_cntlr_0.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_ilmb_bram_if_cntlr_0/sim/MP3_Design_ilmb_bram_if_cntlr_0.vhd" \

vlog -work blk_mem_gen_v8_3_2 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/blk_mem_gen_v8_3/simulation/blk_mem_gen_v8_3.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/MP3_Design/ip/MP3_Design_lmb_bram_0/sim/MP3_Design_lmb_bram_0.v" \

vcom -work axi_lite_ipif_v3_0_3 -93 \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/ipif_pkg.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/pselect_f.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/address_decoder.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/slave_attachment.vhd" \
"../../../ipstatic/axi_lite_ipif_v3_0/hdl/src/vhdl/axi_lite_ipif.vhd" \

vcom -work mdm_v3_2_5 -93 \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm_primitives.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/arbiter.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/srl_fifo.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/bus_master.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/jtag_control.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm_core.vhd" \
"../../../ipstatic/mdm_v3_2/hdl/vhdl/mdm.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/MP3_Design/ip/MP3_Design_mdm_1_0/sim/MP3_Design_mdm_1_0.vhd" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/MP3_Design/ip/MP3_Design_clk_wiz_1_0/MP3_Design_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/MP3_Design/ip/MP3_Design_clk_wiz_1_0/MP3_Design_clk_wiz_1_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../ipstatic/lib_cdc_v1_0/hdl/src/vhdl/cdc_sync.vhd" \

vcom -work proc_sys_reset_v5_0_9 -93 \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/upcnt_n.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/sequence_psr.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/lpf.vhd" \
"../../../ipstatic/proc_sys_reset_v5_0/hdl/src/vhdl/proc_sys_reset.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/MP3_Design/ip/MP3_Design_rst_clk_wiz_1_100M_0/sim/MP3_Design_rst_clk_wiz_1_100M_0.vhd" \

vcom -work interrupt_control_v3_1_3 -93 \
"../../../ipstatic/interrupt_control_v3_1/hdl/src/vhdl/interrupt_control.vhd" \

vcom -work axi_gpio_v2_0_10 -93 \
"../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/gpio_core.vhd" \
"../../../ipstatic/axi_gpio_v2_0/hdl/src/vhdl/axi_gpio.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/MP3_Design/ip/MP3_Design_axi_gpio_0_0/sim/MP3_Design_axi_gpio_0_0.vhd" \
"../../../ipstatic/dc32_v1_0/segment_decoder.vhd" \
"../../../ipstatic/dc32_v1_0/disp.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_DC32_0_0/sim/MP3_Design_DC32_0_0.vhd" \
"../../../../aula5.srcs/sources_1/bd/MP3_Design/ipshared/ua.pt/bintobcd16_v1_0/Binary_to_BCD16.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_BinToBCD16_0_0/sim/MP3_Design_BinToBCD16_0_0.vhd" \
"../../../bd/MP3_Design/ipshared/xilinx.com/xlconcat_v2_1/xlconcat.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_xlconcat_0_0/sim/MP3_Design_xlconcat_0_0.vhd" \
"../../../bd/MP3_Design/ipshared/xilinx.com/xlconstant_v1_1/xlconstant.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_xlconstant_0_0/sim/MP3_Design_xlconstant_0_0.vhd" \

vlog -work generic_baseblocks_v2_1_0 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_and.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_latch_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry_or.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_carry.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_command_fifo.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_mask.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_sel.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator_static.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_comparator.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux_enc.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_mux.v" \
"../../../ipstatic/generic_baseblocks_v2_1/hdl/verilog/generic_baseblocks_v2_1_nto1_mux.v" \

vlog -work axi_infrastructure_v1_1_0 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axi2vector.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog/axi_infrastructure_v1_1_vector2axi.v" \

vlog -work axi_register_slice_v2_1_8 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axic_register_slice.v" \
"../../../ipstatic/axi_register_slice_v2_1/hdl/verilog/axi_register_slice_v2_1_axi_register_slice.v" \

vlog -work fifo_generator_v13_1_0 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/fifo_generator_v13_1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_1_0 -93 \
"../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.vhd" \

vlog -work fifo_generator_v13_1_0 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/fifo_generator_v13_1/hdl/fifo_generator_v13_1_rfs.v" \

vlog -work axi_data_fifo_v2_1_7 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_fifo_gen.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axic_reg_srl_fifo.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_ndeep_srl.v" \
"../../../ipstatic/axi_data_fifo_v2_1/hdl/verilog/axi_data_fifo_v2_1_axi_data_fifo.v" \

vlog -work axi_crossbar_v2_1_9 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_arbiter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_addr_decoder.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_arbiter_resp.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar_sasd.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_crossbar.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_si_transactor.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_splitter.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_mux.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_wdata_router.v" \
"../../../ipstatic/axi_crossbar_v2_1/hdl/verilog/axi_crossbar_v2_1_axi_crossbar.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/MP3_Design/ip/MP3_Design_xbar_0/sim/MP3_Design_xbar_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/MP3_Design/hdl/MP3_Design.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_xlconcat_1_0/sim/MP3_Design_xlconcat_1_0.vhd" \
"../../../../aula5.srcs/sources_1/bd/MP3_Design/ipshared/user.org/smart_mux_v1_0/sources_1/new/smart_mux.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_smart_mux_0_1/sim/MP3_Design_smart_mux_0_1.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_xlconcat_2_0/sim/MP3_Design_xlconcat_2_0.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_xlconstant_1_0/sim/MP3_Design_xlconstant_1_0.vhd" \

vlog -work dist_mem_gen_v8_0_10 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/dist_mem_gen_v8_0/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/MP3_Design/ip/MP3_Design_dist_mem_gen_0_0/sim/MP3_Design_dist_mem_gen_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/MP3_Design/ipshared/xilinx.com/xlslice_v1_0/xlslice.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_xlslice_0_1/sim/MP3_Design_xlslice_0_1.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_xlslice_1_2/sim/MP3_Design_xlslice_1_2.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_xlconstant_2_0/sim/MP3_Design_xlconstant_2_0.vhd" \
"../../../bd/MP3_Design/ip/MP3_Design_xlconstant_3_0/sim/MP3_Design_xlconstant_3_0.vhd" \

vlog -work axi_protocol_converter_v2_1_8 -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_a_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axilite_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_r_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_w_axi3_conv.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b_downsizer.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_decerr_slave.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_simple_fifo.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wrap_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_incr_cmd.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_wr_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_rd_cmd_fsm.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_cmd_translator.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_b_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_r_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_aw_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s_ar_channel.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_b2s.v" \
"../../../ipstatic/axi_protocol_converter_v2_1/hdl/verilog/axi_protocol_converter_v2_1_axi_protocol_converter.v" \

vlog -work xil_defaultlib -v2k5 "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" "+incdir+../../../ipstatic/axi_infrastructure_v1_1/hdl/verilog" "+incdir+../../../ipstatic/clk_wiz_v5_3" \
"../../../bd/MP3_Design/ip/MP3_Design_auto_pc_0/sim/MP3_Design_auto_pc_0.v" \
"../../../bd/MP3_Design/ip/MP3_Design_auto_pc_1/sim/MP3_Design_auto_pc_1.v" \

vlog -work xil_defaultlib "glbl.v"

