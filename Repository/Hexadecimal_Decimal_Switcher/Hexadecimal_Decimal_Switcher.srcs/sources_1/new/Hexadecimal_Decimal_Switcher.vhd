----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 04/20/2015 12:48:14 PM
-- Design Name: 
-- Module Name: Hexadecimal_Decimal_Switcher - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Hexadecimal_Decimal_Switcher is
    Port ( clk : in STD_LOGIC;
           hex : in STD_LOGIC;
           dec : in STD_LOGIC;
           input : in STD_LOGIC_VECTOR (31 downto 0);
           disp7 : out STD_LOGIC_VECTOR (3 downto 0);
           disp6 : out STD_LOGIC_VECTOR (3 downto 0);
           disp5 : out STD_LOGIC_VECTOR (3 downto 0);
           disp4 : out STD_LOGIC_VECTOR (3 downto 0);
           disp3 : out STD_LOGIC_VECTOR (3 downto 0);
           disp2 : out STD_LOGIC_VECTOR (3 downto 0);
           disp1 : out STD_LOGIC_VECTOR (3 downto 0);
           disp0 : out STD_LOGIC_VECTOR (3 downto 0));
end Hexadecimal_Decimal_Switcher;

architecture Behavioral of Hexadecimal_Decimal_Switcher is
    
    -- Signals
    signal bcd0, bcd1, bcd2, bcd3, bcd4 : std_logic_vector(3 downto 0);
    
begin
    
    -- Use BCD conversor
    bcd : entity work.BinToBCD16
          port map(clk, '0', open, input, '1', bcd4, bcd3, bcd2, bcd1, bcd0);

    -- Hexadecimal or Decimal
    process (hex, dec)
    begin
        if dec = '1' then
            disp7 <= "0000";
            disp6 <= "0000";
            disp5 <= "0000";
            disp4 <= bcd4;
            disp3 <= bcd3;
            disp2 <= bcd2;
            disp1 <= bcd1;
            disp0 <= bcd0;
        elsif hex = '1' then
            disp7 <= input(31 downto 28);
            disp6 <= input(27 downto 24);
            disp5 <= input(23 downto 20);
            disp4 <= input(19 downto 16);
            disp3 <= input(15 downto 12);
            disp2 <= input(11 downto 8);
            disp1 <= input(7 downto 4);
            disp0 <= input(3 downto 0);
        else
            disp7 <= "0000";
            disp6 <= "0000";
            disp5 <= "0000";
            disp4 <= "0000";
            disp3 <= "0000";
            disp2 <= "0000";
            disp1 <= "0000";
            disp0 <= "0000";
        end if;
    end process;

end Behavioral;
