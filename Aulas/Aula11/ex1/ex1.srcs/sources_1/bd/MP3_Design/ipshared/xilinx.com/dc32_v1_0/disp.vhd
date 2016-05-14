library IEEE;	 use IEEE.STD_LOGIC_1164.all; use IEEE.STD_LOGIC_UNSIGNED.all;        
entity DC32 is 
    port ( 	       clk		            : in  std_logic;
                   data_in              : in std_logic_vector(31 downto 0);
	               select_display	    : out std_logic_vector (7 downto 0);
	               segments 	        : out std_logic_vector (6 downto 0));
end DC32;
architecture Behavioral of DC32 is
   signal Display 	     : std_logic_vector(2 downto 0);
   signal div    	     : std_logic_vector(16 downto 0);
   signal convert_me	 : std_logic_vector(3 downto 0);
begin
	div<= div + 1 when rising_edge(clk);
	Display <= div(16 downto 14);
process(Display, data_in)
begin	-- activação sequencial dos displays
   if       	  Display ="111" then	select_display <= "01111111"; convert_me <= data_in(31 downto 28);
   elsif 	      Display ="110" then	select_display <= "10111111"; convert_me <= data_in(27 downto 24);
   elsif 	      Display ="101" then	select_display <= "11011111"; convert_me <= data_in(23 downto 20);
   elsif 	      Display ="100" then	select_display <= "11101111"; convert_me <= data_in(19 downto 16);
   elsif	      Display ="011" then	select_display <= "11110111"; convert_me <= data_in(15 downto 12);
   elsif 	      Display ="010" then	select_display <= "11111011"; convert_me <= data_in(11 downto 8);
   elsif 	      Display ="001" then	select_display <= "11111101"; convert_me <= data_in(7 downto 4);
   else 			                    select_display <= "11111110"; convert_me <= data_in(3 downto 0);
   end if;	
end process;
decoder : entity work.segment_decoder		-- descodificador de segmentos
	      port map (convert_me, segments);
end Behavioral;
