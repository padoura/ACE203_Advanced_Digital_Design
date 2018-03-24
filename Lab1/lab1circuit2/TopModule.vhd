----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:51:39 03/02/2017 
-- Design Name: 
-- Module Name:    TopModule - Structural 
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

entity TopModule is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           In2 : in  STD_LOGIC;
           Led : out  STD_LOGIC_VECTOR (1 downto 0));
end TopModule;

architecture Structural of TopModule is
	component FullAdder is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           In2 : in  STD_LOGIC;
           S 	: out STD_LOGIC;
			  C	: out STD_LOGIC);
	end component;

	begin
		U0 : FullAdder			Port Map	(	In0 => In0,
													In1 => In1,
													In2 => In2,
													S => Led(0),
													C => Led(1));


end Structural;

