library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity circuito_m is
    generic (   N         : integer := 8;
                M         : integer := 4);
    port (  	data_in   : in  std_logic_vector(N*M-1 downto 0); 
                data_out  : out std_logic_vector(N*M-1 downto 0));
end circuito_m;

architecture Behavioral of circuito_m is
type in_data is array (N-1 downto 0) of std_logic_vector(M-1 downto 0);

begin

process(data_in)
    variable internal, tmp : in_data;
    variable a : integer range 0 to M;
begin
    a := 0;

    --- Colocar dentro do array
    for i in N-1 downto 0 loop
        internal(i) := data_in(M*(i+1)-1 downto M*i);
    end loop;         
        
    for k in N-1 downto N/2 loop
        if(internal(k) < internal(a)) then
            tmp(k) := internal(k);
            internal(k) := internal(a);
            internal(a) := tmp(k);
        else null;
        end if;
        a := a + 1;
    end loop;
    
    for i in N-1 downto 0 loop
        data_out(M*(i+1)-1 downto M*i) <= internal(i);
    end loop;
end process;


end Behavioral;
