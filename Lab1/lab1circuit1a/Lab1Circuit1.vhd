----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:10:07 02/23/2017 
-- Design Name: 
-- Module Name:    Lab1Circuit1 - Structural 
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

entity Lab1Circuit1 is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           Btn0 : in  STD_LOGIC;
           Btn1 : in  STD_LOGIC;
           Btn2 : in  STD_LOGIC;
           Btn3 : in  STD_LOGIC;
           Led : out  STD_LOGIC_VECTOR (7 downto 0));
end Lab1Circuit1;

architecture Structural of Lab1Circuit1 is

signal TempLed0, TempLed1, TempLed2, TempLed3: STD_LOGIC;

component AndGate is
	Port	(	In0 : in STD_LOGIC;
				In1 : in STD_LOGIC;
				Out0 : out STD_LOGIC);
end component;

component XorGate is
	Port	(	In0 : in STD_LOGIC;
				In1 : in STD_LOGIC;
				Out0 : out STD_LOGIC);
end component;

component NorGate is
	Port	(	In0 : in STD_LOGIC;
				In1 : in STD_LOGIC;
				Out0 : out STD_LOGIC);
end component;

component NotGate is
	Port	(	In0 : in STD_LOGIC;
				Out0 : out STD_LOGIC);
end component;

begin
	-- Led0 AND
	And0Led0: AndGate Port Map (	In0 => In0,
											In1 => In1,
											Out0	=> TempLed0);
											
	And1Led0: AndGate Port Map (	In0 => TempLed0,
											In1 => Btn0,
											Out0	=> Led(0));
	-- Led1 XOR
	XorLed1: XorGate Port Map (	In0 => In0,
											In1 => In1,
											Out0	=> TempLed1);
								
	AndLed1: AndGate Port Map (	In0 => TempLed1,
											In1 => Btn1,
											Out0	=> Led(1));
	-- Led2 NOR
	NorLed2: NorGate Port Map (	In0 => In0,
											In1 => In1,
											Out0	=> TempLed2);
								
	AndLed2: AndGate Port Map (	In0 => TempLed2,
											In1 => Btn2,
											Out0	=> Led(2));
											
	-- Led3 NOT	
	NotLed3: NotGate Port Map (	In0 => In0,
											Out0	=> TempLed3);
								
	AndLed3: AndGate Port Map (	In0 => TempLed3,
											In1 => Btn3,
											Out0	=> Led(3));
											
	-- Leds 4-7
	Led(4) <= In0;
	Led(5) <= In1;
	Led(6) <= '0';
	Led(7) <= '0';
											
	
end Structural;

