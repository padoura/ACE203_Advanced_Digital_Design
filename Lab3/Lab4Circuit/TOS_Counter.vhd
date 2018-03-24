----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    06:12:14 03/25/2017 
-- Design Name: 
-- Module Name:    Counter5bit - Behavioral 
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

entity Counter5bit is
    Port ( Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (4 downto 0);
           En : in  STD_LOGIC;
           UpDn : in  STD_LOGIC;
           InVec : in  STD_LOGIC_VECTOR (4 downto 0);
           LD : in  STD_LOGIC);
end Counter5bit;

architecture Behavioral of Counter5bit is

	begin
		process (Clk, Rst)
			begin
				if LD = '0' then Q <= InVec; -- load
				end if;
				if En = '0' then
					if rising_edge(Clk) then Q <= Q + 1; -- increment register
					end if;
				end if;
		end process;


end Behavioral;

