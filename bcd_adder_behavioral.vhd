library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity bcd_adder_behavioral is
port(
    A : in std_logic_vector(3 downto 0);
    B : in std_logic_vector(3 downto 0);
    S : out std_logic_vector(3 downto 0);
    C : out std_logic
);
end bcd_adder_behavioral;

architecture behavioral of bcd_adder_behavioral is
begin
process(A, B)
    variable temp : unsigned(4 downto 0);
begin

    temp := unsigned(A) + unsigned(B);

    if temp > 9 then
        temp := temp + 6;
        C <= '1';
    else
        C <= '0';
    end if;

    S <= std_logic_vector(temp(3 downto 0));

end process;
end behavioral;