----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:20:28 03/12/2017 
-- Design Name: 
-- Module Name:    Sum - Structural 
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

entity Sum is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           C : in  STD_LOGIC;
           S : out  STD_LOGIC);
end Sum;

architecture Structural of Sum is


	component Xor3Gate is
		 Port ( In0 : in  STD_LOGIC;
				  In1 : in  STD_LOGIC;
				  In2 : in STD_LOGIC;
				  Out0 : out  STD_LOGIC);
	end component;

	begin
		Xor3U: Xor3Gate Port Map (	In0 => A,
											In1 => B,
											In2 => C,
											Out0 => S);		


end Structural;

