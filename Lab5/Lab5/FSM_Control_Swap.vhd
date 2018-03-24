----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:42:45 04/24/2017 
-- Design Name: 
-- Module Name:    FSM_SWAP - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- UNARYitional Comments: 
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

entity FSM_Control_Swap is
    Port ( In0 : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (1 downto 0));
end FSM_Control_Swap ;

architecture Behavioral of FSM_Control_Swap is
	Type state is (NOTHING, SWAP, WAIT0);
	
	signal currentS, nextS: state;
	
	begin
	
		fsm_combi: process (currentS, In0)
			begin
				case currentS is
					when NOTHING =>
									if In0 = '1'
										then nextS <= SWAP;
									else nextS <= NOTHING;
									end if;
					when SWAP =>	nextS <= WAIT0;
					when others =>	nextS <= NOTHING;
				end case;
		end process;
		
		WITH currentS SELECT
				OutVec <= "01" when SWAP,
							"10" when WAIT0,
							"00" when others;
		
		
		fsm_synchr: process (Clk, Rst)
			begin
				if (Rst = '1')
					then currentS <= NOTHING;
				elsif (rising_edge(Clk))
					then currentS <= nextS;
				end if;
		end process;

end Behavioral;
