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

entity FSM_Control_Add_Sub is
    Port ( InVec : in  STD_LOGIC_VECTOR (1 downto 0);
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (2 downto 0));
end FSM_Control_Add_Sub ;

architecture Behavioral of FSM_Control_Add_Sub is
	Type state is (NOTHING, ADD, SUB, WAIT2A, WAIT2S, WAIT1A, WAIT1S, WAIT0);
	
	signal currentS, nextS: state;
	
	begin
	
		fsm_combi: process (currentS, InVec)
			begin
				case currentS is
					when NOTHING =>
									if InVec = "01"
										then nextS <= ADD;
									elsif InVec = "10"
										then nextS <= SUB;
									else nextS <= NOTHING;
									end if;
					when ADD =>	nextS <= WAIT2A; 
					when SUB => nextS <= WAIT2S;
					when WAIT2A => nextS <= WAIT1A;
					when WAIT2S => nextS <= WAIT1S;
					when WAIT1A => nextS <= WAIT0;
					when WAIT1S => nextS <= WAIT0;
					when others =>	nextS <= NOTHING;
				end case;
		end process;
		
		WITH currentS SELECT
				OutVec <= "010" when WAIT2A,
							"011" when WAIT2S,
							"001" when SUB,
							"010" when WAIT1A,
							"011" when WAIT1S,
							"100" when WAIT0,
							"000" when others;
		
		
		fsm_synchr: process (Clk, Rst)
			begin
				if (Rst = '1')
					then currentS <= NOTHING;
				elsif (rising_edge(Clk))
					then currentS <= nextS;
				end if;
		end process;

end Behavioral;



