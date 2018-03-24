----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:05:49 02/25/2017 
-- Design Name: 
-- Module Name:    HalfAdder - Structural 
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

entity HalfAdder is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           S : out  STD_LOGIC;
           C : out  STD_LOGIC);
end HalfAdder;

architecture Structural of HalfAdder is

	component AndGate is
		Port	(	In0 : in STD_LOGIC;
					In1 : in STD_LOGIC;
					Out0 : out STD_LOGIC);
	end component;

	component XorGate is
		Port	(	In0 : in STD_LOGIC;
					In1 : in STD_LOGIC;
					Out0 : out STD_LOGIC);
	end component;
	
	begin
		XorU: XorGate Port Map (	In0 => In0,
											In1 => In1,
											Out0 => S);
											
		AndU: AndGate Port Map (	In0 => In0,
											In1 => In1,
											Out0 => C);
end Structural;