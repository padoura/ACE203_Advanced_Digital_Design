--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:56:10 05/03/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab5/Lab5/AdderSubstractor_Test.vhd
-- Project Name:  Lab5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: AdderSubtractor
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
 
ENTITY AdderSubstractor_Test IS
END AdderSubstractor_Test;
 
ARCHITECTURE behavior OF AdderSubstractor_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT AdderSubtractor
    PORT(
         InVec : IN  std_logic_vector(1 downto 0);
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         Ovf : OUT  std_logic;
         LD : OUT  std_logic;
         S : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal InVec : std_logic_vector(1 downto 0) := (others => '0');
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';

 	--Outputs
   signal Ovf : std_logic;
   signal LD : std_logic;
   signal S : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: AdderSubtractor PORT MAP (
          InVec => InVec,
          A => A,
          B => B,
          Clk => Clk,
          Rst => Rst,
          Ovf => Ovf,
          LD => LD,
          S => S
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
      -- hold reset state for 100 ns.
		InVec(1) <= '1';
      wait for 100 ns;	
		A <= "10000000";
		B <= "00000001";
      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
