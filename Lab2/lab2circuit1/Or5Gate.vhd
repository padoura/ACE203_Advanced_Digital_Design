----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:56:06 03/12/2017 
-- Design Name: 
-- Module Name:    Or5Gate - Structural 
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

entity Or5Gate is
    Port ( InVec : in  STD_LOGIC_VECTOR (4 downto 0);
           Out0 : out  STD_LOGIC);
end Or5Gate;

architecture Structural of Or5Gate is

	component Or4Gate is
		Port ( InVec : in  STD_LOGIC_VECTOR (3 downto 0);
				 Out0 : out  STD_LOGIC);
	end component;
	
	component OrGate is
		Port ( In0 : in  STD_LOGIC;
				 In1 : in STD_LOGIC;
				 Out0 : out  STD_LOGIC);
	end component;
	
	signal Or4U_Out : STD_LOGIC;

	begin	
		Or4U 	: Or4Gate 					Port Map (	InVec(0) => InVec(0),
																InVec(1) => InVec(1),
																InVec(2) => InVec(2),
																InVec(3) => InVec(3),
																Out0 => Or4U_Out);
		
		OrU 	: OrGate						Port Map (	In0 => Or4U_Out,
																In1 => InVec(4),
																Out0 => Out0);


end Structural;

