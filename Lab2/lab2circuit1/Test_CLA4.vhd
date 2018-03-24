--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:48:57 03/12/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab2/lab2circuit1/Test_CLA4.vhd
-- Project Name:  lab2circuit1
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CLA4
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
USE ieee.numeric_std.ALL;
 
ENTITY Test_CLA4 IS
END Test_CLA4;
 
ARCHITECTURE behavior OF Test_CLA4 IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CLA4
    PORT(
         A : IN  std_logic_vector(3 downto 0);
         B : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         S : OUT  std_logic_vector(3 downto 0);
         C_3 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(3 downto 0) := (others => '0');
   signal B : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(3 downto 0);
   signal C_3 : std_logic;

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CLA4 PORT MAP (
          A => A,
          B => B,
          Cin => Cin,
          S => S,
          C_3 => C_3
        );
 

   -- Stimulus process
   stim_proc: process
   begin
      wait for 50 ns;
		for i in 0 to 15 loop -- loop that checks all possible input values
			A <= STD_LOGIC_VECTOR (unsigned(A) + 1);
			for j in 0 to i loop
				B <= STD_LOGIC_VECTOR (unsigned(B) + 1);
				wait for 50 ns;
			end loop;
		end loop;
      wait;
   end process;

END;
