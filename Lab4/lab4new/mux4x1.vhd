----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:05:43 03/25/2017 
-- Design Name: 
-- Module Name:    MUX4x1 - Structural 
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

entity mux4x1 is
    Port ( InVec : in  STD_LOGIC_VECTOR (3 downto 0);
           Out0 : out  STD_LOGIC;
           SelVec : in  STD_LOGIC_VECTOR (1 downto 0));
end mux4x1;

architecture Structural of mux4x1 is

component mux is
		Port (	In0 : in STD_LOGIC;
					In1 : in STD_LOGIC;
					SEL : in STD_LOGIC;
					Out0 : out STD_LOGIC);
	end component;
	
	signal mux_Out : STD_LOGIC_VECTOR (1 downto 0);

	begin

			mux0 : 	mux						Port Map (	In0 => InVec(0),
																In1 => InVec(1),
																SEL => SelVec(0),
																Out0 => mux_Out(0));
																
			mux1 : 	mux						Port Map (	In0 => InVec(2),
																In1 => InVec(3),
																SEL => SelVec(0),
																Out0 => mux_Out(1));

		
			mux2 :	mux						Port Map (	In0 => mux_Out(0),
																In1 => mux_Out(1),
																SEL => SelVec(1),
																Out0 => Out0);


end Structural;

