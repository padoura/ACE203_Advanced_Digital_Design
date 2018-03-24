--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:16:07 02/25/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab1/lab1circuit1/TestGates.vhd
-- Project Name:  lab1circuit1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab1Circuit1
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
 
ENTITY TestGates IS
END TestGates;
 
ARCHITECTURE behavior OF TestGates IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab1Circuit1
    PORT(
         In0 : IN  std_logic;
         In1 : IN  std_logic;
         Btn0 : IN  std_logic;
         Btn1 : IN  std_logic;
         Btn2 : IN  std_logic;
         Btn3 : IN  std_logic;
         Led : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal In0 : std_logic := '0';
   signal In1 : std_logic := '0';
   signal Btn0 : std_logic := '0';
   signal Btn1 : std_logic := '0';
   signal Btn2 : std_logic := '0';
   signal Btn3 : std_logic := '0';

 	--Outputs
   signal Led : std_logic_vector(7 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
--   constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab1Circuit1 PORT MAP (
          In0 => In0,
          In1 => In1,
          Btn0 => Btn0,
          Btn1 => Btn1,
          Btn2 => Btn2,
          Btn3 => Btn3,
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
		In0 <= '1';
		
		wait for 100 ns;
		In1 <= '1';
		
		wait for 100 ns;
		In0 <= '0';
		
		wait for 100 ns;
		Btn0 <= '1';
		Btn1 <= '1';
		Btn2 <= '1';
		Btn3 <= '1';
		
		wait for 100 ns;
		In0 <= '1';
		
		wait for 100 ns;
		In1 <= '0';
		
		wait for 100 ns;
		In0 <= '0';

--      wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
