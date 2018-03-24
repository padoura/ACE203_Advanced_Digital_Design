--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:01:38 03/25/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab3/Lab3Stack/EqualComp5_Test.vhd
-- Project Name:  Lab3Stack
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: EqualComp5
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
 
ENTITY EqualComp5_Test IS
END EqualComp5_Test;
 
ARCHITECTURE behavior OF EqualComp5_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT EqualComp5
    PORT(
         A : IN  std_logic_vector(4 downto 0);
         B : IN  std_logic_vector(4 downto 0);
         AeqB : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(4 downto 0) := (others => '0');
   signal B : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal AeqB : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: EqualComp5 PORT MAP (
          A => A,
          B => B,
          AeqB => AeqB
        );
 

   -- Stimulus process
   stim_proc: process
   begin		
		wait for 100 ns;
		B(1) <= '1';
		wait for 100 ns;
		A(1) <= '1';
		wait for 100 ns;
		A(2) <= '1';
		wait for 100 ns;
		B(2) <= '1';

      wait;
   end process;

END;
