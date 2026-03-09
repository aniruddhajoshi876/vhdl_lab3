library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity half_adder_structural is
	port (a: in std_logic;
			b: in std_logic;
			s: out std_logic;
			c: out std_logic);
	end half_adder_structural;

architecture structural of half_adder_structural is

begin

	s <= a xor b;
	c <= a and b;

end structural;