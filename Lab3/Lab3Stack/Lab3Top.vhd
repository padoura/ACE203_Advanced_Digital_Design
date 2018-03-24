----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:55:11 03/28/2017 
-- Design Name: 
-- Module Name:    Lab3Top - Behavioral 
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

entity Lab3Top is
	Port ( Push : in  STD_LOGIC;
			  Pop : in  STD_LOGIC;
			  Mode : in STD_LOGIC;
			  Rst : in  STD_LOGIC;
			  Clk : in  STD_LOGIC;
			  SSD_En : out  STD_LOGIC_VECTOR (3 downto 0);
			  Num_In : in  STD_LOGIC_VECTOR (7 downto 0);
			  Num_Out : out  STD_LOGIC_VECTOR (7 downto 0);
			  DataOut : out  STD_LOGIC_VECTOR (7 downto 0));
end Lab3Top;

architecture Behavioral of Lab3Top is

	component SSDCircuit is
    Port ( DataIn : in  STD_LOGIC_VECTOR (1 downto 0);
           ControlOut : out  STD_LOGIC_VECTOR (3 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (7 downto 0);
			  ModeOut : in STD_LOGIC_VECTOR (1 downto 0);
			  Clk : in STD_LOGIC;
			  Rst : in STD_LOGIC);
	end component;
	
	component StackCircuit is
		 Port ( Push : in  STD_LOGIC;
				  Pop : in  STD_LOGIC;
				  Mode : in STD_LOGIC;
				  Rst : in  STD_LOGIC;
				  Clk : in  STD_LOGIC;
				  Num_In : in  STD_LOGIC_VECTOR (7 downto 0);
				  Num_Out : out  STD_LOGIC_VECTOR (7 downto 0);
				  FSMOut : out STD_LOGIC_VECTOR (1 downto 0);
				  ModeOut : out STD_LOGIC_VECTOR (1 downto 0));
	end component;
	
	signal FSMOut, Mode_Out : STD_LOGIC_VECTOR (1 downto 0);

begin

	SSD : SSDCircuit Port Map(DataIn => FSMOut,
										ControlOut => SSD_En,
										DataOut => DataOut,
										ModeOut => Mode_Out,
										Clk => Clk,
										Rst => Rst);
										
	Stack : StackCircuit Port Map(Push => Push,
											Pop => Pop,
											Mode => Mode,
											Clk => Clk,
											Rst => Rst,
											Num_In => Num_In,
											Num_Out => Num_Out,
											FSMOut => FSMOut,
											ModeOut => Mode_Out);

end Behavioral;

