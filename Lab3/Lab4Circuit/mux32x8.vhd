----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:26:27 03/25/2017 
-- Design Name: 
-- Module Name:    mux16x1 - Behavioral 
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

entity mux32x8 is
    Port ( InVec : in  STD_LOGIC_VECTOR (31 downto 0);
           SelVec : in  STD_LOGIC_VECTOR (1 downto 0);
           OutVec : out  STD_LOGIC_VECTOR (7 downto 0));
end mux32x8;

architecture Structural of mux32x8 is


	component mux4x1  is
		Port (	InVec : in  STD_LOGIC_VECTOR (3 downto 0);
					SelVec : in  STD_LOGIC_VECTOR (1 downto 0);
					Out0 : out  STD_LOGIC);
	end component;

	begin


		Loop1 : For i in 0 to 7 generate		
			mux0 : mux4x1 				Port Map (		InVec(0) => InVec(i),
																InVec(1) => InVec(i+8),
																InVec(2) => InVec(i+16),
																InVec(3) => InVec(i+24),
																SelVec => SelVec,
																Out0 => OutVec(i));
		end generate;

end Structural;


