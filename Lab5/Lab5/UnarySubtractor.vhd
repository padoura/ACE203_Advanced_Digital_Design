----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:53:34 05/03/2017 
-- Design Name: 
-- Module Name:    AdderSubtractor - Structural 
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

entity UnarySubtractor is
	Port ( In0 : in  STD_LOGIC;
				B : in STD_LOGIC_VECTOR (7 downto 0);
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  LD  : out STD_LOGIC;
			  Done : out STD_LOGIC;
			  S : OUT  std_logic_vector(7 downto 0));
end UnarySubtractor;

architecture Structural of UnarySubtractor is


component FSM_Control_Unary is
    Port ( In0 : in  STD_LOGIC;
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (1 downto 0));
end component;

COMPONENT CLAddSub8 is
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         S : OUT  std_logic_vector(7 downto 0);
         Ovf : OUT  std_logic;
         Operator : IN  std_logic
        );
END COMPONENT;

signal FSMOut : STD_LOGIC_VECTOR (1 downto 0);
signal Ovf : STD_LOGIC;

begin

	ControlUnaryU : FSM_Control_Unary Port Map (In0 => In0,
																Clk => Clk,
																Rst => Rst,
																OutVec => FSMOut);
																
	CLA : CLAddSub8 						Port Map (A => x"00",
															B => B,
															S => S,
															Ovf => Ovf,
															Operator => '1');
	

	LD <= FSMOut(0);
	Done <= FSMOut(1);

end Structural;

