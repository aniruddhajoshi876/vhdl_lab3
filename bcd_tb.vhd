library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_bcd_adder is
end testbench_bcd_adder;

architecture tb of testbench_bcd_adder is
    -- DUT component
    component bcd_adder_structural is
        port (
            A : in  std_logic_vector(3 downto 0);
            B : in  std_logic_vector(3 downto 0);
            S : out std_logic_vector(3 downto 0);
            C : out std_logic
        );
    end component;

    signal A, B, S : std_logic_vector(3 downto 0);
    signal C       : std_logic;

begin
    -- connect DUT
    DUT: bcd_adder_structural
        port map (A => A, B => B, S => S, C => C);

    -- stimuli
    process
    begin
        for i in 0 to 9 loop          -- all BCD values for A
            A <= std_logic_vector(to_unsigned(i, 4));
            for j in 0 to 9 loop      -- all BCD values for B
                B <= std_logic_vector(to_unsigned(j, 4));
                wait for 10 ns;
            end loop;
        end loop;
        wait;                         -- end sim
    end process;

end tb;