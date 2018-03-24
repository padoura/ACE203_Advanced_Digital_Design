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

architecture Structural of CarryGP is

	component XorGate is
		 Port ( In0 : in  STD_LOGIC;
				  In1 : in  STD_LOGIC;
				  Out0 : out  STD_LOGIC);
	end component;
	
	component AndGate is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           Out0 : out  STD_LOGIC);
	end component;

begin

		XorU: XorGate Port Map (	In0 => A,
											In1 => B,
											Out0 => P);
											
		AndU: AndGate Port Map (	In0 => A,
											In1 => B,
											Out0 => G);

end Structural;

