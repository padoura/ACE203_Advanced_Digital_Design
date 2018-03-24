----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:36:20 03/12/2017 
-- Design Name: 
-- Module Name:    CarryGP - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	Carry-Generate/Propagate Unit for CLA Adders
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

entity CarryGP is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           P : out  STD_LOGIC;
           G : out  STD_LOGIC);
end CarryGP;

architecture Behavioral of CarryGP is

	begin
		P <= A xor B;
		G <= A and B;

end Behavioral;

