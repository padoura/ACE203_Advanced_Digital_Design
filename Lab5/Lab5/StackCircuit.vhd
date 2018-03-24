----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:03:58 03/28/2017 
-- Design Name: 
-- Module Name:    StackCircuit - Structural 
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

entity StackCircuit is
    Port ( Push : in  STD_LOGIC;
           Pop : in  STD_LOGIC;
			  Mode : in STD_LOGIC;
           Rst : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Num_In : in  STD_LOGIC_VECTOR (7 downto 0);
           Num_Out : out  STD_LOGIC_VECTOR (7 downto 0);
			  FSMOut : out STD_LOGIC_VECTOR (1 downto 0);
			  ModeOut : out STD_LOGIC_VECTOR (1 downto 0));
end StackCircuit;

architecture Structural of StackCircuit is

	component Counter5bit is
		 Port ( Clk : in  STD_LOGIC;
				  Q : out  STD_LOGIC_VECTOR (4 downto 0);
				  En : in  STD_LOGIC;
				  EnT : in STD_LOGIC;
				  UpDn : in  STD_LOGIC;
				  InVec : in  STD_LOGIC_VECTOR (4 downto 0);
				  LD : in  STD_LOGIC;
				  RC : out STD_LOGIC);
	end component;
	
	component EqualComp5 is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           AeqB : out  STD_LOGIC);
	end component;
	
	
	component FSM_Mode is
    Port ( In2 : in  STD_LOGIC;
			  Done : in STD_LOGIC;
			  SwapDone : in STD_LOGIC;
			  UnaryDone : in STD_LOGIC;
			  Ovf : in STD_LOGIC;
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (1 downto 0));
	end component;
	
	
	
	component FSMTop is
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
	end component;
	
	component MemoryStack IS
	Port (    clka : IN STD_LOGIC;
				 wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
				 addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
				 dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
				 douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
				 clkb : IN STD_LOGIC;
				 web : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
				 addrb : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
				 dinb : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
				 doutb : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	end component;

	component singlepulsegen is
		Port ( 	clk 		: in std_logic;
					rst 		: in std_logic;	
					input 	: in std_logic;
					output 	: out std_logic);
	end component;
	
	component debouncer is
		Port ( 	clk 		: in std_logic;
					rst 		: in std_logic;	
					input 	: in std_logic;
					output 	: out std_logic);
	end component;
	
	component mux32x8 is
    Port ( InVec : in  STD_LOGIC_VECTOR (31 downto 0);
           SelVec : in  STD_LOGIC_VECTOR (1 downto 0);
           OutVec : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	component SRegister2 is Port(
	 D   : IN STD_LOGIC;
    LD  : IN STD_LOGIC; 
    Clr : IN STD_LOGIC; 
    Clk : IN STD_LOGIC; 
    Q   : OUT STD_LOGIC);
	end component;
	
	signal TOSeq31, SwapEn, SwapDone, UnaryDone, Ov_f, SRegister2_Out, Done, UpDown, TOSeq0, RC_TOS, RC_TOSm1, CounterEn, PushEn, notRst, UpPulse, PushPulse, PopPulse, ModePulse, NorMode_Out : STD_LOGIC;
	signal FSM_Out, Mode_Out : STD_LOGIC_VECTOR (1 downto 0);
	signal TOS_Out, TOSm1_Out : STD_LOGIC_VECTOR (4 downto 0);
	signal Num1_Out, NumOut, RegisterOut, MemoryIn : STD_LOGIC_VECTOR (7 downto 0);

begin	
	PulsePush : singlepulsegen Port Map (rst => Rst,
													input => Push,
													clk => Clk,
													output => PushPulse);
													
	PulsePop : singlepulsegen Port Map (rst => Rst,
													input => Pop,
													clk => Clk,
													output => PopPulse);

	PulseMode : singlepulsegen Port Map (rst => Rst,
													input => Mode,
													clk => Clk,
													output => ModePulse);

	PulseUp   : debouncer Port Map (rst => Rst,
													input => NorMode_Out,
													clk => Clk,
													output => UpPulse);
													

 
	FSMTopU : FSMTop Port Map (InVec(3) => UpDown,
										InVec(2) => PopPulse,
										InVec(1) => TOSeq31,
										InVec(0) => TOSeq0,
										ModePulse => ModePulse,
										Mode_Out => Mode_Out,
										TOS_Out => NumOut,
										TOSm1_Out => Num1_Out,
										SwapEn => SwapEn,
										SwapDone => SwapDone,
										UnaryDone => UnaryDone,
										Done => Done,
										Ovf => Ov_f,
										RegisterOut => RegisterOut,
										Clk => Clk,
										Rst => Rst,
										OutVec => FSM_Out);
	
												
	ModeU:	FSM_Mode Port Map (In2 => ModePulse,
										Clk => Clk,
										Done => Done,
										SwapDone => SwapDone,
										UnaryDone => UnaryDone,
										Ovf => Ov_f,
										Rst => Rst,
										OutVec => Mode_Out);
										
	Comp31 : EqualComp5 Port Map(A => TOS_Out,
											B => "11111",
											AeqB => TOSeq31);
											
	Comp0 : EqualComp5 Port Map(A => TOS_Out,
											B => "00000",
											AeqB => TOSeq0);

	TOS : Counter5bit Port Map(Clk => Clk,
										Q => TOS_Out,
										En => CounterEn,
										EnT => NorMode_Out,
										UpDn => UpDown,
										InVec => "00000",
										LD => notRst,
										RC => RC_TOS);

	TOSm1 : Counter5bit Port Map(Clk => Clk,
											Q => TOSm1_Out,
											En => CounterEn,
											EnT => NorMode_Out,
											UpDn => UpDown,
											InVec => "11111",
											LD => notRst,
											RC => RC_TOSm1);
											
	MemoryU : MemoryStack Port Map(clka => Clk,
											clkb => Clk,
											wea(0) => PushEn,
											web(0) => SwapEn,
											addra => TOS_Out,
											addrb => TOSm1_Out,
											dina => MemoryIn,
											dinb => NumOut,
											doutb => Num1_Out,
											douta => NumOut);

	MuxU2:		mux32x8 Port Map (InVec(31 downto 24) => x"00",
										InVec(23 downto 16) => x"00",
										InVec(15 downto 8) => Num_In,
										InVec(7 downto 0) => RegisterOut,
										SelVec(0) => SRegister2_Out,
										SelVec(1) => '0',
										OutVec => MemoryIn);
										
										
	SRegister2U : SRegister2 Port Map ( D => NorMode_Out,
												LD => '1',
												Clr => Rst,
												Clk => Clk,
												Q => SRegister2_Out);
	
											
	PushEn <= ( PushPulse and FSM_Out(1) ) or UpPulse;					
	CounterEn <= PushEn or (PopPulse and FSM_Out(0)) or (NorMode_Out and ModePulse);
	notRst <= not Rst;
	
	FSMOut <= FSM_Out;
	ModeOut <= Mode_Out;
	NorMode_Out <= Mode_Out(1) nor Mode_Out(0);
	
	UpDown <= PushPulse or UpPulse;
	
	Num_Out <= NumOut;
	
	
end Structural;

