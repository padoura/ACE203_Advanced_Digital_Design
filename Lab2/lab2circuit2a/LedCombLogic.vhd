----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:57:20 03/01/2017 
-- Design Name: 
-- Module Name:    LedCombLogic - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity LedCombLogic is
    Port ( InVec : in  STD_LOGIC_VECTOR (2 downto 0);
           OutVec : out  STD_LOGIC_VECTOR (7 downto 0));
end LedCombLogic;

architecture Structural of LedCombLogic is

	component OrGate is
		Port	(	In0: in STD_LOGIC;
					In1: in STD_LOGIC;
					Out0: out STD_LOGIC);
	end component;

	begin
		OrU0 : OrGate Port Map	(	In0 => InVec(0),
											In1 => InVec(1),
											Out0 => OutVec(0));
											
		OrU1 : OrGate Port Map	(	In0 => InVec(0),
											In1 => InVec(1),
											Out0 => OutVec(1));
		
		OrU2 : OrGate Port Map	(	In0 => InVec(0),
											In1 => InVec(2),
											Out0 => OutVec(2));
		
		OrU3 : OrGate Port Map	(	In0 => InVec(0),
											In1 => InVec(2),
											Out0 => OutVec(3));
		
		OrU4 : OrGate Port Map	(	In0 => InVec(0),
											In1 => InVec(2),
											Out0 => OutVec(4));
		
		OrU5 : OrGate Port Map	(	In0 => InVec(0),
											In1 => InVec(2),
											Out0 => OutVec(5));
		
		OrU6 : OrGate Port Map	(	In0 => InVec(0),
											In1 => InVec(1),
											Out0 => OutVec(6));
		
		OrU7 : OrGate Port Map	(	In0 => InVec(0),
											In1 => InVec(1),
											Out0 => OutVec(7));
		

end Structural;

