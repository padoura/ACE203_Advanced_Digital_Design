----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    04:15:56 03/28/2017 
-- Design Name: 
-- Module Name:    SSDCircuit - Structural 
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

entity SSDData is
    Port ( DataIn : in  STD_LOGIC_VECTOR (1 downto 0);
           ControlIn: in  STD_LOGIC_VECTOR (1 downto 0);
           DataOut : out  STD_LOGIC_VECTOR (7 downto 0));
end SSDData;

architecture Structural of SSDData is
	
	component Decoder2to32 is
    Port ( InState : in  STD_LOGIC_VECTOR (1 downto 0);
           OutVec : out  STD_LOGIC_VECTOR (31 downto 0));
	end component;
	
	component mux32x8 is
    Port ( InVec : in  STD_LOGIC_VECTOR (31 downto 0);
           SelVec : in  STD_LOGIC_VECTOR (1 downto 0);
           OutVec : out  STD_LOGIC_VECTOR (7 downto 0));
	end component;
	
	signal DecOut : STD_LOGIC_VECTOR (31 downto 0);

begin
	
	decoderU : Decoder2to32 port map (InState => DataIn,
												OutVec => DecOut);
												
	muxU : mux32x8 port map (InVec => DecOut,
									SelVec => ControlIn,
									OutVec => DataOut);
	


end Structural;