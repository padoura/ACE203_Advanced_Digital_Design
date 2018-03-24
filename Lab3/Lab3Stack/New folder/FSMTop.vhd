----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:03:04 04/24/2017 
-- Design Name: 
-- Module Name:    FSMTop - Behavioral 
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

entity FSMTop is
Port (	InVec  : in  STD_LOGIC_VECTOR (3 downto 0);
			OutVec : out STD_LOGIC_VECTOR (1 downto 0);
			Mode_Out : in STD_LOGIC_VECTOR (1 downto 0);
			Clk : in  STD_LOGIC;
			Rst : in STD_LOGIC);
end FSMTop;

architecture Structural of FSMTop is

	component FSMStack is
    Port ( InVec : in  STD_LOGIC_VECTOR (3 downto 0);
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (1 downto 0));
	end component;
	
	component FSM_Un_Swap is
    Port ( InVec : in  STD_LOGIC_VECTOR (2 downto 0);
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (1 downto 0));
	end component;
	
	component FSM_Add_Sub is
    Port ( InVec : in  STD_LOGIC_VECTOR (2 downto 0);
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (1 downto 0));
	end component;
	
	component mux4x1 is
    Port ( InVec : in  STD_LOGIC_VECTOR (3 downto 0);
           Out0 : out  STD_LOGIC;
           SelVec : in  STD_LOGIC_VECTOR (1 downto 0));
	end component;
	
	signal Stack_Out, Swap_Out, Add_Out : STD_LOGIC_VECTOR (1 downto 0);
	signal Mode1SubEn, Mode1AddEn, Mode2UnEn, Mode2SwapEn, PushEn, PopEn : STD_LOGIC;

begin

StackU:	FSMStack Port Map (InVec(3) => PushEn,
										InVec(2) => PopEn,
										InVec(1) => InVec(1),
										InVec(0) => InVec(0),
										Clk => Clk,
										Rst => Rst,
										OutVec => Stack_Out);
										
Un_SwapU:	FSM_Un_Swap Port Map (InVec(2) => Mode_Out(1),
										InVec(1) => Mode2SwapEn, -- InVec(2) is BTN1
										InVec(0) => Mode2UnEn, -- InVec(3) is BTN0
										Clk => Clk,
										Rst => Rst,
										OutVec => Swap_Out);
										
Add_SubU:	FSM_Add_Sub Port Map (InVec(2) => Mode_Out(0),
										InVec(1) => Mode1SubEn, -- InVec(2) is BTN1
										InVec(0) => Mode1AddEn, -- InVec(3) is BTN0
										Clk => Clk,
										Rst => Rst,
										OutVec => Add_Out);
										
MuxU0:		mux4x1 Port Map (InVec(3) => '0',
										InVec(2) => Swap_Out(0),
										InVec(1) => Add_Out(0),
										InVec(0) => Stack_Out(0),
										SelVec => Mode_Out,
										Out0 => OutVec(0));
										
MuxU1:		mux4x1 Port Map (InVec(3) => '0',
										InVec(2) => Swap_Out(1),
										InVec(1) => Add_Out(1),
										InVec(0) => Stack_Out(1),
										SelVec => Mode_Out,
										Out0 => OutVec(1));
										
	Mode1SubEn <=	Mode_Out(0) AND InVec(2); -- InVec(2) is BTN1, Sub
	Mode1AddEn <=  Mode_Out(0) AND InVec(3); -- InVec(3) is BTN0, Add
	Mode2SwapEn <= Mode_Out(1) AND InVec(2); -- InVec(2) is BTN1, Swap
	Mode2UnEn  <=  Mode_Out(1) AND InVec(3); -- InVec(3) is BTN0, Unary
	
	PushEn <= InVec(3) AND (Mode_Out(1) NOR Mode_Out(0));
	PopEn <= InVec(2) AND (Mode_Out(1) NOR Mode_Out(0));

end Structural;

