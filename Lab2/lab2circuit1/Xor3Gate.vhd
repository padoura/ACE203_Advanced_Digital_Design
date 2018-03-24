----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:22:53 03/12/2017 
-- Design Name: 
-- Module Name:    Xor3Gate - Structural 
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

entity Xor3Gate is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           In2 : in  STD_LOGIC;
           Out0 : out  STD_LOGIC);
end Xor3Gate;

architecture Structural of Xor3Gate is

	signal XorU0_Out : STD_LOGIC;

	component XorGate is
		Port	(	IN0 : in STD_LOGIC;
					IN1 : in STD_LOGIC;
					OUT0 : out STD_LOGIC);
	end component;

	begin
		XorU0: XorGate Port Map (	IN0 => In0,
											IN1 => In1,
											OUT0 => XorU0_Out);
										
		XorU1: XorGate Port Map (	IN0 => XorU0_Out,
											IN1 => In2,
											OUT0 => Out0);


end Structural;

