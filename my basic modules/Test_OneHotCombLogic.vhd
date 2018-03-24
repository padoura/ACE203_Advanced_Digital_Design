--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   03:59:24 03/01/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab2/lab2circuit2/Test_DCombLogic.vhd
-- Project Name:  lab2circuit2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DCombLogic
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
 
ENTITY Test_OneHotCombLogic IS
END Test_OneHotCombLogic;
 
ARCHITECTURE behavior OF Test_OneHotCombLogic IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT OneHotCombLogic
    PORT(
         Rst : IN  std_logic;
         Q : IN  std_logic_vector(2 downto 0);
         InVec : IN  std_logic_vector(2 downto 0);
         D : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Rst : std_logic := '0';
   signal Q : std_logic_vector(2 downto 0) := (others => '0');
   signal InVec : std_logic_vector(2 downto 0) := (others => '0');

 	--Outputs
   signal D : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: OneHotCombLogic PORT MAP (
          Rst => Rst,
          Q => Q,
          InVec => InVec,
          D => D
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
		InVec <= O"1";
		Q <= O"1";
		wait for 100 ns;
		Q <= O"2";
		wait for 100 ns;
		Q <= O"4";
		wait for 100 ns;
		InVec <= O"2";
		Q <= O"1";
		wait for 100 ns;
		Q <= O"2";
		wait for 100 ns;
		Q <= O"4";
		wait for 100 ns;
		InVec <= O"4";
		Q <= O"1";
		wait for 100 ns;
		Q <= O"2";
		wait for 100 ns;
		Q <= O"4";
		wait for 100 ns;
		Q <= O"0";
		wait for 100 ns;
		Rst <= '1';
		
--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
