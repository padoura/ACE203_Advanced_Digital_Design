--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   05:41:06 03/28/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab3/Lab3Stack/And8Gate_Test.vhd
-- Project Name:  Lab3Stack
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: And8Gate
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
 
ENTITY And8Gate_Test IS
END And8Gate_Test;
 
ARCHITECTURE behavior OF And8Gate_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT And8Gate
    PORT(
         InVec : IN  std_logic_vector(7 downto 0);
         Out0 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal InVec : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal Out0 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: And8Gate PORT MAP (
          InVec => InVec,
          Out0 => Out0
        );

   -- Clock process definitions
   <clock>_process :process
   begin
		<clock> <= '0';
		wait for <clock>_period/2;
		<clock> <= '1';
		wait for <clock>_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
