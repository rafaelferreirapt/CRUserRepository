library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;

entity smart_mux is
    generic( data_width : integer := 16;
             addres_bits : integer := 2);
    port(port_in  : in std_logic_vector(2**addres_bits*data_width-1 downto 0);
         port_out : out std_logic_vector(data_width-1 downto 0);
         select_port : in std_logic_vector(addres_bits-1 downto 0));
end smart_mux;

architecture Behavioral of smart_mux is
begin

process(port_in, select_port)
begin
    port_out <= port_in(conv_integer(select_port)*data_width+data_width-1 downto conv_integer(select_port)*data_width);
end process;

end Behavioral;
