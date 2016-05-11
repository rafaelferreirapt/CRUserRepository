# This file is automatically generated.
# It contains project source information necessary for synthesis and implementation.

# XDC: imports/Aula1_15Feb2016/Nexys4_Master.xdc

# Block Designs: bd/DMB1/DMB1.bd
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1 || ORIG_REF_NAME==DMB1}]

# IP: bd/DMB1/ip/DMB1_microblaze_0_0/DMB1_microblaze_0_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_microblaze_0_0 || ORIG_REF_NAME==DMB1_microblaze_0_0}]

# IP: bd/DMB1/ip/DMB1_dlmb_v10_0/DMB1_dlmb_v10_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_dlmb_v10_0 || ORIG_REF_NAME==DMB1_dlmb_v10_0}]

# IP: bd/DMB1/ip/DMB1_ilmb_v10_0/DMB1_ilmb_v10_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_ilmb_v10_0 || ORIG_REF_NAME==DMB1_ilmb_v10_0}]

# IP: bd/DMB1/ip/DMB1_dlmb_bram_if_cntlr_0/DMB1_dlmb_bram_if_cntlr_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_dlmb_bram_if_cntlr_0 || ORIG_REF_NAME==DMB1_dlmb_bram_if_cntlr_0}]

# IP: bd/DMB1/ip/DMB1_ilmb_bram_if_cntlr_0/DMB1_ilmb_bram_if_cntlr_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_ilmb_bram_if_cntlr_0 || ORIG_REF_NAME==DMB1_ilmb_bram_if_cntlr_0}]

# IP: bd/DMB1/ip/DMB1_lmb_bram_0/DMB1_lmb_bram_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_lmb_bram_0 || ORIG_REF_NAME==DMB1_lmb_bram_0}]

# IP: bd/DMB1/ip/DMB1_microblaze_0_axi_periph_0/DMB1_microblaze_0_axi_periph_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_microblaze_0_axi_periph_0 || ORIG_REF_NAME==DMB1_microblaze_0_axi_periph_0}]

# IP: bd/DMB1/ip/DMB1_mdm_1_0/DMB1_mdm_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_mdm_1_0 || ORIG_REF_NAME==DMB1_mdm_1_0}]

# IP: bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_clk_wiz_1_0 || ORIG_REF_NAME==DMB1_clk_wiz_1_0}]

# IP: bd/DMB1/ip/DMB1_rst_clk_wiz_1_100M_0/DMB1_rst_clk_wiz_1_100M_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_rst_clk_wiz_1_100M_0 || ORIG_REF_NAME==DMB1_rst_clk_wiz_1_100M_0}]

# IP: bd/DMB1/ip/DMB1_xbar_0/DMB1_xbar_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_xbar_0 || ORIG_REF_NAME==DMB1_xbar_0}]

# IP: bd/DMB1/ip/DMB1_auto_pc_0/DMB1_auto_pc_0.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_auto_pc_0 || ORIG_REF_NAME==DMB1_auto_pc_0}]

# IP: bd/DMB1/ip/DMB1_auto_pc_1/DMB1_auto_pc_1.xci
set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_auto_pc_1 || ORIG_REF_NAME==DMB1_auto_pc_1}]

# XDC: bd/DMB1/ip/DMB1_microblaze_0_0/DMB1_microblaze_0_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==DMB1_microblaze_0_0 || ORIG_REF_NAME==DMB1_microblaze_0_0}] {/U0 }]/U0 ]]

# XDC: bd/DMB1/ip/DMB1_microblaze_0_0/DMB1_microblaze_0_0_ooc_debug.xdc

# XDC: bd/DMB1/ip/DMB1_microblaze_0_0/DMB1_microblaze_0_0_ooc.xdc

# XDC: bd/DMB1/ip/DMB1_dlmb_v10_0/DMB1_dlmb_v10_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==DMB1_dlmb_v10_0 || ORIG_REF_NAME==DMB1_dlmb_v10_0}] {/U0 }]/U0 ]]

# XDC: bd/DMB1/ip/DMB1_dlmb_v10_0/DMB1_dlmb_v10_0_ooc.xdc

# XDC: bd/DMB1/ip/DMB1_ilmb_v10_0/DMB1_ilmb_v10_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==DMB1_ilmb_v10_0 || ORIG_REF_NAME==DMB1_ilmb_v10_0}] {/U0 }]/U0 ]]

# XDC: bd/DMB1/ip/DMB1_ilmb_v10_0/DMB1_ilmb_v10_0_ooc.xdc

# XDC: bd/DMB1/ip/DMB1_dlmb_bram_if_cntlr_0/DMB1_dlmb_bram_if_cntlr_0_ooc.xdc

# XDC: bd/DMB1/ip/DMB1_ilmb_bram_if_cntlr_0/DMB1_ilmb_bram_if_cntlr_0_ooc.xdc

# XDC: bd/DMB1/ip/DMB1_lmb_bram_0/DMB1_lmb_bram_0_ooc.xdc

# XDC: bd/DMB1/ip/DMB1_mdm_1_0/DMB1_mdm_1_0.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==DMB1_mdm_1_0 || ORIG_REF_NAME==DMB1_mdm_1_0}] {/U0 }]/U0 ]]

# XDC: bd/DMB1/ip/DMB1_mdm_1_0/DMB1_mdm_1_0_ooc_trace.xdc

# XDC: bd/DMB1/ip/DMB1_mdm_1_0/DMB1_mdm_1_0_ooc.xdc

# XDC: bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0_board.xdc
set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==DMB1_clk_wiz_1_0 || ORIG_REF_NAME==DMB1_clk_wiz_1_0}] {/inst }]/inst ]]

# XDC: bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells [split [join [get_cells -hier -filter {REF_NAME==DMB1_clk_wiz_1_0 || ORIG_REF_NAME==DMB1_clk_wiz_1_0}] {/inst }]/inst ]]

# XDC: bd/DMB1/ip/DMB1_clk_wiz_1_0/DMB1_clk_wiz_1_0_ooc.xdc

# XDC: bd/DMB1/ip/DMB1_rst_clk_wiz_1_100M_0/DMB1_rst_clk_wiz_1_100M_0_board.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_rst_clk_wiz_1_100M_0 || ORIG_REF_NAME==DMB1_rst_clk_wiz_1_100M_0}]

# XDC: bd/DMB1/ip/DMB1_rst_clk_wiz_1_100M_0/DMB1_rst_clk_wiz_1_100M_0.xdc
#dup# set_property DONT_TOUCH TRUE [get_cells -hier -filter {REF_NAME==DMB1_rst_clk_wiz_1_100M_0 || ORIG_REF_NAME==DMB1_rst_clk_wiz_1_100M_0}]

# XDC: bd/DMB1/ip/DMB1_rst_clk_wiz_1_100M_0/DMB1_rst_clk_wiz_1_100M_0_ooc.xdc

# XDC: bd/DMB1/ip/DMB1_xbar_0/DMB1_xbar_0_ooc.xdc

# XDC: bd/DMB1/ip/DMB1_auto_pc_0/DMB1_auto_pc_0_ooc.xdc

# XDC: bd/DMB1/ip/DMB1_auto_pc_1/DMB1_auto_pc_1_ooc.xdc

# XDC: bd/DMB1/DMB1_ooc.xdc
