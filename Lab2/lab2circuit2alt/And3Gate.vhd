----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:15:53 03/01/2017 
-- Design Name: 
-- Module Name:    And3Gate - Structural 
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

entity And3Gate is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           In2 : in  STD_LOGIC;
           Out0 : out  STD_LOGIC);
end And3Gate;

architecture Structural of And3Gate is

	signal AndOut : STD_LOGIC;

	component AndGate is
		Port (	In0 : in STD_LOGIC;
					In1 : in STD_LOGIC;
					Out0 : out STD_LOGIC);
	end component;

	begin
		AndU0 : AndGate Port Map (	In0 => In0,
											In1 => In1,
											Out0 => AndOut);
		AndU1 : AndGate Port Map ( In0 => AndOut,
											In1 => In2,
											Out0 => Out0);


end Structural;

