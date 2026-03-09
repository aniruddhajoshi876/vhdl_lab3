library ieee;
use ieee.std_logic_1164.all;

entity testbench_half_adder is
end testbench_half_adder;

architecture tb of testbench_half_adder is
    signal a, b, s, c : std_logic := '0';
    -- Component declaration
    component half_adder_structural
        port (
            a, b : in  std_logic;
            s, c : out std_logic
        );
    end component;
begin
    -- DUT
    DUT: half_adder_structural port map (
        a => a,
        b => b,
        s => s,
        c => c
    );

    stim: process
    begin
        a <= '0'; b <= '0'; wait for 10 ns;
        a <= '0'; b <= '1'; wait for 10 ns;
        a <= '1'; b <= '0'; wait for 10 ns;
        a <= '1'; b <= '1'; wait for 10 ns;
        wait;
    end process;

end tb;