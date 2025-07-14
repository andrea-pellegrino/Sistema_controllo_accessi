library IEEE;
use IEEE.std_logic_1164.all;
entity Act is
port(
	start: in  std_logic;
	off: in std_logic;
	clk : in std_logic;
	sgn: out std_logic:= '0'
);
end Act;

architecture behave of Act is
begin
process(clk, start, off)
begin
	if (clk'event and clk = '1') then
	if start = '1' then
	sgn <= '1';
	elsif off = '1' then
	sgn <= '0';
	end if;
	end if;
end process; 
end behave;