library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ToSortEvenOddTransition is
    generic(L : integer  :=8; M : integer:=4);
    port(data_in : STD_LOGIC_VECTOR(31 downto 0);
         data-out : out STD_LOGIC_VECTOR(31 downto 0));
end ToSortEvenOddTransition;

architecture Behavioral of ToSortEvenOddTransition is
    type data8x4 is array(L-1 downto 0) of std_logic_vector(M-1 downto 0);
    
begin

process(data_int)
variable internal, tmp: data8x4;
begin
    
    for i in L-1 downto 0 loop
        internal(i) := data_in(M*(i+1)-1 downto M*i);
    end loop;
 
 external : for j in 0 to 3 loop
                    for i in 0 to 3 loop
                        if internal(2*i) < internal(2*i+1) then
                            tmp(2*i) := internal(2*i+1);
                            internal(2*i+1) := internal(2*i);
                            internal(2*i) := tmp(2*i);
                        else null;
                        end if;
                     end loop;
                     
                     for i in 0 to 2 loop
                        if internal(2*i+1) < internal(2*i+2) then
                            tmp(2*i+1) := internal(2*i+2);
                            internal(2*i+2) := internal(2*i+2);
                            internal(


end Behavioral;
