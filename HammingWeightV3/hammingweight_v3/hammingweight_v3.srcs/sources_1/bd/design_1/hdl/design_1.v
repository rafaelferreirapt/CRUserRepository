//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
//Date        : Tue Apr 12 19:15:28 2016
//Host        : ubuntu running 64-bit Ubuntu 14.04.1 LTS
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=1,numReposBlks=1,numNonXlnxBlks=1,numHierBlks=0,maxHierDepth=0,synth_mode=Global}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (btnC,
    led,
    sw);
  input btnC;
  output [4:0]led;
  input [15:0]sw;

  wire btnC_1;
  wire [4:0]hw_0_out_data;
  wire [15:0]sw_1;

  assign btnC_1 = btnC;
  assign led[4:0] = hw_0_out_data;
  assign sw_1 = sw[15:0];
  design_1_hw_0_0 hw_0
       (.completed(btnC_1),
        .in_data(sw_1),
        .out_data(hw_0_out_data));
endmodule
