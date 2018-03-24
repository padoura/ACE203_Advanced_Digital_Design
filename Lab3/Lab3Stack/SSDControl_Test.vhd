--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   06:15:24 03/28/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab3/Lab3Stack/SSDControl_Test.vhd
-- Project Name:  Lab3Stack
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SSDControl
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
 
ENTITY SSDControl_Test IS
END SSDControl_Test;
 
ARCHITECTURE behavior OF SSDControl_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SSDControl
    PORT(
         Clk : IN  std_logic;
         Rst : IN  std_logic;
         StateOut : OUT  std_logic_vector(1 downto 0);
         ControlOut : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Clk : std_logic := '0';
   signal Rst : std_logic := '0';

 	--Outputs
   signal StateOut : std_logic_vector(1 downto 0);
   signal ControlOut : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 20 ns;
	signal stopClk : boolean;			-- flag for starting/stopping clock generator
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SSDControl PORT MAP (
          Clk => Clk,
          Rst => Rst,
          StateOut => StateOut,
          ControlOut => ControlOut
        );

   -- Clock process definitions
   Clk_process :process
   begin
		while not stopClk loop
		Clk <= '0';
		wait for Clk_period/2;
		Clk <= '1';
		wait for Clk_period/2;
		end loop;
		wait;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin

      wait for 10 ms;
		
		stopClk <= true;

      -- insert stimulus here 

      wait;
   end process;

END;
