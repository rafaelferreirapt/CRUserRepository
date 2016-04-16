library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;
entity hw is
    generic( sw_len  : integer := 16 ;
             out_len : integer := 5);
    port (  in_data  : in std_logic_vector (sw_len-1 downto 0);
            out_data : out std_logic_vector (out_len-1 downto 0));
end hw;
architecture Behavioral of hw is
begin
    process(in_data)
        variable HammingWeightCount : integer range 0 to sw_len;
        begin
            HammingWeightCount := 0;
            for i in in_data'range loop -- HW para sw(15), sw(14), … , sw(0)
                if in_data(i) = '1' then 
                    HammingWeightCount := HammingWeightCount+1;
                end if;
            end loop;
        out_data <= conv_std_logic_vector(HammingWeightCount, out_len);
    end process;
end Behavioral;