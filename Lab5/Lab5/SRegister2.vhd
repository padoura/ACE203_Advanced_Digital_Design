----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:34:25 05/03/2017 
-- Design Name: 
-- Module Name:    SRegister2 - Structural 
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

entity SRegister2 is Port(
	 D   : IN STD_LOGIC;
    LD  : IN STD_LOGIC; 
    Clr : IN STD_LOGIC; 
    Clk : IN STD_LOGIC; 
    Q   : OUT STD_LOGIC);
end SRegister2;

architecture Structural of SRegister2 is

component DFlipFlop is PORT(
    D   : IN STD_LOGIC;
    LD  : IN STD_LOGIC; 
    Clr : IN STD_LOGIC; 
    Clk : IN STD_LOGIC; 
    Q   : OUT STD_LOGIC);
end component;

signal Q1 : STD_LOGIC;

begin

U1 : DFlipFlop Port Map(D => D,
								LD => '1',
								Clr => Clr,
								Clk => Clk,
								Q => Q1);
								
U2 : DFlipFlop Port Map(D => Q1,
								LD => '1',
								Clr => Clr,
								Clk => Clk,
								Q => Q);								
						


end Structural;

