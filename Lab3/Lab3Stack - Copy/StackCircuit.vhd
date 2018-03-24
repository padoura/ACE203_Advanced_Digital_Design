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
			  Add : in STD_LOGIC;
           Rst : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Num_In : in  STD_LOGIC_VECTOR (7 downto 0);
           Num_Out : out  STD_LOGIC_VECTOR (7 downto 0);
			  FSMOut : out STD_LOGIC_VECTOR (1 downto 0));
end StackCircuit;

architecture Structural of StackCircuit is

	component Counter5bit is
		 Port ( Clk : in  STD_LOGIC;
				  Q : out  STD_LOGIC_VECTOR (4 downto 0);
				  En : in  STD_LOGIC;
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
	
	component FSMStack is
    Port ( InVec : in  STD_LOGIC_VECTOR (3 downto 0);
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (1 downto 0));
	end component;
	
	component MemoryStack IS
	Port (clka : IN STD_LOGIC;
			wea : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
			addra : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
			dina : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			douta : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	end component;
	
	component singlepulsegen is
		Port ( 	clk 		: in std_logic;
					rst 		: in std_logic;	
					input 	: in std_logic;
					output 	: out std_logic);
	end component;
	
	signal TOSeq31, TOSeq0, RC_TOS, RC_TOSm1, CounterEn, PushEn, notRst, PushPulse, PopPulse, AddPulse : STD_LOGIC;
	signal FSM_Out : STD_LOGIC_VECTOR (1 downto 0);
	signal TOS_Out, TOSm1_Out : STD_LOGIC_VECTOR (4 downto 0);

begin	
	PulsePush : singlepulsegen Port Map (rst => Rst,
													input => Push,
													clk => Clk,
													output => PushPulse);
													
	PulsePop : singlepulsegen Port Map (rst => Rst,
													input => Pop,
													clk => Clk,
													output => PopPulse);

	PulseAdd : singlepulsegen Port Map (rst => Rst,
													input => Add,
													clk => Clk,
													output => AddPulse);
													

	FSMU : FSMStack Port Map (InVec(3) => PushPulse,
										InVec(2) => PopPulse,
										InVec(1) => TOSeq31,
										InVec(0) => TOSeq0,
										Clk => Clk,
										Rst => Rst,
										OutVec => FSM_Out);
										
	Comp31 : EqualComp5 Port Map(A => TOS_Out,
											B => "11111",
											AeqB => TOSeq31);
											
	Comp0 : EqualComp5 Port Map(A => TOS_Out,
											B => "00000",
											AeqB => TOSeq0);

	TOS : Counter5bit Port Map(Clk => Clk,
										Q => TOS_Out,
										En => CounterEn,
										UpDn => PushPulse,
										InVec => "00000",
										LD => notRst,
										RC => RC_TOS);

	TOSm1 : Counter5bit Port Map(Clk => Clk,
											Q => TOSm1_Out,
											En => CounterEn,
											UpDn => PushPulse,
											InVec => "11111",
											LD => notRst,
											RC => RC_TOSm1);
											
	MemoryU : MemoryStack Port Map(clka => Clk,
											wea(0) => PushEn,
											addra => TOS_Out,
											dina => Num_In,
											douta => Num_Out);
											
	PushEn <= PushPulse and FSM_Out(1);						
	CounterEn <= PushEn or (PopPulse and FSM_Out(0));
	notRst <= not Rst;
	
	FSMOut <= FSM_Out;
	
	
	
end Structural;

