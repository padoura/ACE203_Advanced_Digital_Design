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

entity AdderSubtractor is
	Port ( InVec : in  STD_LOGIC_VECTOR (1 downto 0);
				A : in STD_LOGIC_VECTOR (7 downto 0);
				B : in STD_LOGIC_VECTOR (7 downto 0);
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  Ovf : out STD_LOGIC;
			  LD  : out STD_LOGIC;
			  Done : out STD_LOGIC;
			  S : OUT  std_logic_vector(7 downto 0));
end AdderSubtractor;

architecture Structural of AdderSubtractor is


component FSM_Control_Add_Sub is
    Port ( InVec : in  STD_LOGIC_VECTOR (1 downto 0);
           Clk : in  STD_LOGIC;
			  Rst : in STD_LOGIC;
			  OutVec : out STD_LOGIC_VECTOR (2 downto 0));
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

signal FSMOut : STD_LOGIC_VECTOR (2 downto 0);

begin

	ControlAddU : FSM_Control_Add_Sub Port Map (InVec => InVec,
																Clk => Clk,
																Rst => Rst,
																OutVec => FSMOut);
																
	CLA : CLAddSub8 						Port Map (A => A,
															B => B,
															S => S,
															Ovf => Ovf,
															Operator => FSMOut(0));			
	

	LD <= FSMOut(1);
	Done <= FSMOut(2);

end Structural;

