library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd_adder_structural is
    port (
        A : in  std_logic_vector(3 downto 0);
        B : in  std_logic_vector(3 downto 0);
        S : out std_logic_vector(3 downto 0);
        C : out std_logic
    );
end bcd_adder_structural;

architecture structural of bcd_adder_structural is

    -- RCA component (your rca_structural: 4-bit inputs, 5-bit output)
    component rca_structural is
        port (
            A : in  std_logic_vector(3 downto 0);
            B : in  std_logic_vector(3 downto 0);
            S : out std_logic_vector(4 downto 0)
        );
    end component;

    -- Internal signals
    signal sum1       : std_logic_vector(4 downto 0); -- 5-bit result of first RCA (A+B)
    signal carry_bcd  : std_logic;                    -- BCD carry: sum > 9
    signal correction : std_logic_vector(3 downto 0); -- 0000 or 0110
    signal sum2       : std_logic_vector(4 downto 0); -- 5-bit result of second RCA

begin

    -- Step 1: Binary addition A + B using your RCA
    RCA1 : rca_structural
        port map (
            A => A,
            B => B,
            S => sum1
        );

    -- Step 2: BCD carry detection — sum > 9 when:
    --   raw carry out (sum1(4)) = 1, OR
    --   sum1(3) AND sum1(2) = 1   (values 12-15), OR
    --   sum1(3) AND sum1(1) = 1   (values 10-11)
    carry_bcd <= sum1(4)
                 or (sum1(3) and sum1(2))
                 or (sum1(3) and sum1(1));

    -- Step 3: Correction factor — add 6 if BCD carry, else add 0
    correction <= "0110" when carry_bcd = '1' else "0000";

    -- Step 4: Add correction to raw sum using your RCA
    RCA2 : rca_structural
        port map (
            A => sum1(3 downto 0),
            B => correction,
            S => sum2
        );

    -- Outputs
    S <= sum2(3 downto 0);
    C <= carry_bcd;

end structural;