----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:52:50 03/12/2017 
-- Design Name: 
-- Module Name:    And4Gate - Structural 
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

entity And4Gate is
    Port ( InVec : in  STD_LOGIC_VECTOR (3 downto 0);
           Out0 : out  STD_LOGIC);
end And4Gate;

architecture Structural of And4Gate is

	component AndGate is
		Port (	In0 : in STD_LOGIC;
					In1 : in STD_LOGIC;
					Out0 : out STD_LOGIC);
	end component;
	
	signal AndU_Out : STD_LOGIC_VECTOR (1 downto 0);

	begin
		Loop1 : For i in 0 to 1 generate		
			AndU0 : AndGate 					Port Map (	In0 => InVec(i),
																	In1 => InVec(i+2),
																	Out0 => AndU_Out(i));
		end generate;
		
		AndU1 :	AndGate					Port Map (	In0 => AndU_Out(0),
																In1 => AndU_Out(1),
																Out0 => Out0);


end Structural;

