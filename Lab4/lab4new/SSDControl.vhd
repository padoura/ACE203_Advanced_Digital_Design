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

entity SSDControl is
    Port ( 	Clk	:	in STD_LOGIC;
				Rst	:  in STD_LOGIC;
				StateOut	  : out  STD_LOGIC_VECTOR (1 downto 0);
				ControlOut : out  STD_LOGIC_VECTOR (3 downto 0));
end SSDControl;

architecture Structural of SSDControl is

	component EqualComp7 is
		 Port ( A : in  STD_LOGIC_VECTOR (6 downto 0);
				  B : in  STD_LOGIC_VECTOR (6 downto 0);
				  AeqB : out  STD_LOGIC);
	end component;
	
	component Counter125K is
    Port ( Clk : in  STD_LOGIC;
           Q : out  STD_LOGIC_VECTOR (16 downto 0);
           En : in  STD_LOGIC;
           InVec : in  STD_LOGIC_VECTOR (16 downto 0);
			  RC	: out STD_LOGIC;
           LD : in  STD_LOGIC);
	end component;
	
	component FSMssd is
    Port ( In0 : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
           Rst : in  STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (1 downto 0));
	end component;
	
	component mux16x4 is
    Port ( InVec : in  STD_LOGIC_VECTOR (15 downto 0);
           SelVec : in  STD_LOGIC_VECTOR (1 downto 0);
           OutVec : out  STD_LOGIC_VECTOR (3 downto 0));
	end component;
	
	signal FSMOutVec	: STD_LOGIC_VECTOR (1 downto 0);
	signal AeqBOut		: STD_LOGIC;
	signal CompIn		: STD_LOGIC_VECTOR (16 downto 0);
	signal notRst		: STD_LOGIC;

begin
	
	muxU : mux16x4	Port Map (InVec(3 downto 0) => "1110", -- AN0 active on 
									InVec(7 downto 4) => "1101", -- AN1 active
									InVec(11 downto 8) => "1011", -- AN2 active
									InVec(15 downto 12) => "0111", -- AN3 active
									SelVec => FSMOutVec,
									OutVec => ControlOut);
									
	fsmU : FSMssd  Port Map (In0 => AeqBOut,
									Clk  => Clk,
									Rst  => Rst,
									OutVec => FSMOutVec);
									
	counterU : Counter125K Port Map (Clk => Clk,
												En  => '1',
												InVec => (others => '0'),
												LD => notRst,
												Q => CompIn);
												
	compU : EqualComp7 Port Map (A(6 downto 3) => CompIn(16 downto 13),
											A(2) => CompIn(11),
											A(1) => CompIn(6),
											A(0) => CompIn(3), -- enough bits to check equality with 125000 here
											B => (others => '1'),
											AeqB => AeqBOut);
											
											
	
	StateOut <= FSMOutVec;
	notRst <= not Rst;

end Structural;