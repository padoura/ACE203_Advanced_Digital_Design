----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:53:49 03/01/2017 
-- Design Name: 
-- Module Name:    DFlipFlop - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description:	Positive Edge Triggered D Flip-Flop
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

entity DFlipFlop is
    Port ( D : in  STD_LOGIC;
           CLK : in  STD_LOGIC;
           Q : out  STD_LOGIC;
           Qbar : out  STD_LOGIC);
end DFlipFlop;

architecture Behavioral of DFlipFlop is
begin
   process (CLK) is
   begin
      if rising_edge(CLK) then
            Q <= D;
				Qbar <= not D;
      end if;
   end process;
end architecture Behavioral;

