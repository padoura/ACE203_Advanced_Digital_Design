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

entity Lab2FSM is
    Port ( InVec : in  STD_LOGIC_VECTOR (2 downto 0);
           Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
			  Out0 : out STD_LOGIC_VECTOR (7 downto 0));
end Lab2FSM;

architecture Behavioral of Lab2FSM is
	Type state is (A, B, C);
	
	signal currentS, nextS: state;
	
	begin
	
		fsm_combi: process (currentS, InVec)
			begin
				case currentS is
					when A =>	Out0 <= 	"11111111";
									if InVec = "001" 
										then nextS <= B;
									elsif InVec = "010"
										then nextS <= C;
									else	  nextS <= A;
									end if;
									
					when B =>	Out0 <= 	"11000011";
									if InVec = "001"
										then nextS <= C;
									elsif InVec = "010"
										then nextS <= A;
									else	  nextS <= B;
									end if;
									
					when C =>	Out0 <= 	"00111100";
									if InVec = "001" 
										then nextS <= A;
									elsif InVec = "010"
										then nextS <= B;
									else	  nextS <= C;
									end if;
					when others =>	Out0 <= 	"11111111";
										nextS <= A;
				end case;
		end process;
		
		
		fsm_synchr: process (Clk, Rst)
			begin
				if (Rst = '1')
					then currentS <= A;
				elsif (rising_edge(Clk))
					then currentS <= nextS;
				end if;
		end process;

end Behavioral;