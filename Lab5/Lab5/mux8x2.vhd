----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:17:22 05/15/2017 
-- Design Name: 
-- Module Name:    mux8x2 - Structural 
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

entity mux8x2 is
	Port ( InVec : in  STD_LOGIC_VECTOR (7 downto 0);
           OutVec : out  STD_LOGIC_VECTOR (1 downto 0);
           SelVec : in  STD_LOGIC_VECTOR (1 downto 0));
end mux8x2;

architecture Structural of mux8x2 is

	component mux4x1 is
    Port ( InVec : in  STD_LOGIC_VECTOR (3 downto 0);
           Out0 : out  STD_LOGIC;
           SelVec : in  STD_LOGIC_VECTOR (1 downto 0));
	end component;

begin

	MuxU0:		mux4x1 Port Map (InVec(3) => InVec(3),
										InVec(2) => InVec(2),
										InVec(1) => InVec(1),
										InVec(0) => InVec(0),
										SelVec => SelVec,
										Out0 => OutVec(0));
										
	MuxU1:		mux4x1 Port Map (InVec(3) => InVec(7),
										InVec(2) => InVec(6),
										InVec(1) => InVec(5),
										InVec(0) => InVec(4),
										SelVec => SelVec,
										Out0 => OutVec(1));


end Structural;

