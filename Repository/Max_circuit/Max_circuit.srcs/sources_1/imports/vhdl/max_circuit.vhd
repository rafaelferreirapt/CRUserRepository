library IEEE;		
use IEEE.STD_LOGIC_1164.ALL;	 
use IEEE.STD_LOGIC_UNSIGNED.ALL;	

entity Max_circuit is
generic (   N         : integer := 32;
            M         : integer := 16;
            p         : integer := 5);
port (  	data_in   : in  std_logic_vector(N*M-1 downto 0); 
            max_value : out std_logic_vector(M-1 downto 0)      );
end Max_circuit;

architecture Behavioral of Max_circuit is
type in_data is array (N-1 downto 0) of std_logic_vector(M-1 downto 0);
begin

max_f :process(data_in)
            variable MyAr : in_data;
            variable tmp :  std_logic_vector(M-1 downto 0);
            begin
                    for i in N-1 downto 0 loop
                        MyAr(i) := data_in(M*(i+1)-1 downto M*i);
                    end loop;          	
                    for k in 0 to p-1 loop
                        for i in 0 to N/(2**(k+1))-1 loop
                             if ( MyAr( 2**(k+1)*i+(2**k)-1 ) >  MyAr( 2**(k+1)*i+2**(k+1)-1 ) ) then
                                  tmp := MyAr( 2**(k+1)*i+(2**k)-1 );
                                  MyAr( 2**(k+1)*i+(2**k)-1 ) := MyAr( 2**(k+1)*i+2**(k+1)-1 );
                                  MyAr( (2**(k+1)*i+2**(k+1)-1) ) := tmp;
                             end if; 
                        end loop;
                    end loop;
                    max_value   <= MyAr(N-1);
end process;

end Behavioral;