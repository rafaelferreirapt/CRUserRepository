//Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2015.4 (lin64) Build 1412921 Wed Nov 18 09:44:32 MST 2015
//Date        : Tue Apr 12 19:15:28 2016
//Host        : ubuntu running 64-bit Ubuntu 14.04.1 LTS
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (btnC,
    led,
    sw);
  input btnC;
  output [4:0]led;
  input [15:0]sw;

  wire btnC;
  wire [4:0]led;
  wire [15:0]sw;

  design_1 design_1_i
       (.btnC(btnC),
        .led(led),
        .sw(sw));
endmodule
