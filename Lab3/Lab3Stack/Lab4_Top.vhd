--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:12:35 04/24/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab3/Lab3Stack/Lab4_Top.vhd
-- Project Name:  Lab3Stack
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Lab3Top
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
 
ENTITY Lab4_Top IS
END Lab4_Top;
 
ARCHITECTURE behavior OF Lab4_Top IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Lab3Top
    PORT(
         Push : IN  std_logic;
         Pop : IN  std_logic;
         Mode : IN  std_logic;
         Rst : IN  std_logic;
         Clk : IN  std_logic;
         SSD_En : OUT  std_logic_vector(3 downto 0);
         Num_In : IN  std_logic_vector(7 downto 0);
         Num_Out : OUT  std_logic_vector(7 downto 0);
         DataOut : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal Push : std_logic := '0';
   signal Pop : std_logic := '0';
   signal Mode : std_logic := '0';
   signal Rst : std_logic := '0';
   signal Clk : std_logic := '0';
   signal Num_In : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal SSD_En : std_logic_vector(3 downto 0);
   signal Num_Out : std_logic_vector(7 downto 0);
   signal DataOut : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant Clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Lab3Top PORT MAP (
          Push => Push,
          Pop => Pop,
          Mode => Mode,
          Rst => Rst,
          Clk => Clk,
          SSD_En => SSD_En,
          Num_In => Num_In,
          Num_Out => Num_Out,
          DataOut => DataOut
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
      wait for 100 ns;	

      wait for Clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
