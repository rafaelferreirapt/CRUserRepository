library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;


entity iterative_sorter is
    generic(     how_many_words : integer := 32;
                word_length :integer := 8);
    port (    clk  : in std_logic;
            reset  : in std_logic;
            run    : in std_logic;
          data_in  : in std_logic_vector(how_many_words*word_length-1 downto 0);
          data_out : out std_logic_vector(how_many_words*word_length-1 downto 0));
end entity iterative_sorter;

architecture Behavioral of iterative_sorter is

    type state_type is (initial_state, even, odd, completed);

    signal C_S, N_S             : state_type;
    type in_data is array (0 to how_many_words-1) of std_logic_vector(word_length-1 downto 0);
    signal MyAr, N_MyAr : in_data;

    signal cycle, N_cycle:  integer range 0 to how_many_words-1 := 0;
begin
    process (clk)
    begin
        if rising_edge(clk) then
            if (reset = '1' or run = '0') then
                C_S <= initial_state;
                cycle <= 0;
                MyAr <= (others=>(others => '0'));
            else
                C_S <= N_S;
                MyAr <= N_MyAr;
                cycle <= N_cycle;
            end if;
        end if;
    end process;

    process (C_S, data_in, cycle, MyAr)
    begin
        N_S <= C_S;
        N_MyAr <= MyAr;
        N_cycle <= cycle;

        case C_S is
            when initial_state =>
                N_S <= even;
                N_cycle <= 0;
                for i in how_many_words-1 downto 0 loop
                    N_MyAr(i) <= data_in(word_length*(i+1)-1 downto word_length*i);
                end loop;

            when even =>
                if cycle = how_many_words-1 then
                    N_S <= completed;
                else
                    N_S <= odd;
                    N_cycle <= cycle+1;
                end if;
                for i in 0 to how_many_words/2-1 loop
                    if MyAr(2*i) > MyAr(2*i+1) then
                        N_MyAr(2*i) <= MyAr(2*i+1);
                        N_MyAr(2*i+1) <= MyAr(2*i);
                    else null;
                    end if;
                end loop;

            when odd =>
                if cycle = how_many_words-1 then
                    N_S <= completed;
                else
                    N_S <= even;
                    N_cycle <= cycle+1;
                end if;

                for i in 0 to how_many_words/2-2 loop
                    if MyAr(2*i+1) > MyAr(2*i+2) then
                        N_MyAr(2*i+1) <= MyAr(2*i+2);
                        N_MyAr(2*i+2) <= MyAr(2*i+1);
                    else null;
                    end if;
                end loop;

            when completed =>
                N_S <= completed;

            when others =>
                N_S <= initial_state;
        end case;
    end process;

    process (MyAr)
    begin
        for i in how_many_words-1 downto 0 loop
            data_out(word_length*(i+1)-1 downto word_length*i) <= N_MyAr(i);
        end loop;
    end process;
end Behavioral;