library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity circuit_c is
    generic (   N         : integer := 4;
                M         : integer := 4);
    port (      data_in   : in  std_logic_vector(N*M-1 downto 0); 
                data_out  : out std_logic_vector(N*M-1 downto 0));
end circuit_c;

architecture Behavioral of circuit_c is
type in_data is array (N-1 downto 0) of std_logic_vector(M-1 downto 0);

begin

process(data_in)
    variable internal, tmp : in_data;
begin
    --- Colocar dentro do array
    for i in N-1 downto 0 loop
        internal(i) := data_in(M*(i+1)-1 downto M*i);
    end loop;         
    
    if(internal(N-1) < internal(N-2)) then
        tmp(N-1) := internal(N-1);
        internal(N-1) := internal(N-2);
        internal(N-2) := tmp(N-1);
    else null;
    end if;
    
    if(internal(N-3) < internal(N-4)) then
        tmp(N-3) := internal(N-3);
        internal(N-3) := internal(N-4);
        internal(N-4) := tmp(N-3);
    else null;
    end if;
    
    if(internal(N-1) < internal(N-3)) then
        tmp(N-1) := internal(N-1);
        internal(N-1) := internal(N-3);
        internal(N-3) := tmp(N-1);
    else null;
    end if;
    
    if(internal(N-2) < internal(N-4)) then
        tmp(N-2) := internal(N-2);
        internal(N-2) := internal(N-4);
        internal(N-4) := tmp(N-2);
    else null;
    end if;
    
    if(internal(N-2) < internal(N-3)) then
        tmp(N-2) := internal(N-2);
        internal(N-2) := internal(N-3);
        internal(N-3) := tmp(N-2);
    else null;
    end if;
    
    for i in N-1 downto 0 loop
        data_out(M*(i+1)-1 downto M*i) <= internal(i);
    end loop;
end process;

end Behavioral;
