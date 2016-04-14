library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.STD_LOGIC_ARITH.all;

entity HW is
    port (      completed  : in std_logic;
                sw 		   : in  std_logic_vector (127 downto 0);
                led        : out  std_logic_vector (6 downto 0));
end HW;

architecture Behavioral of HW is

begin
<<<<<<< HEAD
par: process(sw)
	variable weight   : integer range 0 to 16;
begin
   weight := 0;
   for i in sw'range loop
	   if sw(i) = '1' then weight := weight + 1;
	   end if;
=======

--cp_HW: process(sw)
--	variable HammingWeightCount : integer range 0 to 16;
--begin
--   HammingWeightCount := 0;
--   for i in sw'range loop	-- HW para sw(15), sw(14), � , sw(0)
--	if sw(i) = '1' then HammingWeightCount := HammingWeightCount+1;
--   	end if;
--   end loop;
--   --led <= conv_std_logic_vector(HammingWeightCount,5);
--   led <= std_logic_vector(to_unsigned(HammingWeightCount,5));
--end process cp_HW;

--par: process(sw)
--	variable par : std_logic;
--begin
--   par := '0';
--   for i in sw'range loop	-- HW para sw(15), sw(14), � , sw(0)
--	par := par xor sw(i);
--   end loop;
--   if (par = '1') then led <= (others => '1'); 
--   else led <= (others => '0');
--   end if;
--end process par;

--par: process(sw)
--	variable par0 : std_logic_vector(7 downto 0);
--	variable par1 : std_logic_vector(3 downto 0);
--	variable par2 : std_logic_vector(1 downto 0);
--	variable par  : std_logic;
--begin
--   par := '0';
----   for i in 0 to 7 loop
--   for i in sw'right to sw'left/2 loop
--	   par0(i) := sw(i) xor sw(i+8);
--   end loop;
--   for i in par0'right to par0'left/2 loop
--          par1(i) := par0(i) xor par0(i+4);
--      end loop;
--   for i in par1'right to par1'left/2 loop
--          par2(i) := par1(i) xor par1(i+2);
--   end loop;
--   par := par2(0) xor par2(1);
--   if (par = '1') then led <= (others => '1'); 
--   else led <= (others => '0');
--   end if;
--end process par;

par: process(completed)
	variable par : std_logic;
	variable i   : integer range 0 to 128;
begin
   par := '0'; i := 0;
   while i <= sw'left loop	-- HW para sw(15), sw(14), � , sw(0)
	   par := par xor sw(i); i := i+1;
>>>>>>> origin/master
   end loop;
   
   led <= conv_std_logic_vector(weight,5);
end process par;

end Behavioral;

