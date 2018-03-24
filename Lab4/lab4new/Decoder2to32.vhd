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

entity Decoder4to32 is
    Port ( InState : in  STD_LOGIC_VECTOR (3 downto 0);
           OutVec : out  STD_LOGIC_VECTOR (31 downto 0));
end Decoder4to32;

architecture Behavioral of Decoder4to32 is

	begin
		with InState select
			OutVec	<= X"FF038371"	when "0000", -- printing OVF: F = X"71", V = X"83", O = X"03"
							X"FFFFFF71"	when "0001", -- printing F
							X"FFFFFF61"	when "0010", -- printing E: E = X"61"
							
							X"9FFFFFFF"	when "0100", -- printing 1: 1 = X"9F"
							X"11FFFFFF"	when "0101", -- printing A: A = X"11" 
							X"49FFFFFF"	when "0110", -- printing S: S = X"49"
							X"25FFFFFF"	when "1000", -- printing 2: 2 = X"25" 0010 0101
							X"83FFFFFF"	when "1001", -- printing U: U = X"83"
							X"630FFFFF"	when "1010", -- printing []: [ = X"63", ] = X"0F"
							X"FFFFFFFF"	when others; -- printing NONE (all off)

end Behavioral;

