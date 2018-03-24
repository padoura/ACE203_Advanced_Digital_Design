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
			TOS_Out : in STD_LOGIC_VECTOR (7 downto 0);
			TOSm1_Out : in STD_LOGIC_VECTOR (7 downto 0);
			ModePulse : in STD_LOGIC;
			Done : out STD_LOGIC;
			SwapEn : out STD_LOGIC;
			SwapDone : out STD_LOGIC;
			UnaryDone : out STD_LOGIC;
			Ovf : out STD_LOGIC;
			RegisterOut : out STD_LOGIC_VECTOR (7 downto 0);
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
	
	component mux8x2 is
		Port ( InVec : in  STD_LOGIC_VECTOR (7 downto 0);
				  OutVec : out  STD_LOGIC_VECTOR (1 downto 0);
				  SelVec : in  STD_LOGIC_VECTOR (1 downto 0));
	end	component;
	
	component mux32x8 is
    Port ( InVec : in  STD_LOGIC_VECTOR (31 downto 0);
           SelVec : in  STD_LOGIC_VECTOR (1 downto 0);
           OutVec : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component Register8 is Port(
    D   : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    LD  : IN STD_LOGIC; 
    Clr : IN STD_LOGIC; 
    Clk : IN STD_LOGIC; 
    Q   : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	end component;
	
	component AdderSubtractor is
	Port ( InVec : in  STD_LOGIC_VECTOR (1 downto 0);
				A  : in STD_LOGIC_VECTOR (7 downto 0);
				B : in STD_LOGIC_VECTOR (7 downto 0);
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  Ovf : out STD_LOGIC;
			  LD  : out STD_LOGIC;
			  Done : out STD_LOGIC;
			  S : OUT  std_logic_vector(7 downto 0));
	end component;
	
	
	component UnarySubtractor is
		Port ( In0 : in  STD_LOGIC;
					B : in STD_LOGIC_VECTOR (7 downto 0);
				  Clk : in  STD_LOGIC;
				  Rst : in STD_LOGIC;
				  LD  : out STD_LOGIC;
				  Done : out STD_LOGIC;
				  S : OUT  std_logic_vector(7 downto 0));
	end component;
	
	
	component FSM_Control_Swap is
    Port ( In0 : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (1 downto 0));
	end component;
	
	signal Stack_Out, Swap_Out, Add_Out : STD_LOGIC_VECTOR (1 downto 0);
	signal Mode1SubEn, Swap_En, Swap_Done, RegisterEn, LD_Unary, LD_Add, Mode1AddEn, Mode2UnEn, Mode2SwapEn, PushEn, PopEn : STD_LOGIC;
	signal Result_Add, RegisterTOSOut, RegisterIn, RegisterTOSm1Out, Result_Unary, MuxSwap_Out : STD_LOGIC_VECTOR (7 downto 0);

begin


RegisterU0 : Register8	Port Map (D => RegisterIn,
												LD => RegisterEn,
												Clr => Rst,
												Clk => Clk,
												Q => RegisterOut);

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
										
MuxU0:		mux8x2 Port Map (InVec(3) => '0',
										InVec(2) => Swap_Out(0),
										InVec(1) => Add_Out(0),
										InVec(0) => Stack_Out(0),
										InVec(7) => '0',
										InVec(6) => Swap_Out(1),
										InVec(5) => Add_Out(1),
										InVec(4) => Stack_Out(1),
										SelVec => Mode_Out,
										OutVec => OutVec);
										
MuxU2:		mux32x8 Port Map (InVec(31 downto 24) => x"00",
										InVec(23 downto 16) => Result_Unary,
										InVec(15 downto 8) => Result_Add,
										InVec(7 downto 0) => MuxSwap_Out,
										SelVec(0) => LD_Add,
										SelVec(1) => LD_Unary,
										OutVec => RegisterIn);
										
MuxSwapU:	mux32x8 Port Map (InVec(31 downto 24) => x"00",
										InVec(23 downto 16) => x"00",
										InVec(15 downto 8) => TOSm1_Out,
										InVec(7 downto 0) => TOS_Out,
										SelVec(0) => Swap_En,
										SelVec(1) => '0',
										OutVec =>  MuxSwap_Out);
										
AdderSubtractorU	: AdderSubtractor Port Map (InVec => Add_Out,
															A => TOS_Out,
															B => TOSm1_Out,
															Clk => Clk,
															Rst => Rst,
															Ovf => Ovf,
															LD => LD_Add,
															Done  => Done,
															S => Result_Add);
															
UnarySubtractorU	: UnarySubtractor Port Map (In0 => Mode2UnEn,
															B => TOS_Out,
															Clk => Clk,
															Rst => Rst,
															LD => LD_Unary,
															Done  => UnaryDone,
															S => Result_Unary);

FSM_Control_SwapU :	FSM_Control_Swap Port Map (In0 => Mode2SwapEn,
																Clk => Clk,
																Rst => Rst,
																OutVec(0) => Swap_En,
																OutVec(1) => SwapDone);
										
	Mode1SubEn <=	Mode_Out(0) AND InVec(2); -- InVec(2) is BTN1, Sub
	Mode1AddEn <=  Mode_Out(0) AND InVec(3); -- InVec(3) is BTN0, Add
	Mode2SwapEn <= Mode_Out(1) AND InVec(2); -- InVec(2) is BTN1, Swap
	Mode2UnEn  <=  Mode_Out(1) AND InVec(3); -- InVec(3) is BTN0, Unary
	
	PushEn <= InVec(3) AND (Mode_Out(1) NOR Mode_Out(0));
	PopEn <= InVec(2) AND (Mode_Out(1) NOR Mode_Out(0));
	SwapEn <= Swap_En;
	
	RegisterEn <= ModePulse or LD_Add or LD_Unary or Swap_En;
	

end Structural;

