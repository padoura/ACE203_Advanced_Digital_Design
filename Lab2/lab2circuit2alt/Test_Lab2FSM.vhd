--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:43:36 03/02/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab2/lab2circuit2alt/Test_Lab2FSM.vhd
-- Project Name:  lab2circuit2alt
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab2FSM
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
 
ENTITY Test_Lab2FSM IS
END Test_Lab2FSM;
 
ARCHITECTURE behavior OF Test_Lab2FSM IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab2FSM
    PORT(
         InVec : IN  std_logic_vector(2 downto 0);
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         QVec : INOUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal InVec : std_logic_vector(2 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';

	--BiDirs
   signal QVec : std_logic_vector(2 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 50 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab2FSM PORT MAP (
          InVec => InVec,
          Clk => Clk,
          Rst => Rst,
          QVec => QVec
        );

   -- Clock process definitions
   Clk_process :process
   begin
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
      wait for Clk_period*5;
		InVec(0) <= '1';
		wait for Clk_period;
		InVec(0) <= '0';
		InVec(2) <= '1';
		wait for Clk_period*5;
		InVec(2) <= '0';
		InVec(0) <= '1';
		wait for Clk_period;
		InVec(0) <= '0';
		InVec(2) <= '1';
		wait for Clk_period*5;
		Rst		<= '1';
		
		

      -- insert stimulus here 

      wait;
   end process;

END;
