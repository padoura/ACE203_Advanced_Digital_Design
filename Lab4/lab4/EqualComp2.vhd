----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    05:30:45 03/25/2017 
-- Design Name: 
-- Module Name:    EqualComp2 - Behavioral 
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

entity EqualComp2 is
    Port ( A : in  STD_LOGIC_VECTOR (1 downto 0);
           B : in  STD_LOGIC_VECTOR (1 downto 0);
           AeqB : out  STD_LOGIC);
end EqualComp2;

architecture Behavioral of EqualComp2 is

signal A0eqB0, A1eqB1 : STD_LOGIC;

	begin
		A0eqB0 <= A(0) xnor B(0);
		A1eqB1 <= A(1) xnor B(1);
		AeqB <= A1eqB1  and A0eqB0;



end Behavioral;

