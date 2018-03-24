----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:00:19 02/25/2017 
-- Design Name: 
-- Module Name:    NorGate - Behavioral 
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

entity NorGate is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           Out0 : out  STD_LOGIC);
end NorGate;

architecture Behavioral of NorGate is

	begin
		Out0 <= In0 nor In1;


end Behavioral;

