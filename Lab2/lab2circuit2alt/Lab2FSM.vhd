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
           QVec : inout  STD_LOGIC_VECTOR (2 downto 0));
end Lab2FSM;

architecture Structural of Lab2FSM is

	component OneHotCombLogic is
		Port (	QVec : in  STD_LOGIC_VECTOR (2 downto 0);
					InVec : in  STD_LOGIC_VECTOR (2 downto 0);
					Out0 : out  STD_LOGIC);
	end component;
	
	component DFlipFlop is
		Port (	D : in  STD_LOGIC;
					Clk : in  STD_LOGIC;
					Q : out  STD_LOGIC;
					Qbar : out  STD_LOGIC);
	end component;
	
	
	component NotGate is
		Port (	In0 : in  STD_LOGIC;
					Out0 : out  STD_LOGIC);
	end component;
	
	component Or3Gate is
		Port (	In0 : in  STD_LOGIC;
					In1 : in  STD_LOGIC;
					In2 : in STD_LOGIC;
					Out0 : out  STD_LOGIC);
	end component;
	
	component And3Gate is
		Port (	In0 : in  STD_LOGIC;
					In1 : in  STD_LOGIC;
					In2 : in STD_LOGIC;
					Out0 : out  STD_LOGIC);
	end component;
	
	component AndGate is
		Port (	In0 : in  STD_LOGIC;
					In1 : in  STD_LOGIC;
					Out0 : out  STD_LOGIC);
	end component;	
		
	
	signal PreD, D, InVecBar : STD_LOGIC_VECTOR (2 downto 0);
	signal RstBar, RstAnd0_Out, RstOr1_Out, RstOr2_Out :	STD_LOGIC;
	
	
	
	begin
		
		Loop1 : For i in 0 to 2 generate		
			DFlipFlopU : DFlipFlop 			Port Map (	D => D(i),
																	Clk => Clk,
																	Q => QVec(i));
		end generate;
		
		NotRst : NotGate 						Port Map	(	In0 => Rst,
																	Out0 => RstBar);
		Loop2 : For i in 0 to 2 generate		
			NotIn : NotGate 					Port Map (	In0 => InVec(i),
																	Out0 => InVecBar(i));
		end generate;
		
		
		
		OneHotLogicU0 : OneHotCombLogic	Port Map (	QVec(0) => QVec(2),
																	QVec(1) => QVec(1),
																	QVec(2) => QVec(0),
																	InVec => InVec,
																	Out0 => PreD(0));

		OneHotLogicU1 : OneHotCombLogic	Port Map (	QVec(1) => QVec(2),
																	QVec(2) => QVec(1),
																	QVec(0) => QVec(0),
																	InVec => InVec,
																	Out0 => PreD(1));

		OneHotLogicU2 : OneHotCombLogic	Port Map (	QVec(0) => QVec(1),
																	QVec(1) => QVec(0),
																	QVec(2) => QVec(2),
																	InVec => InVec,
																	Out0 => PreD(2));
		
		--
		RstAnd0	: And3Gate					Port Map	(	In0 => InVecBar(0),
																	In1 => InVecBar(1),
																	In2 => InVecBar(2),
																	Out0 => RstAnd0_Out);													
															
		RstOr0	: Or3Gate					Port Map	(	In0 => PreD(0),
																	In1 => Rst,
																	In2 => RstAnd0_Out,
																	Out0 => D(0));
		--										
		RstOr1	: Or3Gate					Port Map (	In0 => InVec(0),
																	In1 => InVec(1),
																	In2 => InVec(2),
																	Out0 => RstOr1_Out);
																	
															
		RstAnd1	: And3Gate					Port Map	(	In0 => PreD(1),
																	In1 => RstOr1_Out,
																	In2 => RstBar,
																	Out0 => D(1));												
		
		--
		RstOr2	: Or3Gate					Port Map (	In0 => InVec(0),
																	In1 => InVec(1),
																	In2 => InVec(2),
																	Out0 => RstOr2_Out);
		
		RstAnd2	: And3Gate					Port Map	(	In0 => PreD(2),
																	In1 => RstOr2_Out,
																	In2 => RstBar,
																	Out0 => D(2));
															
--		LedU : LedCombLogic			Port Map (	InVec => QVec,
--															OutVec => Led);
															

		


end Structural;

