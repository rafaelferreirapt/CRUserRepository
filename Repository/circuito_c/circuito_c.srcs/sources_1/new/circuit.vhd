library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity circuit is
    generic(data_width      : integer := 4;
            address_bits    : integer := 4  );
    port ( clk              : in  std_logic;
           btnL             : in  std_logic;
           btnR             : in  std_logic;
           A1               : in  std_logic_vector(data_width-1 downto 0);
           A2               : in  std_logic_vector(data_width-1 downto 0);
           data_out         : out std_logic_vector(data_width*2-1 downto 0);
           led              : out std_logic_vector(15 downto 0));
end circuit;

architecture Behavioral of circuit is
type state_type is (init, final); 	
signal C_S, N_S : state_type;

signal addr_content : std_logic_vector(data_width*2-1 downto 0);
signal led_tmp : std_logic_vector(15 downto 0);
signal addr_in : integer;

type bi_array_type is array (255 downto 0) of std_logic_vector(7 downto 0);
signal matrix : bi_array_type;
begin

process (clk)	 
begin
   if falling_edge(clk) then 
      if (btnL = '1') then  
         addr_content <= std_logic_vector(resize(signed(A1+A2), 8)); 
         led_tmp <= "1000000000000000";
         C_S <= init;
      elsif ( btnR = '1') then
         addr_content <= std_logic_vector(resize(signed(A1*A2), 8)); 
         led_tmp <= "0000000000000001";
         C_S <= init;
      else
        C_S <= N_S;
      end if;
   end if;
end process;

process (C_S)
begin
    N_S <= C_S; 
    addr_in <= conv_integer(A1&A2);

    case C_S is
       when init =>
        matrix(addr_in) <= addr_content;
        data_out <= matrix(addr_in);
        N_S <= final;
       when final => 
        led <= led_tmp;
        N_S <= final;
       when others => 
        N_S <= final;
    end case;
end process;


end Behavioral;
