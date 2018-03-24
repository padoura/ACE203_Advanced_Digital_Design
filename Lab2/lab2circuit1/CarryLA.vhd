----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    02:45:47 03/12/2017 
-- Design Name: 
-- Module Name:    CarryLA - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 	Carry Look Ahead Unit of a 4-bit CLA Adder
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

entity CarryLA is
    Port ( C : out  STD_LOGIC_VECTOR (3 downto 0);
           Cin : in  STD_LOGIC;
           P : in  STD_LOGIC_VECTOR (3 downto 0);
           G : in  STD_LOGIC_VECTOR (3 downto 0));
end CarryLA;

architecture Structural of CarryLA is

	component OrGate is
		 Port ( In0 : in  STD_LOGIC;
				  In1 : in  STD_LOGIC;
				  Out0 : out  STD_LOGIC);
	end component;
	
	component AndGate is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           Out0 : out  STD_LOGIC);
	end component;
	
	component Or3Gate is
		 Port ( In0 : in  STD_LOGIC;
				  In1 : in  STD_LOGIC;
				  In2 : in  STD_LOGIC;
				  Out0 : out  STD_LOGIC);
	end component;
	
	component And3Gate is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
			  In2 : in  STD_LOGIC;
           Out0 : out  STD_LOGIC);
	end component;
	
	component Or4Gate is
		 Port ( InVec : in  STD_LOGIC_VECTOR (3 downto 0);
				  Out0 : out  STD_LOGIC);
	end component;
	
	component And4Gate is
    Port ( InVec : in  STD_LOGIC_VECTOR (3 downto 0);
           Out0 : out  STD_LOGIC);
	end component;
	
	component Or5Gate is
		 Port ( InVec : in  STD_LOGIC_VECTOR (4 downto 0);
				  Out0 : out  STD_LOGIC);
	end component;
	
	component And5Gate is
    Port ( InVec : in  STD_LOGIC_VECTOR (4 downto 0);
           Out0 : out  STD_LOGIC);
	end component;
	
	signal Ponce : STD_LOGIC_VECTOR (3 downto 0);
	signal Ptwice : STD_LOGIC_VECTOR (2 downto 0);
	signal Pthree : STD_LOGIC_VECTOR (1 downto 0);
	signal Pfour : STD_LOGIC;

	begin
	
	
	-- All 2-input AND gates
	
	AndULoop : For j in 1 to 3 generate
		AndU1: AndGate Port Map (	In0 => P(j),
											In1 => G(j-1),
											Out0 => Ponce(j)); -- Propagate once
	end generate;
	
	AndU0: AndGate Port Map (	In0 => P(0),
										In1 => Cin,
										Out0 => Ponce(0));
										
	-- All 3-input AND gates
	
	And3ULoop : For j in 2 to 3 generate
		And3U1: And3Gate Port Map (	In0 => P(j),
											In1 => P(j-1),
											In2 => G(j-2),
											Out0 => Ptwice(j-1));
	end generate;
	
	And3U0: And3Gate Port Map (	In0 => P(1),
											In1 => P(0),
											In2 => Cin,
											Out0 => Ptwice(0));
											
											
	-- All 4-input AND gates
	
	And4U1: And4Gate Port Map (	InVec(0 to 2) => P(1 to 3),
											InVec(3) => G(0),
											Out0 => Pthree(1));
	
	And4U0: And4Gate Port Map (	InVec(0 to 2) => P(0 to 2),
											InVec(3) => Cin,
											Out0 => Pthree(0));
										
	-- 5-input AND gate
	
	And5U: And5Gate Port Map (	InVec(0 to 3) => P,
										InVec(4) => Cin,
										Out0 => Pfour);
										
	-- C_0 calculation
	
	OrU:	OrGate 	Port Map (	In0 => Ponce(0),
										In1 => G(0),
										Out0 => C(0));
										
	-- C_1 calculation
	
	Or3U:	Or3Gate 	Port Map (	In0 => Ponce(1),
										In1 => Ptwice(0),
										In2 => G(1),
										Out0 => C(1));
										
	-- C_2 calculation
	
	Or4U: Or4Gate Port Map (	InVec(0) => Ponce(2),
										InVec(1) => Ptwice(1),
										InVec(2) => Pthree(0),
										InVec(3) => G(2),
										Out0 => C(2));
		
	-- C_3 calculation
	
	Or5U: Or5Gate Port Map (	InVec(0) => Ponce(3),
										InVec(1) => Ptwice(2),
										InVec(2) => Pthree(1),
										InVec(3) => Pfour,
										InVec(4) => G(3),
										Out0 => C(3));			
										


end Structural;

