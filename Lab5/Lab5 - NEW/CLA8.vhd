----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:38:25 05/03/2017 
-- Design Name: 
-- Module Name:    CLA8 - Structural 
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

entity CLAddSub8 is
    Port ( A : in  STD_LOGIC_VECTOR (7 downto 0);
           B : in  STD_LOGIC_VECTOR (7 downto 0);
           Operator : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (7 downto 0);
           Ovf : out  STD_LOGIC);
end CLAddSub8;

architecture Structural of CLAddSub8 is

component CLA4 is
    Port ( A : in  STD_LOGIC_VECTOR (3 downto 0);
           B : in  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           S : out  STD_LOGIC_VECTOR (3 downto 0);
           C : out  STD_LOGIC_VECTOR (3 downto 0));
end component;


signal C : STD_LOGIC_VECTOR (7 downto 0);
signal B_un : STD_LOGIC_VECTOR (7 downto 0);
signal Sum : STD_LOGIC_VECTOR (7 downto 0);


begin


		CLA4U0: CLA4 Port Map (	A => A(3 downto 0),
										B => B_un(3 downto 0),
										Cin => Operator,
										S => Sum(3 downto 0),
										C => C(3 downto 0));

		CLA4U1: CLA4 Port Map (	A => A(7 downto 4),
								B => B_un(7 downto 4),
								Cin => C(3),
								S => Sum(7 downto 4),
								C => C(7 downto 4));
								
		XOR8U : For i in 0 to 7 generate
			B_un(i) <= B(i) xor Operator;
		end generate;
		
		S <= Sum;
--		
--		Ovf <= ( (not A(7)) and Sum(7) and (not B_un(7)) ) 
--			OR (  A(7) and B_un(7) and (not Sum(7))    );
		
		Ovf <= ( C(7) xor C(6) ) ;
		
		



end Structural;

