----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:15:56 03/28/2017 
-- Design Name: 
-- Module Name:    SSDCircuit - Structural 
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

entity SSDCircuit is
    Port ( DataIn : in  STD_LOGIC_VECTOR (1 downto 0);
           ControlOut : out  STD_LOGIC_VECTOR (3 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (7 downto 0);
			  Clk : in STD_LOGIC;
			  Rst : in STD_LOGIC);
end SSDCircuit;

architecture Structural of SSDCircuit is

	component SSDControl is
		 Port ( 	Clk	:	in STD_LOGIC;
					Rst	:  in STD_LOGIC;
					StateOut	  : out  STD_LOGIC_VECTOR (1 downto 0);
					ControlOut : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	component SSDData is
		 Port ( DataIn : in  STD_LOGIC_VECTOR (1 downto 0);
				  ControlIn: in  STD_LOGIC_VECTOR (1 downto 0);
				  DataOut : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	signal ControlIn:  STD_LOGIC_VECTOR (1 downto 0);

begin
	
	controlU : SSDControl port map (Clk => Clk,
												Rst => Rst,
												ControlOut => ControlOut,
												StateOut => ControlIn);
												
	dataU : SSDData 		 port map (DataIn => DataIn,
												ControlIn => ControlIn,
												DataOut => DataOut);									


end Structural;