library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.STD_LOGIC_arith.ALL;

entity resetCircuit is
    generic( N    : integer := 8;
             M    : integer := 4);
    port( clk     : in std_logic;
          reset   : in std_logic;
          sw      : in std_logic_vector(M-1 downto 0);
          data_in : in std_logic_vector(M*N-1 downto 0);
          data_out: out std_logic_vector(M*N-1 downto 0);
          hamming : out std_logic_vector(M-2 downto 0));
end resetCircuit;

architecture Behavioral of resetCircuit is
    type in_data is array (N-1 downto 0) of std_logic_vector(M-1 downto 0);
    
    function to_hamming(in_data: std_logic_vector(M-1 downto 0)) return integer
    is variable HammingWeightCount: integer range 0 to M;
    begin
    
        HammingWeightCount := 0;
        
        for i in in_data'range loop -- HW para sw(15), sw(14), … , sw(0)
            if in_data(i) = '1' then 
                HammingWeightCount := HammingWeightCount+1;
            end if;
        end loop;
        
        return HammingWeightCount;
    end to_hamming;
begin

process(clk)
    variable MyAr : in_data;
begin
    if falling_edge(clk) then 
        for i in N-1 downto 0 loop
            MyAr(i) := data_in(M*(i+1)-1 downto M*i);
        end loop;
        
        if(reset = '1') then
            MyAr(conv_integer(sw)) := conv_std_logic_vector(0, M);
        end if;

        for i in N-1 downto 0 loop
            data_out(M*(i+1)-1 downto M*i) <= MyAr(i);
        end loop;
        hamming <= conv_std_logic_vector(to_hamming(MyAr(conv_integer(sw))), M-1);
    end if;
end process;

end Behavioral;
