----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:55:27 03/12/2017 
-- Design Name: 
-- Module Name:    Nor3Gate - Structural 
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

entity Nor3Gate is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           In2 : in  STD_LOGIC;
           Out0 : out  STD_LOGIC);
end Nor3Gate;

architecture Structural of Nor3Gate is

	component OrGate is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           Out0 : out  STD_LOGIC);
	end component;
	
	component NorGate is
    Port ( In0 : in  STD_LOGIC;
           In1 : in  STD_LOGIC;
           Out0 : out  STD_LOGIC);
	end component;
	
	signal OrOut :	STD_LOGIC;

	begin
		OrU : OrGate Port Map 	(	In0 => In0,
											In1 => In1,
											Out0 => OrOut);
		NorU : NorGate Port Map ( 	In0 => OrOut,
											In1 => In2,
											Out0 => Out0);


end Structural;

