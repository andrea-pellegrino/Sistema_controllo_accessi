-- Quartus II VHDL Template
--Dual-port RAM 
-- doppio canale: da una parte posso leggere e scrivere
-- dall'altra solo scrivere (canale prioriario)
-- capacita della memoria: 256 celle da 8 bit

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity RAM is


	port 
	(
		clk		: in std_logic;
		-- lettura/scrittura
		addr	: in std_logic_vector(7 downto 0);
		datain	: in std_logic_vector(7 downto 0);
		dataout	: out std_logic_vector(7 downto 0);
		WR		: in std_logic := '0';
		RD 	: in std_logic := '1';
		CS 	: in std_logic := '1';
		
		-- sola scrittura 
		Prog_Wr : in std_logic :='0';
		Prog_addr	: in std_logic_vector(7 downto 0);
		Prog_data : in std_logic_vector(7 downto 0)
		
	);

end RAM;

architecture rtl of RAM is

	-- Build a 2-D array type for the RAM
	subtype word_t is std_logic_vector(7 downto 0);
	type memory_t is array(2**8-1 downto 0) of word_t;

	function init_ram
		return memory_t is 
		variable tmp : memory_t := (others => (others => '0'));
	begin 
		for addr_pos in 0 to 2**8 - 1 loop 
			-- Initialize each address with the address itself
			tmp(addr_pos) := std_logic_vector(to_unsigned(addr_pos, 8));
		end loop;
		return tmp;
	end init_ram;	 

	-- Declare the RAM signal and specify a default value.	Quartus II
	-- will create a memory initialization file (.mif) based on the 
	-- default value.
	signal dataram : memory_t; -- := init_ram;
	
	attribute ram_init_file : string;
	attribute ram_init_file of dataram :
		signal is "RAMContent.mif";


	-- Register to hold the address 
	signal addr_reg : natural range 0 to 2**8-1;

begin

	process(clk)
	begin
	if(rising_edge(clk)) then
	  -- scrittura secondaria prioritaria
		if (Prog_Wr='1') then
			dataram(to_integer(unsigned(Prog_addr))) <= Prog_data;
		elsif(WR = '1' and CS='1') then
			dataram(to_integer(unsigned(addr))) <= datain;
		end if;

-- Register the address for reading
		addr_reg <= to_integer(unsigned(addr));
		
	end if;
	end process;
	
	

	dataout <= dataram(addr_reg) when (RD='1' and CS='1') else	
			(others=> 'Z');

			
end rtl;