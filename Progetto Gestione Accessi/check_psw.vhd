library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity check_psw is
port (pswT: in std_logic_vector(15 downto 0);
		pswQ : in std_logic_vector(15 downto 0);
		Act : in std_logic;
		clk : in std_logic;
		ok : out std_logic:= '0';
		en : out std_logic:= '0'
		);
end check_psw;

architecture beh of check_psw is
begin
process(clk) is
begin
if (clk'event and clk = '1') then
	if Act = '1' then
		if pswT = pswQ then
			ok <= '1';
			en <= '1';
		else
			ok <= '0';
			en <= '1' ;
		end if;
	else 
	en <= '0';
	ok <= '0';
	end if;
end if;
end process;
end beh;