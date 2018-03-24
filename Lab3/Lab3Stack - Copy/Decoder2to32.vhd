----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:41:24 03/28/2017 
-- Design Name: 
-- Module Name:    Decoder2to32 - Behavioral 
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

entity Decoder2to32 is
    Port ( InState : in  STD_LOGIC_VECTOR (1 downto 0);
           OutVec : out  STD_LOGIC_VECTOR (31 downto 0));
end Decoder2to32;

architecture Behavioral of Decoder2to32 is

	begin
		with InState select
			OutVec	<= X"FF038371"	when "00", -- printing OVF: F = X"71", V = X"83", O = X"03"
							X"FFFFFF71"	when "01", -- printing F
							X"FFFFFF61"	when "10", -- printing E: E = X"61"
							X"FFFFFFFF"	when others; -- printing NONE

end Behavioral;

