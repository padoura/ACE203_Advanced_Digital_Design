----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:19:32 03/25/2017 
-- Design Name: 
-- Module Name:    EqualComp5 - Structural 
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

entity EqualComp7 is
    Port ( A : in  STD_LOGIC_VECTOR (6 downto 0);
           B : in  STD_LOGIC_VECTOR (6 downto 0);
           AeqB : out  STD_LOGIC);
end EqualComp7;

architecture Structural of EqualComp7 is

	component XnorGate is
		Port (	A : in STD_LOGIC;
					B : in STD_LOGIC;
					AeqB : out STD_LOGIC);
	end component;
	
	component And8Gate is
		Port (	InVec : in STD_LOGIC_VECTOR (7 downto 0);
					Out0 : out STD_LOGIC);
	end component;
	
	
	
	signal Xnor_Out : STD_LOGIC_VECTOR (6 downto 0);

	begin
		Loop1 : For i in 0 to 6 generate		
			XnorU : XnorGate 				Port Map (	A => A(i),
																B => B(i),
																AeqB => Xnor_Out(i));
		end generate;
		
		AndU :	And8Gate					Port Map (	InVec(6 downto 0) => Xnor_Out(6 downto 0),
																InVec(7) => '1', -- use And8 for 7 bits
																Out0 => AeqB);


end Structural;