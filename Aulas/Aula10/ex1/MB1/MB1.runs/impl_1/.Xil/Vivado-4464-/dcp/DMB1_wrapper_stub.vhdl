-- Copyright 1986-2015 Xilinx, Inc. All Rights Reserved.
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity DMB1_wrapper is
  Port ( 
    btnC : in STD_LOGIC;
    btnCpuReset : in STD_LOGIC;
    clk : in STD_LOGIC
  );

end DMB1_wrapper;

architecture stub of DMB1_wrapper is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
begin
end;
