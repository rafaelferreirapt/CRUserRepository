library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity My_Conc is
    Port ( in1 : in STD_LOGIC_VECTOR (31 downto 0);
           in2 : in STD_LOGIC_VECTOR (31 downto 0);
           out32 : out STD_LOGIC_VECTOR (31 downto 0);
           sel : in STD_LOGIC);
end My_Conc;

architecture Behavioral of My_Conc is

begin

out32 <= in1 when sel = '0' else in2;

end Behavioral;
