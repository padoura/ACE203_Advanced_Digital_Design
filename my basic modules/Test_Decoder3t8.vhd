--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:23:14 03/01/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab2/lab2circuit2/Test_Decoder3t8.vhd
-- Project Name:  lab2circuit2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Decoder3t8
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Test_Decoder3t8 IS
END Test_Decoder3t8;
 
ARCHITECTURE behavior OF Test_Decoder3t8 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Decoder3t8
    PORT(
         InVec : IN  std_logic_vector(2 downto 0);
         OutVec : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal InVec : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal OutVec : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Decoder3t8 PORT MAP (
          InVec => InVec,
          OutVec => OutVec
        );

--   -- Clock process definitions
--   <clock>_process :process
--   begin
--		<clock> <= '0';
--		wait for <clock>_period/2;
--		<clock> <= '1';
--		wait for <clock>_period/2;
--   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;
		InVec(0) <= '1'; -- In = 001
		wait for 100 ns;
		InVec(1) <= '1'; -- In = 011
		wait for 100 ns;
		InVec(0) <= '0'; -- In = 010
		wait for 100 ns;
		InVec(2) <= '1'; -- In = 110
		wait for 100 ns;
		InVec(1) <= '0'; -- In = 100
		wait for 100 ns;
		InVec(0) <= '1'; -- In = 101
		wait for 100 ns;
		InVec(1) <= '1'; -- In = 111
		

--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
