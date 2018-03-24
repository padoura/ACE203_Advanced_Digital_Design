----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:45:10 04/24/2017 
-- Design Name: 
-- Module Name:    FSM_Mode - Behavioral 
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

entity FSM_Mode is
    Port ( In2 : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (1 downto 0));
end FSM_Mode ;

architecture Behavioral of FSM_Mode is
	Type state is (MODE0, MODE1, MODE2);
	
	signal currentS, nextS: state;
	
	begin
	
		fsm_combi: process (currentS, In2)
			begin
				case currentS is
					when MODE0 =>
									if In2 = '1'
										then nextS <= MODE1;
									else nextS <= MODE0;
									end if;
									
					when MODE1 =>
									if In2 = '1'
										then nextS <= MODE2;
									else nextS <= MODE1;
									end if;
					when MODE2 =>
									if In2 = '1'
										then nextS <= MODE0;
									else nextS <= MODE2;
									end if;
					when others =>	nextS <= MODE0;
				end case;
		end process;
		
		WITH currentS SELECT
				OutVec <= "00" when MODE0,
							"01" when MODE1,
							"10" when MODE2,
							"11" when others; --  ERROR
		
		
		fsm_synchr: process (Clk, Rst)
			begin
				if (Rst = '1')
					then currentS <= MODE0;
				elsif (rising_edge(Clk))
					then currentS <= nextS;
				end if;
		end process;

end Behavioral;

