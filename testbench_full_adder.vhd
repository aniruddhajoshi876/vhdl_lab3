library ieee;
use ieee.std_logic_1164.all;

entity testbench_full_adder is
end testbench_full_adder;

architecture tb of testbench_full_adder is
    signal a, b, c_in, s, c_out : std_logic := '0';
    component full_adder_structural
        port (
            a, b, c_in : in  std_logic;
            s, c_out   : out std_logic
        );
    end component;
begin
    DUT: full_adder_structural
        port map (
            a     => a,
            b     => b,
            c_in  => c_in,
            s     => s,
            c_out => c_out
        );

    -- Simple stimulus through all 8 combinations
    stim: process
    begin
        a <= '0'; b <= '0'; c_in <= '0'; wait for 10 ns;
        a <= '0'; b <= '0'; c_in <= '1'; wait for 10 ns;
        a <= '0'; b <= '1'; c_in <= '0'; wait for 10 ns;
        a <= '0'; b <= '1'; c_in <= '1'; wait for 10 ns;
        a <= '1'; b <= '0'; c_in <= '0'; wait for 10 ns;
        a <= '1'; b <= '0'; c_in <= '1'; wait for 10 ns;
        a <= '1'; b <= '1'; c_in <= '0'; wait for 10 ns;
        a <= '1'; b <= '1'; c_in <= '1'; wait for 10 ns;
        wait;
    end process;

end tb;