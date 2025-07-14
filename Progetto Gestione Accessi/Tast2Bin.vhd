--hex(3:0) = D, C, B, A
--seg(6:0) = g, f, e, d, c, b, a
library ieee;
use ieee.std_logic_1164.all;

-- Questo blocco serve per convertire i valori della matrice del tastierino nei valori numerici corrispondenti.
-------------
--1-2-3-A-
--4-5-6-B-
--7-8-9-C-
--*-0-#-D
--
--Le colonne partono da destra (0) a sinistra (3).
--Le righe partono da giù (0) a su (3).
--Es: D(0,0)... 2(3,2)... 1(3,3)
--Il conteggio da 0 a 3 viene effettuato con 2 bit. Col = (Col1, Col0). Rig = (Rig1, Rig0).
--hex = (Col1, Col0, Rig1, Rig0)

entity Tast2Bin is
port( hex: in std_logic_vector(3 downto 0);
	seg: out std_logic_vector(3 downto 0));
end Tast2Bin;

architecture dflow of Tast2Bin is
begin
with hex select
 seg <=  "1101" when "0000", -- d = 13
			"1100" when "0001", -- C = 12
			"1011" when "0010", -- b = 11
			"1010" when "0011", -- A = 10
			"1111" when "0100", -- # = H = 15
			"1001" when "0101", -- 9
			"0110" when "0110", -- 6
			"0011" when "0111", -- 3
			"0000" when "1000", -- 0
			"1000" when "1001", -- 8
			"0101" when "1010", -- 5
			"0010" when "1011", -- 2
			"1110" when "1100", -- * = vuoto = 14
			"0111" when "1101", -- 7
			"0100" when "1110", -- 4
			"0001" when "1111", -- 1
			"1111" when others;

end dflow;
