library ieee;
use ieee.std_logic_1164.all;

entity Registrador_2 is
	generic(
		n : integer:= 2
	); 
	
	port(
		clk : in std_logic;
		rst : in std_logic;
		ld : in std_logic; 
		D : in std_logic_vector(n-1 downto 0);
		Q : out std_logic_vector(n-1 downto 0)
	);
end Registrador_2;

architecture behavioral of Registrador_2 is
begin
	process (rst, clk)
	begin
		if rst = '1' then
			Q<= (others => '0');
		elsif rising_edge(clk) then
			if ld = '1' then
				Q <= D;
			end if;
		end if;
	end process;
end behavioral;