library IEEE;	
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_unsigned.all;

entity TopUnr is
generic(    	data_width      : integer := 32;
            	address_bits   : integer := 3  );
port   (  	data_in 	: in std_logic_vector(data_width*2**address_bits-1 downto 0);
            addr_in     : in std_logic_vector(address_bits-1 downto 0);
          	data_out	: out std_logic_vector(data_width-1 downto 0)    );
end TopUnr;

architecture Behavioral of TopUnr is
begin

    data_out <= data_in(data_width*(conv_integer(addr_in)+1)-1 downto data_width*conv_integer(addr_in));

end Behavioral;
