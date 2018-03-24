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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Counter125K is
    Port ( Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (16 downto 0);
           En : in  STD_LOGIC;
           InVec : in  STD_LOGIC_VECTOR (16 downto 0);
			  RC	: out STD_LOGIC;
           LD : in  STD_LOGIC);
end Counter125K;

architecture Behavioral of Counter125K is

	signal count : STD_LOGIC_VECTOR (16 downto 0) := (others => '0');

	begin
		process (Clk, En, LD, InVec)
			begin
				if LD = '0' then count <= InVec; -- load
				elsif En = '1' then -- check enable
					if rising_edge(Clk) then 
						if count = "11110100001001000" then 
							count <= (others => '0');
							RC <= '1';
						else 
							count <= std_logic_vector (unsigned(count) + 1); -- increment register
							RC <= '0';
						end if;
					end if;
				else
					RC <= '0';
				end if;
		end process;
		
		process (count)
			begin
				Q <= count;
		end process;


end Behavioral;