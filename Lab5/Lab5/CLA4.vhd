----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:26:37 03/12/2017 
-- Design Name: 
-- Module Name:    CLA4 - Structural 
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

entity CLA4 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
			  C : out STD_LOGIC_VECTOR (3 downto 0));
end CLA4;

architecture Structural of CLA4 is

	component CarryGP is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           P : out  STD_LOGIC;
           G : out  STD_LOGIC);
	end component;
	
	component Sum is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           S : out  STD_LOGIC);
	end component;
	
	component CarryLA is
    Port ( C : out  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           P : in  STD_LOGIC_VECTOR (3 downto 0);
           G : in  STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	signal P, G	: STD_LOGIC_VECTOR (3 downto 0);
	signal Ctemp		: STD_LOGIC_VECTOR (3 downto 0);

	begin
	
		CGPULoop : For j in 0 to 3 generate
			CGPU: CarryGP Port Map (	A => A(j),
												B => B(j),
												P => P(j),
												G => G(j));
		end generate;

		CLAU: CarryLA Port Map (	Cin => Cin,
											P => P,
											G => G,
											C => Ctemp);
											
		SumULoop : For j in 1 to 3 generate
			SumU: Sum Port Map 	(	A => A(j),
											B => B(j),
											C => Ctemp(j-1),
											S => S(j));
		end generate;
		
		SumU0: Sum Port Map		(	A => A(0),
											B => B(0),
											C => Cin,
											S => S(0));
											
		C <= Ctemp;
		
end Structural;

