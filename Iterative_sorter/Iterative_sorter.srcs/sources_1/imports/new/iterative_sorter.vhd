library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.std_logic_unsigned.all;

entity IterativeSorter is
generic(	N				:integer:=8;	
			M				:integer:=8);
port (	    clk			    : in std_logic;
			reset			: in std_logic;
			led	            : out std_logic_vector(7 downto 0);
			data_in         : in std_logic_vector(N*M-1 downto 0);
			data_out0       : out std_logic_vector(3 downto 0);
			data_out1       : out std_logic_vector(3 downto 0);
			data_out2       : out std_logic_vector(3 downto 0);
			data_out3       : out std_logic_vector(3 downto 0)
			);
end entity IterativeSorter;

architecture Behavioral of IterativeSorter is
type in_data is array (N-1 downto 0) of std_logic_vector(M-1 downto 0);
signal MyAr : in_data;
signal sorting_completed             : std_logic;
signal counter	                     : integer range 0 to N-1 := 0;
signal data_out                      : std_logic_vector(N*M-1 downto 0);

begin

data_out0 <= data_out(3 downto 0);
data_out1 <= data_out(7 downto 4);
data_out2 <= data_out(11 downto 8);
data_out3 <= data_out(15 downto 12); 

sorting: process (clk)
variable even_odd_switcher	: std_logic := '0';
begin
if rising_edge(clk) then
  if reset = '1' then sorting_completed <= '0'; even_odd_switcher := '0'; counter <= 0;
            for i in N-1 downto 0 loop
              MyAr(i) <= data_in(M*(i+1)-1 downto M*i);
            end loop;
  else 
    if (sorting_completed = '0') then counter <= counter+1;
        if even_odd_switcher = '0' then even_odd_switcher := '1'; 
           sorting_completed <= '1';
	       for i in 0 to N/2-1 loop
		      if MyAr(2*i) < MyAr(2*i+1) then
		             sorting_completed <= '0';
			         MyAr(2*i) <= MyAr(2*i+1);
			         MyAr(2*i+1) <= MyAr(2*i);
		      else    null;
		      end if;
	       end loop;
        else even_odd_switcher := '0';
           sorting_completed <= '1';
	       for i in 0 to N/2-2 loop
		      if MyAr(2*i+1) < MyAr(2*i+2) then
			         sorting_completed <= '0';
			         MyAr(2*i+1) <= MyAr(2*i+2);
			         MyAr(2*i+2) <= MyAr(2*i+1);
		      else   null;
		      end if;
	       end loop;
        end if;
    else null; 
    end if;
  end if;
end if; 
end process;

process (MyAr)
begin
    for i in N-1 downto 0 loop
		  data_out(M*(i+1)-1 downto M*i) <= MyAr(i);
	end loop;
end process;

led <= conv_std_logic_vector(counter,8);

end Behavioral;


