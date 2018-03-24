----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:40:28 05/03/2017 
-- Design Name: 
-- Module Name:    Register8 - Behavioral 
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

entity Register8 is PORT(
    D   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    LD  : IN STD_LOGIC; 
    Clr : IN STD_LOGIC; 
    Clk : IN STD_LOGIC; 
    Q   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
end Register8;

architecture Behavioral of Register8 is

begin
    process(Clk, Clr)
    begin
        if Clr = '1' then
            Q <= "00000000";
        elsif rising_edge(clk) then
            if LD = '1' then
                Q <= D;
            end if;
        end if;
    end process;
end Behavioral;

