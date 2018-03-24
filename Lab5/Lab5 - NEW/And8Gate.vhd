----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:53:15 03/25/2017 
-- Design Name: 
-- Module Name:    And5Gate - Structural 
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

entity And8Gate is
    Port ( InVec : in  STD_LOGIC_VECTOR (7 downto 0);
           Out0 : out  STD_LOGIC);
end And8Gate;

architecture Structural of And8Gate is
	
	component AndGate is
		Port (	In0 : in STD_LOGIC;
					In1 : in STD_LOGIC;
					Out0 : out STD_LOGIC);
	end component;
	
	component And4Gate is
		Port (	InVec : in STD_LOGIC_VECTOR(3 downto 0);
					Out0 : out STD_LOGIC);
	end component;
	
	signal	And4_Out	: STD_LOGIC_VECTOR (1 downto 0);

	begin
		And4Ua :	And4Gate					Port Map (	InVec(3 downto 0) => InVec(3 downto 0),
																Out0 => And4_Out(0));
																
		And4Ub :	And4Gate					Port Map (	InVec(3 downto 0) => InVec(7 downto 4),
																Out0 => And4_Out(1));
		
		AndU :	AndGate					Port Map (	In0 => And4_Out(0),
																In1 => And4_Out(1),
																Out0 => Out0);


end Structural;

