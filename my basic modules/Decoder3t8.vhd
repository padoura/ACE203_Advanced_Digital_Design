----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:33:06 03/01/2017 
-- Design Name: 
-- Module Name:    Decoder3t8 - Structural 
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

entity Decoder3t8 is
    Port ( InVec : in  STD_LOGIC_VECTOR (2 downto 0);
           OutVec : out  STD_LOGIC_VECTOR (7 downto 0));
end Decoder3t8;

architecture Structural of Decoder3t8 is

	component NotGate is
		Port (	In0 : in STD_LOGIC;
					Out0 : out STD_LOGIC);
	end component;
	
	component And3Gate is
		Port (	In0 : in STD_LOGIC;
					In1 : in STD_LOGIC;
					In2 : in STD_LOGIC;
					Out0 : out STD_LOGIC);
	end component;
	
	signal InBarVec : STD_LOGIC_VECTOR (2 downto 0);

	begin
	
	NotLoop : For i in 0 to 2 generate		
			NotU : NotGate Port Map (	In0 => InVec(i),
												Out0 => InBarVec(i));
	end generate;
		
	AndU0 : And3Gate Port Map (	In0 => InBarVec(0),
											In1 => InBarVec(1),
											In2 => InBarVec(2),
											Out0 => OutVec(0));
											
	AndU1 : And3Gate Port Map (	In0 => InVec(0),
											In1 => InBarVec(1),
											In2 => InBarVec(2),
											Out0 => OutVec(1));
											
	AndU2 : And3Gate Port Map (	In0 => InBarVec(0),
											In1 => InVec(1),
											In2 => InBarVec(2),
											Out0 => OutVec(2));
											
	AndU3 : And3Gate Port Map (	In0 => InVec(0),
											In1 => InVec(1),
											In2 => InBarVec(2),
											Out0 => OutVec(3));
											
	AndU4 : And3Gate Port Map (	In0 => InBarVec(0),
											In1 => InBarVec(1),
											In2 => InVec(2),
											Out0 => OutVec(4));
	
	AndU5 : And3Gate Port Map (	In0 => InVec(0),
											In1 => InBarVec(1),
											In2 => InVec(2),
											Out0 => OutVec(5));
											
	AndU6 : And3Gate Port Map (	In0 => InBarVec(0),
											In1 => InVec(1),
											In2 => InVec(2),
											Out0 => OutVec(6));
											
	AndU7 : And3Gate Port Map (	In0 => InVec(0),
											In1 => InVec(1),
											In2 => InVec(2),
											Out0 => OutVec(7));

end Structural;

