library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity full_adder_structural is
	port (a: in std_logic;
			b: in std_logic;
			c_in: in std_logic;
			s: out std_logic;
			c_out: out std_logic);
	end full_adder_structural;

architecture structural of full_adder_structural is

begin

	s <= a xor b xor c_in;
	c_out <= (a and b) or ((a xor b) and (c_in));

end structural;