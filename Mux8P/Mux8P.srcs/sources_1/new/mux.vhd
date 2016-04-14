library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;


entity mux is
    generic( data_width : integer := 16);
    port(port0 : in std_logic_vector(data_width-1 downto 0);
         port1 : in std_logic_vector(data_width-1 downto 0);
         port2 : in std_logic_vector(data_width-1 downto 0);
         port3 : in std_logic_vector(data_width-1 downto 0);
         port4 : in std_logic_vector(data_width-1 downto 0);
         port5 : in std_logic_vector(data_width-1 downto 0);
         port6 : in std_logic_vector(data_width-1 downto 0);
         port7 : in std_logic_vector(data_width-1 downto 0);
         select_port : in std_logic_vector(2 downto 0);
         port_out : out std_logic_vector(data_width-1 downto 0));
end mux;

architecture Behavioral of mux is

begin

process(select_port)
begin
   case select_port is
        when "000" =>  port_out <= port0;
        when "001" =>  port_out <= port1;
        when "010" =>  port_out <= port2;
        when "011" =>  port_out <= port3;
        when "100" =>  port_out <= port4;
        when "101" =>  port_out <= port5;
        when "110" =>  port_out <= port6;
        when "111" =>  port_out <= port7;
   end case;
end process;

end Behavioral;
