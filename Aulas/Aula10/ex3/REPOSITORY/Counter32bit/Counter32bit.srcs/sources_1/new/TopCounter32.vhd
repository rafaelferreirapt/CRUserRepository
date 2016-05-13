library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;

entity MyC is
    generic (size   : integer   := 32);
    port ( clk      : in std_logic;
           btnC     : in std_logic;
           data_out : out std_logic_vector (size-1 downto 0));
end MyC;

architecture Behavioral of MyC is
signal counter      : std_logic_vector (size-1 downto 0);
signal divided_clk  : std_logic;
begin

 process (divided_clk)
 begin
 if rising_edge(divided_clk) then
    if btnC = '1' then counter <= (others => '0');
    else counter <= counter+1;
    end if;
 end if;
 end process;

data_out<=counter;

clock_div:  entity work.clock_divider	
            port map  (	clk,divided_clk);

end Behavioral;
