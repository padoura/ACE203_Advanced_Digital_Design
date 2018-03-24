--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   07:25:42 03/25/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab3/Lab3Stack/Counter5bit_Test.vhd
-- Project Name:  Lab3Stack
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Counter5bit
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
 
ENTITY Counter5bit_Test IS
END Counter5bit_Test;
 
ARCHITECTURE behavior OF Counter5bit_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Counter5bit
    PORT(
         Clk : IN  std_logic;
         Q : OUT  std_logic_vector(4 downto 0);
         En : IN  std_logic;
         UpDn : IN  std_logic;
         InVec : IN  std_logic_vector(4 downto 0);
         LD : IN  std_logic;
         RC : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal En : std_logic := '0';
   signal UpDn : std_logic := '0';
   signal InVec : std_logic_vector(4 downto 0) := (others => '0');
   signal LD : std_logic := '1';

 	--Outputs
   signal Q : std_logic_vector(4 downto 0);
   signal RC : std_logic;

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Counter5bit PORT MAP (
          Clk => Clk,
          Q => Q,
          En => En,
          UpDn => UpDn,
          InVec => InVec,
          LD => LD,
          RC => RC
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
		wait for 1 ns;
		LD <= '0';
      wait for Clk_period;
		LD <= '1';
		En	<=	'1';
		wait for Clk_period*32;
		UpDn <= '1';
		wait for Clk_period*32;
		En	<=	'0';
		LD <= '0';

      wait;
   end process;

END;
