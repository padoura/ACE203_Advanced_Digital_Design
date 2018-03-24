----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:08 03/01/2017 
-- Design Name: 
-- Module Name:    Lab2TopModule - Structural 
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

entity Lab2TopModule is
    Port ( InVec : in  STD_LOGIC_VECTOR (2 downto 0);
           Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Led : out  STD_LOGIC_VECTOR (7 downto 0));
end Lab2TopModule;

architecture Structural of Lab2TopModule is

	component LedCombLogic is
		Port (	InVec : in  STD_LOGIC_VECTOR (2 downto 0);
					OutVec : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component Lab2FSM is
		Port	(	InVec : in  STD_LOGIC_VECTOR (2 downto 0);
					Clk : in  STD_LOGIC;
					Rst : in  STD_LOGIC;
					QVec : inout  STD_LOGIC_VECTOR (2 downto 0));
	end component;
	
	component singlepulsegen is
		Port ( 	clk 		: in std_logic;		-- connect it to the Clock of the board
					rst 		: in std_logic;		-- connect it to the Reset Button of the board			
					input 	: in std_logic;		-- connect it to the Push Button of the board
					output 	: out std_logic);			-- connect it to the input of your circuit
	end component;
	
	
	signal	QVec		: STD_LOGIC_VECTOR (2 downto 0) := "001";
	signal 	PulseVec : STD_LOGIC_VECTOR (2 downto 0);

	begin
		
		Loop1 : For i in 0 to 2 generate		
			PulseGen : singlepulsegen 			Port Map (	rst => '0',
																		input => InVec(i),
																		clk => Clk,
																		output => PulseVec(i));
		end generate;
	
		FSMU : Lab2FSM				Port Map (	InVec => PulseVec,
														Clk	=> Clk,
														Rst	=> Rst,
														QVec	=> QVec);
														
		LedU : LedCombLogic		Port Map (	InVec => QVec,
														OutVec => Led);
														
		


end Structural;

