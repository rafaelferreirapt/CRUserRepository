library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

entity showRam is
    generic( number_addr : integer := 4);
    port( clk      : in std_logic;
          addr_out : out std_logic_vector(number_addr-1 downto 0));
end showRam;

architecture Behavioral of showRam is

begin

process(clk)
    variable a : integer range 0 to 2**(number_addr-1)-1 := 0;
begin
    if falling_edge(clk) then 
        addr_out <= conv_std_logic_vector(a, number_addr);
        if(a = 2**(number_addr-1)-1) then
            a := 0;
        else
            a := a + 1;
        end if;
    end if;
end process;
end Behavioral;
