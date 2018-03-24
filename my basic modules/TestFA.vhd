--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:05:44 02/24/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab1/lab1circuit2alt/TestFA.vhd
-- Project Name:  lab1circuit2alt
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FullAdder
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
 
ENTITY TestFA IS
END TestFA;
 
ARCHITECTURE behavior OF TestFA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FullAdder
    PORT(
         In0 : IN  std_logic;
         In1 : IN  std_logic;
         In2 : IN  std_logic;
         Led : OUT  std_logic_vector(0 to 1)
        );
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic := '0';
   signal In1 : std_logic := '0';
   signal In2 : std_logic := '0';

 	--Outputs
   signal Led : std_logic_vector(0 to 1);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FullAdder PORT MAP (
          In0 => In0,
          In1 => In1,
          In2 => In2,
          Led => Led
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
		In0 <= '0';
		In1 <= '0';
		In2 <= '0';
		
      wait for 100 ns;
		In0 <= '1';
		In1 <= '0';
		In2 <= '0';
		
      wait for 100 ns;
		In0 <= '0';
		In1 <= '1';
		In2 <= '0';
		
      wait for 100 ns;
		In0 <= '1';
		In1 <= '1';
		In2 <= '0';
		
      wait for 100 ns;
		In0 <= '0';
		In1 <= '0';
		In2 <= '1';
		
      wait for 100 ns;
		In0 <= '1';
		In1 <= '0';
		In2 <= '1';
		
      wait for 100 ns;
		In0 <= '0';
		In1 <= '1';
		In2 <= '1';
		
      wait for 100 ns;
		In0 <= '1';
		In1 <= '1';
		In2 <= '1';
		
		
		

--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
