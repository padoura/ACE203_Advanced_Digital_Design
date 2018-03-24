----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:21:09 03/25/2017 
-- Design Name: 
-- Module Name:    XnorGate - Behavioral 
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

entity XnorGate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           AeqB : out  STD_LOGIC);
end XnorGate;

architecture Behavioral of XnorGate is

begin
Out0 <= In0 xor In1;

end Behavioral;

