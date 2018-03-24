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

entity FSMssd is
    Port ( In0 : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (1 downto 0));
end FSMssd;

architecture Behavioral of FSMssd is
	Type state is (AN3, AN2, AN1, AN0);
	
	signal currentS, nextS: state;
	
	begin
	
		fsm_combi: process (currentS, In0)
			begin
				case currentS is
					when AN3 =>
						if (In0='1') then	nextS <= AN2;
						else nextS <= AN3;
						end if;
						
					when AN2 =>
						if (In0='1') then		nextS <= AN1;
						else nextS <= AN2;
						end if;									
					
					when AN1 =>
						if (In0='1') then		nextS <= AN0;
						else nextS <= AN1;
						end if;
									
					when AN0 =>
						if (In0='1') then		nextS <= AN3;
						else nextS <= AN0;
						end if;

					when others =>	nextS <= AN3;

				end case;
		end process;
		
				WITH currentS SELECT
				OutVec <= "10" when AN2,
							"01" when AN1,
							"00" when AN0,
							"11" when others; --  also for AN3
		
		
		fsm_synchr: process (Clk, Rst)
			begin
				if (Rst = '1')
					then currentS <= AN3;
				elsif (rising_edge(Clk))
					then currentS <= nextS;
				end if;
		end process;

end Behavioral;