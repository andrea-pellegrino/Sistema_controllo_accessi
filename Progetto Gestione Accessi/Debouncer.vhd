library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Debouncer is
    Port ( 	x		: in  	STD_LOGIC;
				y		: out    STD_LOGIC;
				reset	: in		STD_LOGIC;
				clk	: in  	STD_LOGIC);
end Debouncer;

architecture Behavioral of Debouncer is
	-- output del registro a scorrimento
	signal finestra : STD_LOGIC_VECTOR (7 downto 0);
	signal set : STD_LOGIC;
	signal rst : STD_LOGIC;
	signal n_en_scorr: STD_LOGIC;

	-- definizione dei componenti usati internamente
	component RegistroScorrimento is
		 Port (	x			: in 	STD_LOGIC;
					n_en	   : in 	STD_LOGIC;
					clk		: in  STD_LOGIC;
					y			: out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
				  
	component FF_SR is
		 Port (	S		: in  STD_LOGIC;
					R 		: in  STD_LOGIC;
					clk 	: in  STD_LOGIC;
					Q 		: out  STD_LOGIC;
					QN		: out  STD_LOGIC);
	end component;

	component prescaler is
	generic(	CLK_FREQ: natural := 100;		-- Main frequency 	MHz (system clock)
						OUT_FREQ: natural	:= 200); 	-- Ouput frequency  	Hz
				
		Port (	reset	: in  STD_LOGIC;
					clk	: in  STD_LOGIC;
					n_rc	: out	STD_LOGIC);
	end component;


begin

	Pres1:prescaler
				generic map(CLK_FREQ => 100, OUT_FREQ => 500)
				port map(clk => clk, n_rc => n_en_scorr, reset => reset );
	
	-- collegamento del registro a scorrimento
	Reg1: RegistroScorrimento port map (x => x, n_en => n_en_scorr, clk => clk, y => finestra);
	
	-- generazione di set e reset a partire dalle uscite del registro
	set <= finestra(0) and finestra(1) and finestra(2) and finestra(3) and finestra(4) and finestra(5) and finestra(6) and finestra(7);
	rst <= not(finestra(0) or finestra(1)or finestra(2) or finestra(3) or finestra(4) or finestra(5)or finestra(6) or finestra(7));
	
	-- flip flip SR per generare l'uscita coerente con un ingresso stabile
	FFSR1 : FF_SR port map (S => set, R => rst, clk => clk, Q => y);
	


end Behavioral;