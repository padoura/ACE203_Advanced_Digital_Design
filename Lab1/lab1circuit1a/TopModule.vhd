----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:19:19 03/02/2017 
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
           Btn0 : in  STD_LOGIC;
           Btn1 : in  STD_LOGIC;
           Btn2 : in  STD_LOGIC;
           Btn3 : in  STD_LOGIC;
           Led : out  STD_LOGIC_VECTOR (7 downto 0));
end TopModule;

architecture Structural of TopModule is

	component Lab1Circuit1 is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           Btn0 : in  STD_LOGIC;
           Btn1 : in  STD_LOGIC;
           Btn2 : in  STD_LOGIC;
           Btn3 : in  STD_LOGIC;
           Led : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;

	begin
		U0 : Lab1Circuit1				Port Map (	In0 => In0,
															In1 => In1,
															Btn0 => Btn0,
															Btn1 => Btn1,
															Btn2 => Btn2,
															Btn3 => Btn3,
															Led => Led);

end Structural;

