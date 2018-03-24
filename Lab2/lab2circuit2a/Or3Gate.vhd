----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    03:49:33 03/01/2017 
-- Design Name: 
-- Module Name:    Or3Gate - Structural 
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

entity Or3Gate is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           In2 : in  STD_LOGIC;
           Out0 : out  STD_LOGIC);
end Or3Gate;

architecture Structural of Or3Gate is

	signal OrU0_Out : STD_LOGIC;

	component OrGate is
		Port	(	IN0 : in STD_LOGIC;
					IN1 : in STD_LOGIC;
					OUT0 : out STD_LOGIC);
	end component;

	begin
		OrU0: OrGate Port Map (	IN0 => In0,
										IN1 => In1,
										OUT0 => OrU0_Out);
										
		OrU1: OrGate Port Map (	IN0 => OrU0_Out,
										IN1 => In2,
										OUT0 => Out0);


end Structural;

