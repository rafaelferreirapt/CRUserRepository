library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;


entity mux is
    generic( data_width : integer := 16);
    port(port0 : in std_logic_vector(data_width-1 downto 0);
         port1 : in std_logic_vector(data_width-1 downto 0);
         select_port : in std_logic;
         port_out : out std_logic_vector(data_width-1 downto 0));
end mux;

architecture Behavioral of mux is

begin

process(select_port)
begin
   case select_port is
        when '0' =>  port_out <= port0;
        when '1' =>  port_out <= port1;
   end case;
end process;

end Behavioral;
