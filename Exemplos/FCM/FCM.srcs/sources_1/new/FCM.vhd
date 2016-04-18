library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;


entity FCM is
    generic( d : integer := 1);
    port( addrROM : out STD_LOGIC_VECTOR( 1 downto 0);
          addrRAM : out STD_LOGIC_VECTOR( 1 downto 0);
          clk : in STD_LOGIC;
          btnC : in STD_LOGIC;
          enable : out STD_LOGIC);
end FCM;

architecture Behavioral of FCM is

type state_type is (initial_state, write, final);
signal C_S, N_S : state_type;
signal ad, N_Ad : integer range 0 to 3+d;

begin


process (clk)
begin
    if rising_edge(clk) then
        if (btnC = '1') then
            C_S <= initial_state;
            ad <= 0;
        else
            C_S <= N_S;
            ad <= N_ad;
        end if;
     end if;
end process;

process (C_S, ad)
begin
    N_S <= C_S;
    N_ad <= ad;
    
    case C_S is
        when initial_state => N_S <= write; N_ad <= 0;
        when write => N_S <= write;
            if (ad = 3+d) then
                N_S <= final;
            else
                N_ad <= ad+1;
            end if;
        when final => N_S <= final;
        when others => N_S <= initial_state;
     end case; 
end process;

enable <= '1' when ad >= d else '0';

addrROM <= conv_std_logic_vector(ad, 2) when ad <= 3 else (others => '1');

addrRAM <= conv_std_logic_vector(ad-d, 2) when ad >= d else (others => '0');

end Behavioral;
