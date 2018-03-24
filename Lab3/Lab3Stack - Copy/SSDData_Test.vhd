--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:25:10 03/28/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab3/Lab3Stack/SSDData_Test.vhd
-- Project Name:  Lab3Stack
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SSDData
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
 
ENTITY SSDData_Test IS
END SSDData_Test;
 
ARCHITECTURE behavior OF SSDData_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SSDData
    PORT(
         DataIn : IN  std_logic_vector(1 downto 0);
         ControlIn : IN  std_logic_vector(1 downto 0);
         DataOut : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal DataIn : std_logic_vector(1 downto 0) := (others => '0');
   signal ControlIn : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal DataOut : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SSDData PORT MAP (
          DataIn => DataIn,
          ControlIn => ControlIn,
          DataOut => DataOut
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
--		DataIn <= "00";
--		ControlIn <= "00";
      wait for 100 ns;

      wait;
   end process;

END;
