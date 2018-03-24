----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:23:58 03/13/2017 
-- Design Name: 
-- Module Name:    Lab2FSMTop - Structural 
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

entity Lab2FSMTop is
    Port ( InVec : in  STD_LOGIC_VECTOR (2 downto 0);
           Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
           Led : out  STD_LOGIC_VECTOR (7 downto 0));
end Lab2FSMTop;

architecture Structural of Lab2FSMTop is

	component singlepulsegen is
		Port ( 	clk 		: in std_logic;		-- connect it to the Clock of the board
					rst 		: in std_logic;		-- connect it to the Reset Button of the board			
					input 	: in std_logic;		-- connect it to the Push Button of the board
					output 	: out std_logic);			-- connect it to the input of your circuit
	end component;
	
	component Lab2FSM is
		Port	(	InVec : in  STD_LOGIC_VECTOR (2 downto 0);
					Clk : in  STD_LOGIC;
					Rst : in  STD_LOGIC;
					Out0 : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	signal	PulseVec : STD_LOGIC_VECTOR (2 downto 0);

	begin
		PulseLoop : For i in 0 to 2 generate		
			PulseGen : singlepulsegen 			Port Map (	rst => Rst,
																		input => InVec(i),
																		clk => Clk,
																		output => PulseVec(i));
		end generate;
		
		FSMU : Lab2FSM				Port Map (	InVec => PulseVec,
														Clk	=> Clk,
														Rst	=> Rst,
														Out0	=> Led);


end Structural;

