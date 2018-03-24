----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:48:02 02/22/2017 
-- Design Name: 
-- Module Name:    AndGate - Behavioral 
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

entity AndGate is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           Out0 : out  STD_LOGIC);
end AndGate;

architecture Behavioral of AndGate is
	begin
		Out0 <= In0 and In1;
end Behavioral;

