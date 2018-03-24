----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:04:44 03/01/2017 
-- Design Name: 
-- Module Name:    OneHotCombLogic - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: Combinatorial circuit that determines the D signal of One Hot 
-- 	design with DFFs. It assumes Out0 = 1 if there is a QVec(i) = InVec(i) = 1
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity OneHotCombLogic is
    Port ( QVec : in  STD_LOGIC_VECTOR (2 downto 0);	-- Q of all Dff
           InVec : in  STD_LOGIC_VECTOR (2 downto 0);
           Out0 : out  STD_LOGIC);
end OneHotCombLogic;

architecture Structural of OneHotCombLogic is

	component Or4Gate is
		Port (
			InVec : in  STD_LOGIC_VECTOR (3 downto 0);
			Out0 : out  STD_LOGIC);
	end component;

	component AndGate is
		Port(
			In0 : in STD_LOGIC;
			In1 : in STD_LOGIC;
			Out0 : out STD_LOGIC);
	end component;
	
	component Nor3Gate is
		Port(
			In0 : in STD_LOGIC;
			In1 : in STD_LOGIC;
			In2 : in STD_LOGIC;
			Out0 : out STD_LOGIC);
	end component;
	
	signal AndU_Out: STD_LOGIC_VECTOR (3 downto 0);
	signal NorU_Out: STD_LOGIC;

	begin
		AndULoop : For j in 0 to 2 generate
			AndU0: AndGate Port Map (	In0 => QVec(j),
												In1 => InVec(j),
												Out0 => AndU_Out(j));
		end generate;
		
		NorU:	Nor3Gate	Port Map	(		In0 => InVec(0),
												In1 => InVec(1),
												In2 => InVec(2),
												Out0 => NorU_Out);
		
				
		AndU1: AndGate	Port Map (	In0 => QVec(2),	-- because button 2 and no button is equivalent
												In1 => NorU_Out,
												Out0 => AndU_Out(3));
		
		OrU0: Or4Gate Port Map 	(	InVec => AndU_Out,
											Out0 => Out0);
											
		


end Structural;

