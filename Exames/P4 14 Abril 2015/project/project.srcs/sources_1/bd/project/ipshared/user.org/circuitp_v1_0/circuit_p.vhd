library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

entity circuit is
    generic(data_width      : integer := 32;
            address_bits    : integer := 4;
            min             : integer := 0;
            max             : integer := 10);
    port ( clk              : in  std_logic;
           btnC             : in  std_logic;
           addr_array       : in  std_logic_vector(address_bits-1 downto 0);
           data_in          : in  std_logic_vector(data_width-1 downto 0);
           data_out         : out std_logic_vector(data_width-1 downto 0);
           addr_rom         : out std_logic_vector(address_bits-1 downto 0);
           led              : out std_logic_vector(15 downto 0));
end circuit;

architecture Behavioral of circuit is
type state_type is (init, hamming, final); 	
signal C_S, N_S : state_type;

type bi_array_type is array (2**address_bits-1 downto 0) of std_logic_vector(data_width-1 downto 0);
signal matrix : bi_array_type;
signal addr_rom_tmp, addr_rom_tmp_N : integer range 0 to 2**address_bits-1;

begin

process (clk)	 
begin
   if falling_edge(clk) then 
      if (btnC = '1') then  
         addr_rom_tmp <= 0;
         C_S <= init;
      else
        C_S <= N_S;
        if(N_S = init) then
            addr_rom_tmp <= addr_rom_tmp_N;
        end if;
      end if;
   end if;
end process;

process (C_S)
begin
    N_S <= C_S;

    case C_S is
       when init =>
        led <= conv_std_logic_vector(0, 16);
        addr_rom <= conv_std_logic_vector(addr_rom_tmp, address_bits);
        addr_rom_tmp_N <= addr_rom_tmp + 1;
        N_S <= hamming;
       when hamming =>
        if(conv_integer(data_in) > min and conv_integer(data_in) < max) then
           matrix(addr_rom_tmp) <= data_in;
        end if;
        if(addr_rom_tmp = 2**address_bits-1) then
            N_S <= final;
        else
            N_S <= init;
        end if;
       when final =>
        led <= "1111111111111111";
        N_S <= final;
       when others => 
        N_S <= final;
    end case;
end process;

process (addr_array)
begin
    data_out <= matrix(conv_integer(addr_array));
end process;

end Behavioral;
