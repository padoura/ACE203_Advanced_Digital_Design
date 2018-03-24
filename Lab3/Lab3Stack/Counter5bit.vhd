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

entity Counter5bit is
    Port ( Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (4 downto 0);
           En : in  STD_LOGIC;
			  EnT : in STD_LOGIC;
           UpDn : in  STD_LOGIC;
           InVec : in  STD_LOGIC_VECTOR (4 downto 0);
           LD : in  STD_LOGIC;
			  RC : out STD_LOGIC);
end Counter5bit;

architecture Behavioral of Counter5bit is

	signal count : STD_LOGIC_VECTOR (4 downto 0);

	begin
		process (Clk, En, EnT, LD, UpDn, InVec)
			begin
				if LD = '0' then count <= InVec; -- load
				elsif (En = '1' AND EnT = '1') then -- check enable
					if rising_edge(Clk) then 
						if UpDn = '1' then count <= std_logic_vector (unsigned(count) + 1); -- increment register
						else	count <= std_logic_vector (unsigned(count) - 1); -- decrement register
						end if;
					end if;
				end if;
		end process;
		
		process (count, UpDn)
			begin
				Q <= count;
				if ( (count = "11111") and (UpDn = '1') ) or ( (count = "00000") and (UpDn = '0') ) then RC <= '1';
				else RC <= '0';
				end if;
		end process;


end Behavioral;