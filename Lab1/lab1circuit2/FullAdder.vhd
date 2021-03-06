----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:30:47 02/24/2017 
-- Design Name: 
-- Module Name:    FullAdder - Behavioral 
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

entity FullAdder is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           In2 : in  STD_LOGIC;
           S 	: out STD_LOGIC;
			  C	: out STD_LOGIC);
end FullAdder;

architecture Structural of FullAdder is

	signal HA0_C, HA0_S, HA1_C: STD_LOGIC;

	component OrGate is
		Port(
			In0 : in STD_LOGIC;
			In1 : in STD_LOGIC;
			Out0 : out STD_LOGIC);
	end component;

	component HalfAdder is
		Port (  In0 : in  STD_LOGIC;
				  In1 : in  STD_LOGIC;
				  S : out  STD_LOGIC;
				  C : out  STD_LOGIC);
	end component;

	begin
		HA0: HalfAdder Port Map (	In0 => In0,
											In1 => In1,
											S => HA0_S,
											C => HA0_C);
											
		HA1: HalfAdder Port Map (	In0 => In2,
											In1 => HA0_S,
											S => S,
											C => HA1_C);

		Or0: OrGate Port Map (		In0 => HA1_C,
											In1 => HA0_C,
											Out0 => C);	

end Structural;