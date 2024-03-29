-- (c) Copyright 1995-2016 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: user.org:user:circuitp:1.0
-- IP Revision: 3

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY project_circuitp_0_0 IS
  PORT (
    clk : IN STD_LOGIC;
    btnC : IN STD_LOGIC;
    addr_array : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
    addr_rom : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    led : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
  );
END project_circuitp_0_0;

ARCHITECTURE project_circuitp_0_0_arch OF project_circuitp_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : string;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF project_circuitp_0_0_arch: ARCHITECTURE IS "yes";

  COMPONENT circuit IS
    GENERIC (
      data_width : INTEGER;
      address_bits : INTEGER;
      min : INTEGER;
      max : INTEGER
    );
    PORT (
      clk : IN STD_LOGIC;
      btnC : IN STD_LOGIC;
      addr_array : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      data_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
      addr_rom : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      led : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
    );
  END COMPONENT circuit;
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_INFO OF clk: SIGNAL IS "xilinx.com:signal:clock:1.0 clk CLK";
BEGIN
  U0 : circuit
    GENERIC MAP (
      data_width => 8,
      address_bits => 4,
      min => 0,
      max => 200
    )
    PORT MAP (
      clk => clk,
      btnC => btnC,
      addr_array => addr_array,
      data_in => data_in,
      data_out => data_out,
      addr_rom => addr_rom,
      led => led
    );
END project_circuitp_0_0_arch;
