library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity testbench_rca_structural is
end testbench_rca_structural;

architecture tb of testbench_rca_structural is
    component rca_structural is
        port (
            A : in  std_logic_vector(3 downto 0);
            B : in  std_logic_vector(3 downto 0);
            S : out std_logic_vector(4 downto 0)
        );
    end component;

    signal A_in  : std_logic_vector(3 downto 0);
    signal B_in  : std_logic_vector(3 downto 0);
    signal S_out : std_logic_vector(4 downto 0);

begin
    -- connect DUT
    DUT: rca_structural
        port map (A => A_in, B => B_in, S => S_out);

    process
    begin
        for i in 0 to 15 loop          -- loop over all A_in values
            A_in <= std_logic_vector(to_unsigned(i, 4));
            for j in 0 to 15 loop      -- loop over all B_in values
                B_in <= std_logic_vector(to_unsigned(j, 4));
                wait for 10 ns;
            end loop;
        end loop;
        wait;
    end process;

end tb;