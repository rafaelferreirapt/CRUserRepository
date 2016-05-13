set_property SRC_FILE_INFO {cfile:/media/psf/Home/Development/ect_ua/UserRepository/Aulas/Aula10/ex1/MB1/MB1.srcs/constrs_1/imports/Aula1_15Feb2016/Nexys4_Master.xdc rfile:../../MB1.srcs/constrs_1/imports/Aula1_15Feb2016/Nexys4_Master.xdc id:1 rxprname:$PSRCDIR/constrs_1/imports/Aula1_15Feb2016/Nexys4_Master.xdc} [current_design]
set_property src_info {type:XDC file:1 line:1 export:INPUT save:INPUT read:READ} [current_design]
## This file is a general .xdc for the Nexys4 rev B board
set_property src_info {type:XDC file:1 line:2 export:INPUT save:INPUT read:READ} [current_design]
## To use it in a project:
set_property src_info {type:XDC file:1 line:3 export:INPUT save:INPUT read:READ} [current_design]
## - uncomment the lines corresponding to used pins
set_property src_info {type:XDC file:1 line:4 export:INPUT save:INPUT read:READ} [current_design]
## - rename the used ports (in each line, after get_ports) according to the top level signal names in the project
set_property src_info {type:XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:6 export:INPUT save:INPUT read:READ} [current_design]
## Clock signal
set_property src_info {type:XDC file:1 line:7 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 35, Pin name = IO_L12P_T1_MRCC_35,					Sch name = CLK100MHZ
set_property src_info {type:XDC file:1 line:8 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E3 [get_ports clk]
set_property src_info {type:XDC file:1 line:9 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports clk]
set_property src_info {type:XDC file:1 line:10 export:INPUT save:INPUT read:READ} [current_design]
create_clock -period 10.000 -name sys_clk_pin -waveform {0.000 5.000} -add [get_ports clk]
set_property src_info {type:XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
## Switches
set_property src_info {type:XDC file:1 line:13 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L21P_T3_DQS_34,					Sch name = SW0
set_property src_info {type:XDC file:1 line:14 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN U9 [get_ports {sw[0]}]
set_property src_info {type:XDC file:1 line:15 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[0]}]
set_property src_info {type:XDC file:1 line:16 export:INPUT save:INPUT read:READ} [current_design]
#Bank = 34, Pin name = IO_25_34,							Sch name = SW1
set_property src_info {type:XDC file:1 line:17 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN U8 [get_ports {sw[1]}]
set_property src_info {type:XDC file:1 line:18 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[1]}]
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L23P_T3_34,						Sch name = SW2
set_property src_info {type:XDC file:1 line:20 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN R7 [get_ports {sw[2]}]
set_property src_info {type:XDC file:1 line:21 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[2]}]
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L19P_T3_34,						Sch name = SW3
set_property src_info {type:XDC file:1 line:23 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN R6 [get_ports {sw[3]}]
set_property src_info {type:XDC file:1 line:24 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[3]}]
set_property src_info {type:XDC file:1 line:25 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L19N_T3_VREF_34,					Sch name = SW4
set_property src_info {type:XDC file:1 line:26 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN R5 [get_ports {sw[4]}]
set_property src_info {type:XDC file:1 line:27 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[4]}]
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L20P_T3_34,						Sch name = SW5
set_property src_info {type:XDC file:1 line:29 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN V7 [get_ports {sw[5]}]
set_property src_info {type:XDC file:1 line:30 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[5]}]
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L20N_T3_34,						Sch name = SW6
set_property src_info {type:XDC file:1 line:32 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN V6 [get_ports {sw[6]}]
set_property src_info {type:XDC file:1 line:33 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[6]}]
set_property src_info {type:XDC file:1 line:34 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L10P_T1_34,						Sch name = SW7
set_property src_info {type:XDC file:1 line:35 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN V5 [get_ports {sw[7]}]
set_property src_info {type:XDC file:1 line:36 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[7]}]
set_property src_info {type:XDC file:1 line:37 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L8P_T1-34,						Sch name = SW8
set_property src_info {type:XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN U4 [get_ports {sw[8]}]
set_property src_info {type:XDC file:1 line:39 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[8]}]
set_property src_info {type:XDC file:1 line:40 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L9N_T1_DQS_34,					Sch name = SW9
set_property src_info {type:XDC file:1 line:41 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN V2 [get_ports {sw[9]}]
set_property src_info {type:XDC file:1 line:42 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[9]}]
set_property src_info {type:XDC file:1 line:43 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L9P_T1_DQS_34,					Sch name = SW10
set_property src_info {type:XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN U2 [get_ports {sw[10]}]
set_property src_info {type:XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[10]}]
set_property src_info {type:XDC file:1 line:46 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L11N_T1_MRCC_34,					Sch name = SW11
set_property src_info {type:XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN T3 [get_ports {sw[11]}]
set_property src_info {type:XDC file:1 line:48 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[11]}]
set_property src_info {type:XDC file:1 line:49 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L17N_T2_34,						Sch name = SW12
set_property src_info {type:XDC file:1 line:50 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN T1 [get_ports {sw[12]}]
set_property src_info {type:XDC file:1 line:51 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[12]}]
set_property src_info {type:XDC file:1 line:52 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L11P_T1_SRCC_34,					Sch name = SW13
set_property src_info {type:XDC file:1 line:53 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN R3 [get_ports {sw[13]}]
set_property src_info {type:XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[13]}]
set_property src_info {type:XDC file:1 line:55 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L14N_T2_SRCC_34,					Sch name = SW14
set_property src_info {type:XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN P3 [get_ports {sw[14]}]
set_property src_info {type:XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[14]}]
set_property src_info {type:XDC file:1 line:58 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L14P_T2_SRCC_34,					Sch name = SW15
set_property src_info {type:XDC file:1 line:59 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN P4 [get_ports {sw[15]}]
set_property src_info {type:XDC file:1 line:60 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {sw[15]}]
set_property src_info {type:XDC file:1 line:61 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:62 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:63 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:64 export:INPUT save:INPUT read:READ} [current_design]
## LEDs
set_property src_info {type:XDC file:1 line:65 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 34, Pin name = IO_L24N_T3_34,						Sch name = LED0
set_property src_info {type:XDC file:1 line:66 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN T8 [get_ports {led[0]}]
set_property src_info {type:XDC file:1 line:67 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[0]}]
set_property src_info {type:XDC file:1 line:68 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 34, Pin name = IO_L21N_T3_DQS_34,					Sch name = LED1
set_property src_info {type:XDC file:1 line:69 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN V9 [get_ports {led[1]}]
set_property src_info {type:XDC file:1 line:70 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[1]}]
set_property src_info {type:XDC file:1 line:71 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L24P_T3_34,						Sch name = LED2
set_property src_info {type:XDC file:1 line:72 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN R8 [get_ports {led[2]}]
set_property src_info {type:XDC file:1 line:73 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[2]}]
set_property src_info {type:XDC file:1 line:74 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L23N_T3_34,						Sch name = LED3
set_property src_info {type:XDC file:1 line:75 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN T6 [get_ports {led[3]}]
set_property src_info {type:XDC file:1 line:76 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[3]}]
set_property src_info {type:XDC file:1 line:77 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L12P_T1_MRCC_34,					Sch name = LED4
set_property src_info {type:XDC file:1 line:78 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN T5 [get_ports {led[4]}]
set_property src_info {type:XDC file:1 line:79 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[4]}]
set_property src_info {type:XDC file:1 line:80 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L12N_T1_MRCC_34,					Sch	name = LED5
set_property src_info {type:XDC file:1 line:81 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN T4 [get_ports {led[5]}]
set_property src_info {type:XDC file:1 line:82 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[5]}]
set_property src_info {type:XDC file:1 line:83 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L22P_T3_34,						Sch name = LED6
set_property src_info {type:XDC file:1 line:84 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN U7 [get_ports {led[6]}]
set_property src_info {type:XDC file:1 line:85 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[6]}]
set_property src_info {type:XDC file:1 line:86 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L22N_T3_34,						Sch name = LED7
set_property src_info {type:XDC file:1 line:87 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN U6 [get_ports {led[7]}]
set_property src_info {type:XDC file:1 line:88 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[7]}]
set_property src_info {type:XDC file:1 line:89 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L10N_T1_34,						Sch name = LED8
set_property src_info {type:XDC file:1 line:90 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN V4 [get_ports {led[8]}]
set_property src_info {type:XDC file:1 line:91 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[8]}]
set_property src_info {type:XDC file:1 line:92 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L8N_T1_34,						Sch name = LED9
set_property src_info {type:XDC file:1 line:93 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN U3 [get_ports {led[9]}]
set_property src_info {type:XDC file:1 line:94 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[9]}]
set_property src_info {type:XDC file:1 line:95 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L7N_T1_34,						Sch name = LED10
set_property src_info {type:XDC file:1 line:96 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN V1 [get_ports {led[10]}]
set_property src_info {type:XDC file:1 line:97 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[10]}]
set_property src_info {type:XDC file:1 line:98 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L17P_T2_34,						Sch name = LED11
set_property src_info {type:XDC file:1 line:99 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN R1 [get_ports {led[11]}]
set_property src_info {type:XDC file:1 line:100 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[11]}]
set_property src_info {type:XDC file:1 line:101 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L13N_T2_MRCC_34,					Sch name = LED12
set_property src_info {type:XDC file:1 line:102 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN P5 [get_ports {led[12]}]
set_property src_info {type:XDC file:1 line:103 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[12]}]
set_property src_info {type:XDC file:1 line:104 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L7P_T1_34,						Sch name = LED13
set_property src_info {type:XDC file:1 line:105 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN U1 [get_ports {led[13]}]
set_property src_info {type:XDC file:1 line:106 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[13]}]
set_property src_info {type:XDC file:1 line:107 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L15N_T2_DQS_34,					Sch name = LED14
set_property src_info {type:XDC file:1 line:108 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN R2 [get_ports {led[14]}]
set_property src_info {type:XDC file:1 line:109 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[14]}]
set_property src_info {type:XDC file:1 line:110 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L15P_T2_DQS_34,					Sch name = LED15
set_property src_info {type:XDC file:1 line:111 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN P2 [get_ports {led[15]}]
set_property src_info {type:XDC file:1 line:112 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {led[15]}]
set_property src_info {type:XDC file:1 line:113 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:114 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 34, Pin name = IO_L5P_T0_34,						Sch name = LED16_R
set_property src_info {type:XDC file:1 line:115 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN K5 [get_ports RGB1_Red]
set_property src_info {type:XDC file:1 line:116 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RGB1_Red]
set_property src_info {type:XDC file:1 line:117 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L5P_T0_AD9P_15,					Sch name = LED16_G
set_property src_info {type:XDC file:1 line:118 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN F13 [get_ports RGB1_Green]
set_property src_info {type:XDC file:1 line:119 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RGB1_Green]
set_property src_info {type:XDC file:1 line:120 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L19N_T3_VREF_35,					Sch name = LED16_B
set_property src_info {type:XDC file:1 line:121 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN F6 [get_ports RGB1_Blue]
set_property src_info {type:XDC file:1 line:122 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RGB1_Blue]
set_property src_info {type:XDC file:1 line:123 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 34, Pin name = IO_0_34,								Sch name = LED17_R
set_property src_info {type:XDC file:1 line:124 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN K6 [get_ports RGB2_Red]
set_property src_info {type:XDC file:1 line:125 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RGB2_Red]
set_property src_info {type:XDC file:1 line:126 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_24P_T3_35,						Sch name =  LED17_G
set_property src_info {type:XDC file:1 line:127 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN H6 [get_ports RGB2_Green]
set_property src_info {type:XDC file:1 line:128 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RGB2_Green]
set_property src_info {type:XDC file:1 line:129 export:INPUT save:INPUT read:READ} [current_design]
###Bank = CONFIG, Pin name = IO_L3N_T0_DQS_EMCCLK_14,			Sch name = LED17_B
set_property src_info {type:XDC file:1 line:130 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN L16 [get_ports RGB2_Blue]
set_property src_info {type:XDC file:1 line:131 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RGB2_Blue]
set_property src_info {type:XDC file:1 line:132 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:133 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:134 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:135 export:INPUT save:INPUT read:READ} [current_design]
#7 segment display
set_property src_info {type:XDC file:1 line:136 export:INPUT save:INPUT read:READ} [current_design]
#Bank = 34, Pin name = IO_L2N_T0_34,						Sch name = CA
set_property src_info {type:XDC file:1 line:137 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN L3 [get_ports {seg[0]}]
set_property src_info {type:XDC file:1 line:138 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {seg[0]}]
set_property src_info {type:XDC file:1 line:139 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L3N_T0_DQS_34,					Sch name = CB
set_property src_info {type:XDC file:1 line:140 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN N1 [get_ports {seg[1]}]
set_property src_info {type:XDC file:1 line:141 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {seg[1]}]
set_property src_info {type:XDC file:1 line:142 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L6N_T0_VREF_34,					Sch name = CC
set_property src_info {type:XDC file:1 line:143 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN L5 [get_ports {seg[2]}]
set_property src_info {type:XDC file:1 line:144 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {seg[2]}]
set_property src_info {type:XDC file:1 line:145 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L5N_T0_34,						Sch name = CD
set_property src_info {type:XDC file:1 line:146 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN L4 [get_ports {seg[3]}]
set_property src_info {type:XDC file:1 line:147 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {seg[3]}]
set_property src_info {type:XDC file:1 line:148 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L2P_T0_34,						Sch name = CE
set_property src_info {type:XDC file:1 line:149 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN K3 [get_ports {seg[4]}]
set_property src_info {type:XDC file:1 line:150 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {seg[4]}]
set_property src_info {type:XDC file:1 line:151 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L4N_T0_34,						Sch name = CF
set_property src_info {type:XDC file:1 line:152 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN M2 [get_ports {seg[5]}]
set_property src_info {type:XDC file:1 line:153 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {seg[5]}]
set_property src_info {type:XDC file:1 line:154 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L6P_T0_34,						Sch name = CG
set_property src_info {type:XDC file:1 line:155 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN L6 [get_ports {seg[6]}]
set_property src_info {type:XDC file:1 line:156 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {seg[6]}]
set_property src_info {type:XDC file:1 line:157 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:158 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L16P_T2_34,						Sch name = DP
set_property src_info {type:XDC file:1 line:159 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN M4 [get_ports dp]
set_property src_info {type:XDC file:1 line:160 export:INPUT save:INPUT read:READ} [current_design]
##	set_property IOSTANDARD LVCMOS33 [get_ports dp]
set_property src_info {type:XDC file:1 line:161 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:162 export:INPUT save:INPUT read:READ} [current_design]
#Bank = 34, Pin name = IO_L18N_T2_34,						Sch name = AN0
set_property src_info {type:XDC file:1 line:163 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN N6 [get_ports {an[0]}]
set_property src_info {type:XDC file:1 line:164 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an[0]}]
set_property src_info {type:XDC file:1 line:165 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L18P_T2_34,						Sch name = AN1
set_property src_info {type:XDC file:1 line:166 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN M6 [get_ports {an[1]}]
set_property src_info {type:XDC file:1 line:167 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an[1]}]
set_property src_info {type:XDC file:1 line:168 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L4P_T0_34,						Sch name = AN2
set_property src_info {type:XDC file:1 line:169 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN M3 [get_ports {an[2]}]
set_property src_info {type:XDC file:1 line:170 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an[2]}]
set_property src_info {type:XDC file:1 line:171 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L13_T2_MRCC_34,					Sch name = AN3
set_property src_info {type:XDC file:1 line:172 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN N5 [get_ports {an[3]}]
set_property src_info {type:XDC file:1 line:173 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an[3]}]
set_property src_info {type:XDC file:1 line:174 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L3P_T0_DQS_34,					Sch name = AN4
set_property src_info {type:XDC file:1 line:175 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN N2 [get_ports {an[4]}]
set_property src_info {type:XDC file:1 line:176 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an[4]}]
set_property src_info {type:XDC file:1 line:177 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L16N_T2_34,						Sch name = AN5
set_property src_info {type:XDC file:1 line:178 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN N4 [get_ports {an[5]}]
set_property src_info {type:XDC file:1 line:179 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an[5]}]
set_property src_info {type:XDC file:1 line:180 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L1P_T0_34,						Sch name = AN6
set_property src_info {type:XDC file:1 line:181 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN L1 [get_ports {an[6]}]
set_property src_info {type:XDC file:1 line:182 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an[6]}]
set_property src_info {type:XDC file:1 line:183 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 34, Pin name = IO_L1N_T034,							Sch name = AN7
set_property src_info {type:XDC file:1 line:184 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN M1 [get_ports {an[7]}]
set_property src_info {type:XDC file:1 line:185 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports {an[7]}]
set_property src_info {type:XDC file:1 line:186 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:187 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:188 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:189 export:INPUT save:INPUT read:READ} [current_design]
###Buttons
set_property src_info {type:XDC file:1 line:190 export:INPUT save:INPUT read:READ} [current_design]
#Bank = 15, Pin name = IO_L3P_T0_DQS_AD1P_15,				Sch name = CPU_RESET
set_property src_info {type:XDC file:1 line:191 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN C12 [get_ports btnCpuReset]
set_property src_info {type:XDC file:1 line:192 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports btnCpuReset]
set_property src_info {type:XDC file:1 line:193 export:INPUT save:INPUT read:READ} [current_design]
#Bank = 15, Pin name = IO_L11N_T1_SRCC_15,					Sch name = BTNC
set_property src_info {type:XDC file:1 line:194 export:INPUT save:INPUT read:READ} [current_design]
set_property PACKAGE_PIN E16 [get_ports btnC]
set_property src_info {type:XDC file:1 line:195 export:INPUT save:INPUT read:READ} [current_design]
set_property IOSTANDARD LVCMOS33 [get_ports btnC]
set_property src_info {type:XDC file:1 line:196 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 15, Pin name = IO_L14P_T2_SRCC_15,					Sch name = BTNU
set_property src_info {type:XDC file:1 line:197 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN F15 [get_ports btnU]
set_property src_info {type:XDC file:1 line:198 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports btnU]
set_property src_info {type:XDC file:1 line:199 export:INPUT save:INPUT read:READ} [current_design]
##Bank = CONFIG, Pin name = IO_L15N_T2_DQS_DOUT_CSO_B_14,	Sch name = BTNL
set_property src_info {type:XDC file:1 line:200 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN T16 [get_ports btnL]
set_property src_info {type:XDC file:1 line:201 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports btnL]
set_property src_info {type:XDC file:1 line:202 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 14, Pin name = IO_25_14,							Sch name = BTNR
set_property src_info {type:XDC file:1 line:203 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN R10 [get_ports btnR]
set_property src_info {type:XDC file:1 line:204 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports btnR]
set_property src_info {type:XDC file:1 line:205 export:INPUT save:INPUT read:READ} [current_design]
##Bank = 14, Pin name = IO_L21P_T3_DQS_14,					Sch name = BTND
set_property src_info {type:XDC file:1 line:206 export:INPUT save:INPUT read:READ} [current_design]
#set_property PACKAGE_PIN V10 [get_ports btnD]
set_property src_info {type:XDC file:1 line:207 export:INPUT save:INPUT read:READ} [current_design]
#	set_property IOSTANDARD LVCMOS33 [get_ports btnD]
set_property src_info {type:XDC file:1 line:208 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:209 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:210 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:211 export:INPUT save:INPUT read:READ} [current_design]
###Pmod Header JA
set_property src_info {type:XDC file:1 line:212 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L1N_T0_AD0N_15,					Sch name = JA1
set_property src_info {type:XDC file:1 line:213 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B13 [get_ports {JA[0]}]
set_property src_info {type:XDC file:1 line:214 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[0]}]
set_property src_info {type:XDC file:1 line:215 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L5N_T0_AD9N_15,					Sch name = JA2
set_property src_info {type:XDC file:1 line:216 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN F14 [get_ports {JA[1]}]
set_property src_info {type:XDC file:1 line:217 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[1]}]
set_property src_info {type:XDC file:1 line:218 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L16N_T2_A27_15,					Sch name = JA3
set_property src_info {type:XDC file:1 line:219 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D17 [get_ports {JA[2]}]
set_property src_info {type:XDC file:1 line:220 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[2]}]
set_property src_info {type:XDC file:1 line:221 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L16P_T2_A28_15,					Sch name = JA4
set_property src_info {type:XDC file:1 line:222 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN E17 [get_ports {JA[3]}]
set_property src_info {type:XDC file:1 line:223 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[3]}]
set_property src_info {type:XDC file:1 line:224 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_0_15,								Sch name = JA7
set_property src_info {type:XDC file:1 line:225 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN G13 [get_ports {JA[4]}]
set_property src_info {type:XDC file:1 line:226 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[4]}]
set_property src_info {type:XDC file:1 line:227 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L20N_T3_A19_15,					Sch name = JA8
set_property src_info {type:XDC file:1 line:228 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN C17 [get_ports {JA[5]}]
set_property src_info {type:XDC file:1 line:229 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[5]}]
set_property src_info {type:XDC file:1 line:230 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L21N_T3_A17_15,					Sch name = JA9
set_property src_info {type:XDC file:1 line:231 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D18 [get_ports {JA[6]}]
set_property src_info {type:XDC file:1 line:232 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[6]}]
set_property src_info {type:XDC file:1 line:233 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L21P_T3_DQS_15,					Sch name = JA10
set_property src_info {type:XDC file:1 line:234 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN E18 [get_ports {JA[7]}]
set_property src_info {type:XDC file:1 line:235 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JA[7]}]
set_property src_info {type:XDC file:1 line:236 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:237 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:238 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:239 export:INPUT save:INPUT read:READ} [current_design]
###Pmod Header JB
set_property src_info {type:XDC file:1 line:240 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L15N_T2_DQS_ADV_B_15,				Sch name = JB1
set_property src_info {type:XDC file:1 line:241 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN G14 [get_ports {JB[0]}]
set_property src_info {type:XDC file:1 line:242 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[0]}]
set_property src_info {type:XDC file:1 line:243 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L13P_T2_MRCC_14,					Sch name = JB2
set_property src_info {type:XDC file:1 line:244 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN P15 [get_ports {JB[1]}]
set_property src_info {type:XDC file:1 line:245 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[1]}]
set_property src_info {type:XDC file:1 line:246 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L21N_T3_DQS_A06_D22_14,			Sch name = JB3
set_property src_info {type:XDC file:1 line:247 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN V11 [get_ports {JB[2]}]
set_property src_info {type:XDC file:1 line:248 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[2]}]
set_property src_info {type:XDC file:1 line:249 export:INPUT save:INPUT read:READ} [current_design]
###Bank = CONFIG, Pin name = IO_L16P_T2_CSI_B_14,				Sch name = JB4
set_property src_info {type:XDC file:1 line:250 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN V15 [get_ports {JB[3]}]
set_property src_info {type:XDC file:1 line:251 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[3]}]
set_property src_info {type:XDC file:1 line:252 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_25_15,							Sch name = JB7
set_property src_info {type:XDC file:1 line:253 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN K16 [get_ports {JB[4]}]
set_property src_info {type:XDC file:1 line:254 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[4]}]
set_property src_info {type:XDC file:1 line:255 export:INPUT save:INPUT read:READ} [current_design]
###Bank = CONFIG, Pin name = IO_L15P_T2_DQS_RWR_B_14,			Sch name = JB8
set_property src_info {type:XDC file:1 line:256 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN R16 [get_ports {JB[5]}]
set_property src_info {type:XDC file:1 line:257 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[5]}]
set_property src_info {type:XDC file:1 line:258 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L24P_T3_A01_D17_14,				Sch name = JB9
set_property src_info {type:XDC file:1 line:259 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN T9 [get_ports {JB[6]}]
set_property src_info {type:XDC file:1 line:260 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[6]}]
set_property src_info {type:XDC file:1 line:261 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L19N_T3_A09_D25_VREF_14,			Sch name = JB10
set_property src_info {type:XDC file:1 line:262 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN U11 [get_ports {JB[7]}]
set_property src_info {type:XDC file:1 line:263 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JB[7]}]
set_property src_info {type:XDC file:1 line:264 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:265 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:266 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:267 export:INPUT save:INPUT read:READ} [current_design]
###Pmod Header JC
set_property src_info {type:XDC file:1 line:268 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L23P_T3_35,						Sch name = JC1
set_property src_info {type:XDC file:1 line:269 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN K2 [get_ports {JC[0]}]
set_property src_info {type:XDC file:1 line:270 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[0]}]
set_property src_info {type:XDC file:1 line:271 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L6P_T0_35,						Sch name = JC2
set_property src_info {type:XDC file:1 line:272 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN E7 [get_ports {JC[1]}]
set_property src_info {type:XDC file:1 line:273 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[1]}]
set_property src_info {type:XDC file:1 line:274 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L22P_T3_35,						Sch name = JC3
set_property src_info {type:XDC file:1 line:275 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN J3 [get_ports {JC[2]}]
set_property src_info {type:XDC file:1 line:276 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[2]}]
set_property src_info {type:XDC file:1 line:277 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L21P_T3_DQS_35,					Sch name = JC4
set_property src_info {type:XDC file:1 line:278 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN J4 [get_ports {JC[3]}]
set_property src_info {type:XDC file:1 line:279 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[3]}]
set_property src_info {type:XDC file:1 line:280 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L23N_T3_35,						Sch name = JC7
set_property src_info {type:XDC file:1 line:281 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN K1 [get_ports {JC[4]}]
set_property src_info {type:XDC file:1 line:282 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[4]}]
set_property src_info {type:XDC file:1 line:283 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L5P_T0_AD13P_35,					Sch name = JC8
set_property src_info {type:XDC file:1 line:284 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN E6 [get_ports {JC[5]}]
set_property src_info {type:XDC file:1 line:285 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[5]}]
set_property src_info {type:XDC file:1 line:286 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L22N_T3_35,						Sch name = JC9
set_property src_info {type:XDC file:1 line:287 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN J2 [get_ports {JC[6]}]
set_property src_info {type:XDC file:1 line:288 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[6]}]
set_property src_info {type:XDC file:1 line:289 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L19P_T3_35,						Sch name = JC10
set_property src_info {type:XDC file:1 line:290 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN G6 [get_ports {JC[7]}]
set_property src_info {type:XDC file:1 line:291 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JC[7]}]
set_property src_info {type:XDC file:1 line:292 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:293 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:294 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:295 export:INPUT save:INPUT read:READ} [current_design]
###Pmod Header JD
set_property src_info {type:XDC file:1 line:296 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L21N_T2_DQS_35,					Sch name = JD1
set_property src_info {type:XDC file:1 line:297 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN H4 [get_ports {JD[0]}]
set_property src_info {type:XDC file:1 line:298 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JD[0]}]
set_property src_info {type:XDC file:1 line:299 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L17P_T2_35,						Sch name = JD2
set_property src_info {type:XDC file:1 line:300 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN H1 [get_ports {JD[1]}]
set_property src_info {type:XDC file:1 line:301 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JD[1]}]
set_property src_info {type:XDC file:1 line:302 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L17N_T2_35,						Sch name = JD3
set_property src_info {type:XDC file:1 line:303 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN G1 [get_ports {JD[2]}]
set_property src_info {type:XDC file:1 line:304 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JD[2]}]
set_property src_info {type:XDC file:1 line:305 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L20N_T3_35,						Sch name = JD4
set_property src_info {type:XDC file:1 line:306 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN G3 [get_ports {JD[3]}]
set_property src_info {type:XDC file:1 line:307 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JD[3]}]
set_property src_info {type:XDC file:1 line:308 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L15P_T2_DQS_35,					Sch name = JD7
set_property src_info {type:XDC file:1 line:309 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN H2 [get_ports {JD[4]}]
set_property src_info {type:XDC file:1 line:310 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JD[4]}]
set_property src_info {type:XDC file:1 line:311 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L20P_T3_35,						Sch name = JD8
set_property src_info {type:XDC file:1 line:312 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN G4 [get_ports {JD[5]}]
set_property src_info {type:XDC file:1 line:313 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JD[5]}]
set_property src_info {type:XDC file:1 line:314 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L15N_T2_DQS_35,					Sch name = JD9
set_property src_info {type:XDC file:1 line:315 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN G2 [get_ports {JD[6]}]
set_property src_info {type:XDC file:1 line:316 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JD[6]}]
set_property src_info {type:XDC file:1 line:317 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L13N_T2_MRCC_35,					Sch name = JD10
set_property src_info {type:XDC file:1 line:318 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN F3 [get_ports {JD[7]}]
set_property src_info {type:XDC file:1 line:319 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JD[7]}]
set_property src_info {type:XDC file:1 line:320 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:321 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:322 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:323 export:INPUT save:INPUT read:READ} [current_design]
###Pmod Header JXADC
set_property src_info {type:XDC file:1 line:324 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L9P_T1_DQS_AD3P_15,				Sch name = XADC1_P -> XA1_P
set_property src_info {type:XDC file:1 line:325 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A13 [get_ports {JXADC[0]}]
set_property src_info {type:XDC file:1 line:326 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[0]}]
set_property src_info {type:XDC file:1 line:327 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L8P_T1_AD10P_15,					Sch name = XADC2_P -> XA2_P
set_property src_info {type:XDC file:1 line:328 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A15 [get_ports {JXADC[1]}]
set_property src_info {type:XDC file:1 line:329 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[1]}]
set_property src_info {type:XDC file:1 line:330 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L7P_T1_AD2P_15,					Sch name = XADC3_P -> XA3_P
set_property src_info {type:XDC file:1 line:331 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B16 [get_ports {JXADC[2]}]
set_property src_info {type:XDC file:1 line:332 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[2]}]
set_property src_info {type:XDC file:1 line:333 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L10P_T1_AD11P_15,					Sch name = XADC4_P -> XA4_P
set_property src_info {type:XDC file:1 line:334 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B18 [get_ports {JXADC[3]}]
set_property src_info {type:XDC file:1 line:335 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[3]}]
set_property src_info {type:XDC file:1 line:336 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L9N_T1_DQS_AD3N_15,				Sch name = XADC1_N -> XA1_N
set_property src_info {type:XDC file:1 line:337 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A14 [get_ports {JXADC[4]}]
set_property src_info {type:XDC file:1 line:338 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[4]}]
set_property src_info {type:XDC file:1 line:339 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L8N_T1_AD10N_15,					Sch name = XADC2_N -> XA2_N
set_property src_info {type:XDC file:1 line:340 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A16 [get_ports {JXADC[5]}]
set_property src_info {type:XDC file:1 line:341 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[5]}]
set_property src_info {type:XDC file:1 line:342 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L7N_T1_AD2N_15,					Sch name = XADC3_N -> XA3_N
set_property src_info {type:XDC file:1 line:343 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B17 [get_ports {JXADC[6]}]
set_property src_info {type:XDC file:1 line:344 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[6]}]
set_property src_info {type:XDC file:1 line:345 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L10N_T1_AD11N_15,					Sch name = XADC4_N -> XA4_N
set_property src_info {type:XDC file:1 line:346 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A18 [get_ports {JXADC[7]}]
set_property src_info {type:XDC file:1 line:347 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {JXADC[7]}]
set_property src_info {type:XDC file:1 line:348 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:349 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:350 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:351 export:INPUT save:INPUT read:READ} [current_design]
###VGA Connector
set_property src_info {type:XDC file:1 line:352 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L8N_T1_AD14N_35,					Sch name = VGA_R0
set_property src_info {type:XDC file:1 line:353 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A3 [get_ports {vgaRed[0]}]
set_property src_info {type:XDC file:1 line:354 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[0]}]
set_property src_info {type:XDC file:1 line:355 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L7N_T1_AD6N_35,					Sch name = VGA_R1
set_property src_info {type:XDC file:1 line:356 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B4 [get_ports {vgaRed[1]}]
set_property src_info {type:XDC file:1 line:357 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[1]}]
set_property src_info {type:XDC file:1 line:358 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L1N_T0_AD4N_35,					Sch name = VGA_R2
set_property src_info {type:XDC file:1 line:359 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN C5 [get_ports {vgaRed[2]}]
set_property src_info {type:XDC file:1 line:360 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[2]}]
set_property src_info {type:XDC file:1 line:361 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L8P_T1_AD14P_35,					Sch name = VGA_R3
set_property src_info {type:XDC file:1 line:362 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A4 [get_ports {vgaRed[3]}]
set_property src_info {type:XDC file:1 line:363 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {vgaRed[3]}]
set_property src_info {type:XDC file:1 line:364 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L2P_T0_AD12P_35,					Sch name = VGA_B0
set_property src_info {type:XDC file:1 line:365 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B7 [get_ports {vgaBlue[0]}]
set_property src_info {type:XDC file:1 line:366 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[0]}]
set_property src_info {type:XDC file:1 line:367 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L4N_T0_35,						Sch name = VGA_B1
set_property src_info {type:XDC file:1 line:368 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN C7 [get_ports {vgaBlue[1]}]
set_property src_info {type:XDC file:1 line:369 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[1]}]
set_property src_info {type:XDC file:1 line:370 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L6N_T0_VREF_35,					Sch name = VGA_B2
set_property src_info {type:XDC file:1 line:371 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D7 [get_ports {vgaBlue[2]}]
set_property src_info {type:XDC file:1 line:372 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[2]}]
set_property src_info {type:XDC file:1 line:373 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L4P_T0_35,						Sch name = VGA_B3
set_property src_info {type:XDC file:1 line:374 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D8 [get_ports {vgaBlue[3]}]
set_property src_info {type:XDC file:1 line:375 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {vgaBlue[3]}]
set_property src_info {type:XDC file:1 line:376 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L1P_T0_AD4P_35,					Sch name = VGA_G0
set_property src_info {type:XDC file:1 line:377 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN C6 [get_ports {vgaGreen[0]}]
set_property src_info {type:XDC file:1 line:378 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[0]}]
set_property src_info {type:XDC file:1 line:379 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L3N_T0_DQS_AD5N_35,				Sch name = VGA_G1
set_property src_info {type:XDC file:1 line:380 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A5 [get_ports {vgaGreen[1]}]
set_property src_info {type:XDC file:1 line:381 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[1]}]
set_property src_info {type:XDC file:1 line:382 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L2N_T0_AD12N_35,					Sch name = VGA_G2
set_property src_info {type:XDC file:1 line:383 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B6 [get_ports {vgaGreen[2]}]
set_property src_info {type:XDC file:1 line:384 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[2]}]
set_property src_info {type:XDC file:1 line:385 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L3P_T0_DQS_AD5P_35,				Sch name = VGA_G3
set_property src_info {type:XDC file:1 line:386 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A6 [get_ports {vgaGreen[3]}]
set_property src_info {type:XDC file:1 line:387 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {vgaGreen[3]}]
set_property src_info {type:XDC file:1 line:388 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L4P_T0_15,						Sch name = VGA_HS
set_property src_info {type:XDC file:1 line:389 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B11 [get_ports Hsync]
set_property src_info {type:XDC file:1 line:390 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports Hsync]
set_property src_info {type:XDC file:1 line:391 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L3N_T0_DQS_AD1N_15,				Sch name = VGA_VS
set_property src_info {type:XDC file:1 line:392 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B12 [get_ports Vsync]
set_property src_info {type:XDC file:1 line:393 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports Vsync]
set_property src_info {type:XDC file:1 line:394 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:395 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:396 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:397 export:INPUT save:INPUT read:READ} [current_design]
###Micro SD Connector
set_property src_info {type:XDC file:1 line:398 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L14P_T2_SRCC_35,					Sch name = SD_RESET
set_property src_info {type:XDC file:1 line:399 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN E2 [get_ports sdReset]
set_property src_info {type:XDC file:1 line:400 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports sdReset]
set_property src_info {type:XDC file:1 line:401 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L9N_T1_DQS_AD7N_35,				Sch name = SD_CD
set_property src_info {type:XDC file:1 line:402 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A1 [get_ports sdCD]
set_property src_info {type:XDC file:1 line:403 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports sdCD]
set_property src_info {type:XDC file:1 line:404 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L9P_T1_DQS_AD7P_35,				Sch name = SD_SCK
set_property src_info {type:XDC file:1 line:405 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B1 [get_ports sdSCK]
set_property src_info {type:XDC file:1 line:406 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports sdSCK]
set_property src_info {type:XDC file:1 line:407 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L16N_T2_35,						Sch name = SD_CMD
set_property src_info {type:XDC file:1 line:408 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN C1 [get_ports sdCmd]
set_property src_info {type:XDC file:1 line:409 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports sdCmd]
set_property src_info {type:XDC file:1 line:410 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L16P_T2_35,						Sch name = SD_DAT0
set_property src_info {type:XDC file:1 line:411 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN C2 [get_ports {sdData[0]}]
set_property src_info {type:XDC file:1 line:412 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {sdData[0]}]
set_property src_info {type:XDC file:1 line:413 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L18N_T2_35,						Sch name = SD_DAT1
set_property src_info {type:XDC file:1 line:414 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN E1 [get_ports {sdData[1]}]
set_property src_info {type:XDC file:1 line:415 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {sdData[1]}]
set_property src_info {type:XDC file:1 line:416 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L18P_T2_35,						Sch name = SD_DAT2
set_property src_info {type:XDC file:1 line:417 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN F1 [get_ports {sdData[2]}]
set_property src_info {type:XDC file:1 line:418 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {sdData[2]}]
set_property src_info {type:XDC file:1 line:419 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L14N_T2_SRCC_35,					Sch name = SD_DAT3
set_property src_info {type:XDC file:1 line:420 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D2 [get_ports {sdData[3]}]
set_property src_info {type:XDC file:1 line:421 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {sdData[3]}]
set_property src_info {type:XDC file:1 line:422 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:423 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:424 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:425 export:INPUT save:INPUT read:READ} [current_design]
###Accelerometer
set_property src_info {type:XDC file:1 line:426 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L6N_T0_VREF_15,					Sch name = ACL_MISO
set_property src_info {type:XDC file:1 line:427 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D13 [get_ports aclMISO]
set_property src_info {type:XDC file:1 line:428 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports aclMISO]
set_property src_info {type:XDC file:1 line:429 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L2N_T0_AD8N_15,					Sch name = ACL_MOSI
set_property src_info {type:XDC file:1 line:430 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B14 [get_ports aclMOSI]
set_property src_info {type:XDC file:1 line:431 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports aclMOSI]
set_property src_info {type:XDC file:1 line:432 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L12P_T1_MRCC_15,					Sch name = ACL_SCLK
set_property src_info {type:XDC file:1 line:433 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D15 [get_ports aclSCK]
set_property src_info {type:XDC file:1 line:434 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports aclSCK]
set_property src_info {type:XDC file:1 line:435 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L12N_T1_MRCC_15,					Sch name = ACL_CSN
set_property src_info {type:XDC file:1 line:436 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN C15 [get_ports aclSS]
set_property src_info {type:XDC file:1 line:437 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports aclSS]
set_property src_info {type:XDC file:1 line:438 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L20P_T3_A20_15,					Sch name = ACL_INT1
set_property src_info {type:XDC file:1 line:439 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN C16 [get_ports aclInt1]
set_property src_info {type:XDC file:1 line:440 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports aclInt1]
set_property src_info {type:XDC file:1 line:441 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L11P_T1_SRCC_15,					Sch name = ACL_INT2
set_property src_info {type:XDC file:1 line:442 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN E15 [get_ports aclInt2]
set_property src_info {type:XDC file:1 line:443 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports aclInt2]
set_property src_info {type:XDC file:1 line:444 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:445 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:446 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:447 export:INPUT save:INPUT read:READ} [current_design]
###Temperature Sensor
set_property src_info {type:XDC file:1 line:448 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L14N_T2_SRCC_15,					Sch name = TMP_SCL
set_property src_info {type:XDC file:1 line:449 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN F16 [get_ports tmpSCL]
set_property src_info {type:XDC file:1 line:450 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports tmpSCL]
set_property src_info {type:XDC file:1 line:451 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L13N_T2_MRCC_15,					Sch name = TMP_SDA
set_property src_info {type:XDC file:1 line:452 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN G16 [get_ports tmpSDA]
set_property src_info {type:XDC file:1 line:453 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports tmpSDA]
set_property src_info {type:XDC file:1 line:454 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L1P_T0_AD0P_15,					Sch name = TMP_INT
set_property src_info {type:XDC file:1 line:455 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D14 [get_ports tmpInt]
set_property src_info {type:XDC file:1 line:456 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports tmpInt]
set_property src_info {type:XDC file:1 line:457 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L1N_T0_AD0N_15,					Sch name = TMP_CT
set_property src_info {type:XDC file:1 line:458 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN C14 [get_ports tmpCT]
set_property src_info {type:XDC file:1 line:459 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports tmpCT]
set_property src_info {type:XDC file:1 line:460 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:461 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:462 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:463 export:INPUT save:INPUT read:READ} [current_design]
###Omnidirectional Microphone
set_property src_info {type:XDC file:1 line:464 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_25_35,							Sch name = M_CLK
set_property src_info {type:XDC file:1 line:465 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN J5 [get_ports micClk]
set_property src_info {type:XDC file:1 line:466 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports micClk]
set_property src_info {type:XDC file:1 line:467 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L24N_T3_35,						Sch name = M_DATA
set_property src_info {type:XDC file:1 line:468 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN H5 [get_ports micData]
set_property src_info {type:XDC file:1 line:469 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports micData]
set_property src_info {type:XDC file:1 line:470 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_0_35,								Sch name = M_LRSEL
set_property src_info {type:XDC file:1 line:471 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN F5 [get_ports micLRSel]
set_property src_info {type:XDC file:1 line:472 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports micLRSel]
set_property src_info {type:XDC file:1 line:473 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:474 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:475 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:476 export:INPUT save:INPUT read:READ} [current_design]
###PWM Audio Amplifier
set_property src_info {type:XDC file:1 line:477 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L4N_T0_15,						Sch name = AUD_PWM
set_property src_info {type:XDC file:1 line:478 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A11 [get_ports ampPWM]
set_property src_info {type:XDC file:1 line:479 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports ampPWM]
set_property src_info {type:XDC file:1 line:480 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L6P_T0_15,						Sch name = AUD_SD
set_property src_info {type:XDC file:1 line:481 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D12 [get_ports ampSD]
set_property src_info {type:XDC file:1 line:482 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports ampSD]
set_property src_info {type:XDC file:1 line:483 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:484 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:485 export:INPUT save:INPUT read:READ} [current_design]
###USB-RS232 Interface
set_property src_info {type:XDC file:1 line:486 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L7P_T1_AD6P_35,					Sch name = UART_TXD_IN
set_property src_info {type:XDC file:1 line:487 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN C4 [get_ports RsRx]
set_property src_info {type:XDC file:1 line:488 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RsRx]
set_property src_info {type:XDC file:1 line:489 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L11N_T1_SRCC_35,					Sch name = UART_RXD_OUT
set_property src_info {type:XDC file:1 line:490 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D4 [get_ports RsTx]
set_property src_info {type:XDC file:1 line:491 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RsTx]
set_property src_info {type:XDC file:1 line:492 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L12N_T1_MRCC_35,					Sch name = UART_CTS
set_property src_info {type:XDC file:1 line:493 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D3 [get_ports RsCts]
set_property src_info {type:XDC file:1 line:494 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RsCts]
set_property src_info {type:XDC file:1 line:495 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L5N_T0_AD13N_35,					Sch name = UART_RTS
set_property src_info {type:XDC file:1 line:496 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN E5 [get_ports RsRts]
set_property src_info {type:XDC file:1 line:497 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RsRts]
set_property src_info {type:XDC file:1 line:498 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:499 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:500 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:501 export:INPUT save:INPUT read:READ} [current_design]
###USB HID (PS/2)
set_property src_info {type:XDC file:1 line:502 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L13P_T2_MRCC_35,					Sch name = PS2_CLK
set_property src_info {type:XDC file:1 line:503 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN F4 [get_ports PS2Clk]
set_property src_info {type:XDC file:1 line:504 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports PS2Clk]
set_property src_info {type:XDC file:1 line:505 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property PULLUP true [get_ports PS2Clk]
set_property src_info {type:XDC file:1 line:506 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L10N_T1_AD15N_35,					Sch name = PS2_DATA
set_property src_info {type:XDC file:1 line:507 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B2 [get_ports PS2Data]
set_property src_info {type:XDC file:1 line:508 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports PS2Data]
set_property src_info {type:XDC file:1 line:509 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property PULLUP true [get_ports PS2Data]
set_property src_info {type:XDC file:1 line:510 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:511 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:512 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:513 export:INPUT save:INPUT read:READ} [current_design]
###SMSC Ethernet PHY
set_property src_info {type:XDC file:1 line:514 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 16, Pin name = IO_L11P_T1_SRCC_16,					Sch name = ETH_MDC
set_property src_info {type:XDC file:1 line:515 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN C9 [get_ports PhyMdc]
set_property src_info {type:XDC file:1 line:516 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports PhyMdc]
set_property src_info {type:XDC file:1 line:517 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 16, Pin name = IO_L14N_T2_SRCC_16,					Sch name = ETH_MDIO
set_property src_info {type:XDC file:1 line:518 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A9 [get_ports PhyMdio]
set_property src_info {type:XDC file:1 line:519 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports PhyMdio]
set_property src_info {type:XDC file:1 line:520 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L10P_T1_AD15P_35,					Sch name = ETH_RSTN
set_property src_info {type:XDC file:1 line:521 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B3 [get_ports PhyRstn]
set_property src_info {type:XDC file:1 line:522 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports PhyRstn]
set_property src_info {type:XDC file:1 line:523 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 16, Pin name = IO_L6N_T0_VREF_16,					Sch name = ETH_CRSDV
set_property src_info {type:XDC file:1 line:524 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D9 [get_ports PhyCrs]
set_property src_info {type:XDC file:1 line:525 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports PhyCrs]
set_property src_info {type:XDC file:1 line:526 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 16, Pin name = IO_L13N_T2_MRCC_16,					Sch name = ETH_RXERR
set_property src_info {type:XDC file:1 line:527 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN C10 [get_ports PhyRxErr]
set_property src_info {type:XDC file:1 line:528 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports PhyRxErr]
set_property src_info {type:XDC file:1 line:529 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 16, Pin name = IO_L19N_T3_VREF_16,					Sch name = ETH_RXD0
set_property src_info {type:XDC file:1 line:530 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D10 [get_ports {PhyRxd[0]}]
set_property src_info {type:XDC file:1 line:531 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {PhyRxd[0]}]
set_property src_info {type:XDC file:1 line:532 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 16, Pin name = IO_L13P_T2_MRCC_16,					Sch name = ETH_RXD1
set_property src_info {type:XDC file:1 line:533 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN C11 [get_ports {PhyRxd[1]}]
set_property src_info {type:XDC file:1 line:534 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {PhyRxd[1]}]
set_property src_info {type:XDC file:1 line:535 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 16, Pin name = IO_L11N_T1_SRCC_16,					Sch name = ETH_TXEN
set_property src_info {type:XDC file:1 line:536 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B9 [get_ports PhyTxEn]
set_property src_info {type:XDC file:1 line:537 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports PhyTxEn]
set_property src_info {type:XDC file:1 line:538 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 16, Pin name = IO_L14P_T2_SRCC_16,					Sch name = ETH_TXD0
set_property src_info {type:XDC file:1 line:539 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A10 [get_ports {PhyTxd[0]}]
set_property src_info {type:XDC file:1 line:540 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {PhyTxd[0]}]
set_property src_info {type:XDC file:1 line:541 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 16, Pin name = IO_L12N_T1_MRCC_16,					Sch name = ETH_TXD1
set_property src_info {type:XDC file:1 line:542 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN A8 [get_ports {PhyTxd[1]}]
set_property src_info {type:XDC file:1 line:543 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {PhyTxd[1]}]
set_property src_info {type:XDC file:1 line:544 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 35, Pin name = IO_L11P_T1_SRCC_35,					Sch name = ETH_REFCLK
set_property src_info {type:XDC file:1 line:545 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN D5 [get_ports PhyClk50Mhz]
set_property src_info {type:XDC file:1 line:546 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports PhyClk50Mhz]
set_property src_info {type:XDC file:1 line:547 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 16, Pin name = IO_L12P_T1_MRCC_16,					Sch name = ETH_INTN
set_property src_info {type:XDC file:1 line:548 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN B8 [get_ports PhyIntn]
set_property src_info {type:XDC file:1 line:549 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports PhyIntn]
set_property src_info {type:XDC file:1 line:550 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:551 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:552 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:553 export:INPUT save:INPUT read:READ} [current_design]
###Quad SPI Flash
set_property src_info {type:XDC file:1 line:554 export:INPUT save:INPUT read:READ} [current_design]
###Bank = CONFIG, Pin name = CCLK_0,							Sch name = QSPI_SCK
set_property src_info {type:XDC file:1 line:555 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN E9 [get_ports {QspiSCK}]
set_property src_info {type:XDC file:1 line:556 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiSCK}]
set_property src_info {type:XDC file:1 line:557 export:INPUT save:INPUT read:READ} [current_design]
###Bank = CONFIG, Pin name = IO_L1P_T0_D00_MOSI_14,			Sch name = QSPI_DQ0
set_property src_info {type:XDC file:1 line:558 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN K17 [get_ports {QspiDB[0]}]
set_property src_info {type:XDC file:1 line:559 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[0]}]
set_property src_info {type:XDC file:1 line:560 export:INPUT save:INPUT read:READ} [current_design]
###Bank = CONFIG, Pin name = IO_L1N_T0_D01_DIN_14,			Sch name = QSPI_DQ1
set_property src_info {type:XDC file:1 line:561 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN K18 [get_ports {QspiDB[1]}]
set_property src_info {type:XDC file:1 line:562 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[1]}]
set_property src_info {type:XDC file:1 line:563 export:INPUT save:INPUT read:READ} [current_design]
###Bank = CONFIG, Pin name = IO_L20_T0_D02_14,				Sch name = QSPI_DQ2
set_property src_info {type:XDC file:1 line:564 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN L14 [get_ports {QspiDB[2]}]
set_property src_info {type:XDC file:1 line:565 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[2]}]
set_property src_info {type:XDC file:1 line:566 export:INPUT save:INPUT read:READ} [current_design]
###Bank = CONFIG, Pin name = IO_L2P_T0_D03_14,				Sch name = QSPI_DQ3
set_property src_info {type:XDC file:1 line:567 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN M14 [get_ports {QspiDB[3]}]
set_property src_info {type:XDC file:1 line:568 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {QspiDB[3]}]
set_property src_info {type:XDC file:1 line:569 export:INPUT save:INPUT read:READ} [current_design]
###Bank = CONFIG, Pin name = IO_L15N_T2_DQS_DOUT_CSO_B_14,	Sch name = QSPI_CSN
set_property src_info {type:XDC file:1 line:570 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN L13 [get_ports QspiCSn]
set_property src_info {type:XDC file:1 line:571 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports QspiCSn]
set_property src_info {type:XDC file:1 line:572 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:573 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:574 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:575 export:INPUT save:INPUT read:READ} [current_design]
###Cellular RAM
set_property src_info {type:XDC file:1 line:576 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L14N_T2_SRCC_14,					Sch name = CRAM_CLK
set_property src_info {type:XDC file:1 line:577 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN T15 [get_ports RamCLK]
set_property src_info {type:XDC file:1 line:578 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RamCLK]
set_property src_info {type:XDC file:1 line:579 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L23P_T3_A03_D19_14,				Sch name = CRAM_ADVN
set_property src_info {type:XDC file:1 line:580 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN T13 [get_ports RamADVn]
set_property src_info {type:XDC file:1 line:581 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RamADVn]
set_property src_info {type:XDC file:1 line:582 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L4P_T0_D04_14,					Sch name = CRAM_CEN
set_property src_info {type:XDC file:1 line:583 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN L18 [get_ports RamCEn]
set_property src_info {type:XDC file:1 line:584 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RamCEn]
set_property src_info {type:XDC file:1 line:585 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L19P_T3_A22_15,					Sch name = CRAM_CRE
set_property src_info {type:XDC file:1 line:586 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN J14 [get_ports RamCRE]
set_property src_info {type:XDC file:1 line:587 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RamCRE]
set_property src_info {type:XDC file:1 line:588 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L15P_T2_DQS_15,					Sch name = CRAM_OEN
set_property src_info {type:XDC file:1 line:589 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN H14 [get_ports RamOEn]
set_property src_info {type:XDC file:1 line:590 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RamOEn]
set_property src_info {type:XDC file:1 line:591 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_0_14,								Sch name = CRAM_WEN
set_property src_info {type:XDC file:1 line:592 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN R11 [get_ports RamWEn]
set_property src_info {type:XDC file:1 line:593 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RamWEn]
set_property src_info {type:XDC file:1 line:594 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L24N_T3_RS0_15,					Sch name = CRAM_LBN
set_property src_info {type:XDC file:1 line:595 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN J15 [get_ports RamLBn]
set_property src_info {type:XDC file:1 line:596 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RamLBn]
set_property src_info {type:XDC file:1 line:597 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L17N_T2_A25_15,					Sch name = CRAM_UBN
set_property src_info {type:XDC file:1 line:598 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN J13 [get_ports RamUBn]
set_property src_info {type:XDC file:1 line:599 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RamUBn]
set_property src_info {type:XDC file:1 line:600 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L14P_T2_SRCC_14,					Sch name = CRAM_WAIT
set_property src_info {type:XDC file:1 line:601 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN T14 [get_ports RamWait]
set_property src_info {type:XDC file:1 line:602 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports RamWait]
set_property src_info {type:XDC file:1 line:603 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:604 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L5P_T0_DQ06_14,					Sch name = CRAM_DQ0
set_property src_info {type:XDC file:1 line:605 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN R12 [get_ports {MemDB[0]}]
set_property src_info {type:XDC file:1 line:606 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[0]}]
set_property src_info {type:XDC file:1 line:607 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L19P_T3_A10_D26_14,				Sch name = CRAM_DQ1
set_property src_info {type:XDC file:1 line:608 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN T11 [get_ports {MemDB[1]}]
set_property src_info {type:XDC file:1 line:609 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[1]}]
set_property src_info {type:XDC file:1 line:610 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L20P_T3_A08)D24_14,				Sch name = CRAM_DQ2
set_property src_info {type:XDC file:1 line:611 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN U12 [get_ports {MemDB[2]}]
set_property src_info {type:XDC file:1 line:612 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[2]}]
set_property src_info {type:XDC file:1 line:613 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L5N_T0_D07_14,					Sch name = CRAM_DQ3
set_property src_info {type:XDC file:1 line:614 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN R13 [get_ports {MemDB[3]}]
set_property src_info {type:XDC file:1 line:615 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[3]}]
set_property src_info {type:XDC file:1 line:616 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L17N_T2_A13_D29_14,				Sch name = CRAM_DQ4
set_property src_info {type:XDC file:1 line:617 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN U18 [get_ports {MemDB[4]}]
set_property src_info {type:XDC file:1 line:618 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[4]}]
set_property src_info {type:XDC file:1 line:619 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L12N_T1_MRCC_14,					Sch name = CRAM_DQ5
set_property src_info {type:XDC file:1 line:620 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN R17 [get_ports {MemDB[5]}]
set_property src_info {type:XDC file:1 line:621 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[5]}]
set_property src_info {type:XDC file:1 line:622 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L7N_T1_D10_14,					Sch name = CRAM_DQ6
set_property src_info {type:XDC file:1 line:623 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN T18 [get_ports {MemDB[6]}]
set_property src_info {type:XDC file:1 line:624 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[6]}]
set_property src_info {type:XDC file:1 line:625 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L7P_T1_D09_14,					Sch name = CRAM_DQ7
set_property src_info {type:XDC file:1 line:626 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN R18 [get_ports {MemDB[7]}]
set_property src_info {type:XDC file:1 line:627 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[7]}]
set_property src_info {type:XDC file:1 line:628 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L22N_T3_A16_15,					Sch name = CRAM_DQ8
set_property src_info {type:XDC file:1 line:629 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN F18 [get_ports {MemDB[8]}]
set_property src_info {type:XDC file:1 line:630 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[8]}]
set_property src_info {type:XDC file:1 line:631 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L22P_T3_A17_15,					Sch name = CRAM_DQ9
set_property src_info {type:XDC file:1 line:632 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN G18 [get_ports {MemDB[9]}]
set_property src_info {type:XDC file:1 line:633 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[9]}]
set_property src_info {type:XDC file:1 line:634 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_IO_L18N_T2_A23_15,				Sch name = CRAM_DQ10
set_property src_info {type:XDC file:1 line:635 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN G17 [get_ports {MemDB[10]}]
set_property src_info {type:XDC file:1 line:636 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[10]}]
set_property src_info {type:XDC file:1 line:637 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L4N_T0_D05_14,					Sch name = CRAM_DQ11
set_property src_info {type:XDC file:1 line:638 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN M18 [get_ports {MemDB[11]}]
set_property src_info {type:XDC file:1 line:639 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[11]}]
set_property src_info {type:XDC file:1 line:640 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L10N_T1_D15_14,					Sch name = CRAM_DQ12
set_property src_info {type:XDC file:1 line:641 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN M17 [get_ports {MemDB[12]}]
set_property src_info {type:XDC file:1 line:642 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[12]}]
set_property src_info {type:XDC file:1 line:643 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L9N_T1_DQS_D13_14,				Sch name = CRAM_DQ13
set_property src_info {type:XDC file:1 line:644 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN P18 [get_ports {MemDB[13]}]
set_property src_info {type:XDC file:1 line:645 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[13]}]
set_property src_info {type:XDC file:1 line:646 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L9P_T1_DQS_14,					Sch name = CRAM_DQ14
set_property src_info {type:XDC file:1 line:647 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN N17 [get_ports {MemDB[14]}]
set_property src_info {type:XDC file:1 line:648 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[14]}]
set_property src_info {type:XDC file:1 line:649 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L12P_T1_MRCC_14,					Sch name = CRAM_DQ15
set_property src_info {type:XDC file:1 line:650 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN P17 [get_ports {MemDB[15]}]
set_property src_info {type:XDC file:1 line:651 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemDB[15]}]
set_property src_info {type:XDC file:1 line:652 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:653 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L23N_T3_FWE_B_15,					Sch name = CRAM_A0
set_property src_info {type:XDC file:1 line:654 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN J18 [get_ports {MemAdr[0]}]
set_property src_info {type:XDC file:1 line:655 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[0]}]
set_property src_info {type:XDC file:1 line:656 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L18P_T2_A24_15,					Sch name = CRAM_A1
set_property src_info {type:XDC file:1 line:657 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN H17 [get_ports {MemAdr[1]}]
set_property src_info {type:XDC file:1 line:658 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[1]}]
set_property src_info {type:XDC file:1 line:659 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L19N_T3_A21_VREF_15,				Sch name = CRAM_A2
set_property src_info {type:XDC file:1 line:660 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN H15 [get_ports {MemAdr[2]}]
set_property src_info {type:XDC file:1 line:661 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[2]}]
set_property src_info {type:XDC file:1 line:662 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L23P_T3_FOE_B_15,					Sch name = CRAM_A3
set_property src_info {type:XDC file:1 line:663 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN J17 [get_ports {MemAdr[3]}]
set_property src_info {type:XDC file:1 line:664 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[3]}]
set_property src_info {type:XDC file:1 line:665 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L13P_T2_MRCC_15,					Sch name = CRAM_A4
set_property src_info {type:XDC file:1 line:666 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN H16 [get_ports {MemAdr[4]}]
set_property src_info {type:XDC file:1 line:667 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[4]}]
set_property src_info {type:XDC file:1 line:668 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L24P_T3_RS1_15,					Sch name = CRAM_A5
set_property src_info {type:XDC file:1 line:669 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN K15 [get_ports {MemAdr[5]}]
set_property src_info {type:XDC file:1 line:670 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[5]}]
set_property src_info {type:XDC file:1 line:671 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 15, Pin name = IO_L17P_T2_A26_15,					Sch name = CRAM_A6
set_property src_info {type:XDC file:1 line:672 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN K13 [get_ports {MemAdr[6]}]
set_property src_info {type:XDC file:1 line:673 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[6]}]
set_property src_info {type:XDC file:1 line:674 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L11P_T1_SRCC_14,					Sch name = CRAM_A7
set_property src_info {type:XDC file:1 line:675 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN N15 [get_ports {MemAdr[7]}]
set_property src_info {type:XDC file:1 line:676 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[7]}]
set_property src_info {type:XDC file:1 line:677 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L16N_T2_SRCC-14,					Sch name = CRAM_A8
set_property src_info {type:XDC file:1 line:678 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN V16 [get_ports {MemAdr[8]}]
set_property src_info {type:XDC file:1 line:679 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[8]}]
set_property src_info {type:XDC file:1 line:680 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L22P_T3_A05_D21_14,				Sch name = CRAM_A9
set_property src_info {type:XDC file:1 line:681 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN U14 [get_ports {MemAdr[9]}]
set_property src_info {type:XDC file:1 line:682 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[9]}]
set_property src_info {type:XDC file:1 line:683 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L22N_T3_A04_D20_14,				Sch name = CRAM_A10
set_property src_info {type:XDC file:1 line:684 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN V14 [get_ports {MemAdr[10]}]
set_property src_info {type:XDC file:1 line:685 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[10]}]
set_property src_info {type:XDC file:1 line:686 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L20N_T3_A07_D23_14,				Sch name = CRAM_A11
set_property src_info {type:XDC file:1 line:687 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN V12 [get_ports {MemAdr[11]}]
set_property src_info {type:XDC file:1 line:688 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[11]}]
set_property src_info {type:XDC file:1 line:689 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L8N_T1_D12_14,					Sch name = CRAM_A12
set_property src_info {type:XDC file:1 line:690 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN P14 [get_ports {MemAdr[12]}]
set_property src_info {type:XDC file:1 line:691 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[12]}]
set_property src_info {type:XDC file:1 line:692 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L18P_T2_A12_D28_14,				Sch name = CRAM_A13
set_property src_info {type:XDC file:1 line:693 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN U16 [get_ports {MemAdr[13]}]
set_property src_info {type:XDC file:1 line:694 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[13]}]
set_property src_info {type:XDC file:1 line:695 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L13N_T2_MRCC_14,					Sch name = CRAM_A14
set_property src_info {type:XDC file:1 line:696 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN R15 [get_ports {MemAdr[14]}]
set_property src_info {type:XDC file:1 line:697 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[14]}]
set_property src_info {type:XDC file:1 line:698 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L8P_T1_D11_14,					Sch name = CRAM_A15
set_property src_info {type:XDC file:1 line:699 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN N14 [get_ports {MemAdr[15]}]
set_property src_info {type:XDC file:1 line:700 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[15]}]
set_property src_info {type:XDC file:1 line:701 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L11N_T1_SRCC_14,					Sch name = CRAM_A16
set_property src_info {type:XDC file:1 line:702 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN N16 [get_ports {MemAdr[16]}]
set_property src_info {type:XDC file:1 line:703 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[16]}]
set_property src_info {type:XDC file:1 line:704 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L6N_T0_D08_VREF_14,				Sch name = CRAM_A17
set_property src_info {type:XDC file:1 line:705 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN M13 [get_ports {MemAdr[17]}]
set_property src_info {type:XDC file:1 line:706 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[17]}]
set_property src_info {type:XDC file:1 line:707 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L18N_T2_A11_D27_14,				Sch name = CRAM_A18
set_property src_info {type:XDC file:1 line:708 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN V17 [get_ports {MemAdr[18]}]
set_property src_info {type:XDC file:1 line:709 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[18]}]
set_property src_info {type:XDC file:1 line:710 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L17P_T2_A14_D30_14,				Sch name = CRAM_A19
set_property src_info {type:XDC file:1 line:711 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN U17 [get_ports {MemAdr[19]}]
set_property src_info {type:XDC file:1 line:712 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[19]}]
set_property src_info {type:XDC file:1 line:713 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L24N_T3_A00_D16_14,				Sch name = CRAM_A20
set_property src_info {type:XDC file:1 line:714 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN T10 [get_ports {MemAdr[20]}]
set_property src_info {type:XDC file:1 line:715 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[20]}]
set_property src_info {type:XDC file:1 line:716 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L10P_T1_D14_14,					Sch name = CRAM_A21
set_property src_info {type:XDC file:1 line:717 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN M16 [get_ports {MemAdr[21]}]
set_property src_info {type:XDC file:1 line:718 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[21]}]
set_property src_info {type:XDC file:1 line:719 export:INPUT save:INPUT read:READ} [current_design]
###Bank = 14, Pin name = IO_L23N_T3_A02_D18_14,				Sch name = CRAM_A22
set_property src_info {type:XDC file:1 line:720 export:INPUT save:INPUT read:READ} [current_design]
##set_property PACKAGE_PIN U13 [get_ports {MemAdr[22]}]
set_property src_info {type:XDC file:1 line:721 export:INPUT save:INPUT read:READ} [current_design]
#	#set_property IOSTANDARD LVCMOS33 [get_ports {MemAdr[22]}]
set_property src_info {type:XDC file:1 line:722 export:INPUT save:INPUT read:READ} [current_design]

set_property src_info {type:XDC file:1 line:723 export:INPUT save:INPUT read:READ} [current_design]

