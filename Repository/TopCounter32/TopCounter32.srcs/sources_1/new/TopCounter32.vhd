library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity TopCounter32 is
    generic (size : integer := 32;
             size_in : integer := 32);
    port ( clk : in std_logic;
           data_in : in std_logic_vector (size_in-1 downto 0);
           data_out : out std_logic_vector (size-1 downto 0));
end TopCounter32;

architecture Behavioral of TopCounter32 is
    signal counter : std_logic_vector (size-1 downto 0);
    signal divided_clk : std_logic;
begin
    counter <= counter+1 when rising_edge(divided_clk);
    data_out<=counter;
    
    clock_div: entity work.clock_divider
               port map (clk,divided_clk);

end Behavioral;