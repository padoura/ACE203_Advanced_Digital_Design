----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:45:47 03/12/2017 
-- Design Name: 
-- Module Name:    CarryLA - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	Carry Look Ahead Unit of a 4-bit CLA Adder
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity CarryLA is
    Port ( C : out  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           P : in  STD_LOGIC_VECTOR (3 downto 0);
           G : in  STD_LOGIC_VECTOR (3 downto 0));
end CarryLA;

architecture Behavioral of CarryLA is

	begin
		C(0) <= G(0) or ( P(0) and Cin );
		C(1) <= G(1) or (P(1) and G(0)) or ( P(1) and P(0) and Cin);
		C(2) <= G(2) or (P(2) and G(1)) or ( P(2) and P(1) and G(0)) or ( P(2) and P(1) and P(0) and Cin);
		C(3) <= G(3) or (P(3) and G(2)) or ( P(3) and P(2) and G(1)) or
			(P(3) and P(2) and P(1) and G(0)) or ( P(3) and P(2) and P(1) and P(0) and Cin);
	
										


end Behavioral;

