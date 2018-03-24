----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:45:52 03/01/2017 
-- Design Name: 
-- Module Name:    Lab2Circuit2 - Structural 
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

entity FSMStack is
    Port ( InVec : in  STD_LOGIC_VECTOR (3 downto 0);
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (1 downto 0));
end FSMStack;

architecture Behavioral of FSMStack is
	Type state is (EMPTY, NONE, FULL, OVF);
	
	signal currentS, nextS: state;
	
	begin
	
		fsm_combi: process (currentS, InVec)
			begin
				case currentS is
					when EMPTY =>
									if InVec(3) = '1' 
										then nextS <= NONE;
									else	  nextS <= EMPTY;
									end if;
									
					when NONE =>
									if InVec(0) = '1'
										then nextS <= EMPTY;
									elsif InVec(1) = '1'
										then nextS <= FULL;
									else	  nextS <= NONE;
									end if;
									
					when FULL =>
									if InVec(2) = '1' 
										then nextS <= NONE;
									elsif InVec(3) = '1'
										then nextS <= OVF;
									else	  nextS <= FULL;
									end if;
									
					when OVF =>	nextS <= OVF;
					when others =>	nextS <= EMPTY;
				end case;
		end process;
		
		WITH currentS SELECT
				OutVec <= "00" when OVF,
							"11" when NONE,
							"01" when FULL,
							"10" when others; --  also for EMPTY
		
		
		fsm_synchr: process (Clk, Rst)
			begin
				if (Rst = '1')
					then currentS <= EMPTY;
				elsif (rising_edge(Clk))
					then currentS <= nextS;
				end if;
		end process;

end Behavioral;