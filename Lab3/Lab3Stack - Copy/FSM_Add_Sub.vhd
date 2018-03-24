----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:41:20 04/24/2017 
-- Design Name: 
-- Module Name:    FSM_Add_Sub - Behavioral 
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

entity FSM_Add_Sub is
    Port ( InVec : in  STD_LOGIC_VECTOR (2 downto 0);
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (1 downto 0));
end FSM_Add_Sub ;

architecture Behavioral of FSM_Add_Sub is
	Type state is (ADD, SUB, NOTHING);
	
	signal currentS, nextS: state;
	
	begin
	
		fsm_combi: process (currentS, InVec)
			begin
				case currentS is
					when NOTHING =>
									if (InVec(0) = '1' AND InVec(2) = '1')
										then nextS <= ADD;
									elsif (InVec(1) = '1' AND InVec(2) = '1')
										then nextS <= SUB;
									else nextS <= NOTHING;
									end if;
									
					when ADD =>
									if (InVec(1) = '1' AND InVec(2) = '1')
										then nextS <= SUB;
									elsif InVec(2) = '0' 
										then nextS <= NOTHING;
									else	  nextS <= ADD;
									end if;
					when SUB =>
									if (InVec(0) = '1' AND InVec(2) = '1')
										then nextS <= ADD;
									elsif InVec(2) = '0'
										then nextS <= NOTHING;
									else	  nextS <= SUB;
									end if;
					when others =>	nextS <= NOTHING;
				end case;
		end process;
		
		WITH currentS SELECT
				OutVec <= "00" when NOTHING,
							"01" when ADD,
							"10" when SUB,
							"11" when others; --  ERROR
		
		
		fsm_synchr: process (Clk, Rst)
			begin
				if (Rst = '1')
					then currentS <= NOTHING;
				elsif (rising_edge(Clk))
					then currentS <= nextS;
				end if;
		end process;

end Behavioral;