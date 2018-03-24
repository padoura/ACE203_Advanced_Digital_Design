--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   13:15:28 05/03/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab5/Lab5/CLAddSub8_Test.vhd
-- Project Name:  Lab5
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: CLAddSub8
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
 
ENTITY CLAddSub8_Test IS
END CLAddSub8_Test;
 
ARCHITECTURE behavior OF CLAddSub8_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT CLAddSub8
    PORT(
         A : IN  std_logic_vector(7 downto 0);
         B : IN  std_logic_vector(7 downto 0);
         S : OUT  std_logic_vector(7 downto 0);
         Ovf : OUT  std_logic;
         Operator : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal A : std_logic_vector(7 downto 0) := (others => '0');
   signal B : std_logic_vector(7 downto 0) := (others => '0');
   signal Operator : std_logic := '0';

 	--Outputs
   signal S : std_logic_vector(7 downto 0);
   signal Ovf : std_logic;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: CLAddSub8 PORT MAP (
          A => A,
          B => B,
          S => S,
          Ovf => Ovf,
          Operator => Operator
        );

    -- Stimulus process
   stim_proc: process
   begin
		-- Test additions of all positive integers
--      wait for 50 ns;
--		for i in 0 to 127 loop -- loop that checks all possible input values
--			for j in 0 to i loop
--				if (j = 0) 
--					then B <= "00000000";
--					else B <= STD_LOGIC_VECTOR (unsigned(B) + 1); 
--				end if;
--				wait for 50 ns;
--			end loop;
--			A <= STD_LOGIC_VECTOR (unsigned(A) + 1);
--		end loop;
		
		
			-- Add Positives, Ovf
			A <= "01111111";
			B <= "00000001";
			wait for 50 ns;
			-- Add Negatives, Ovf
			A <= "10000000";
			B <= "11111111";
			wait for 50 ns;
			-- Sub Negative (same as previous case), Ovf 
			A <= "10000000";
			B <= "00000001";
			Operator <= '1';
 			wait for 50 ns;
			-- Sub Positive (same as first case), Ovf 
			A <= "01111111";
			B <= "11111111";
			Operator <= '1';
 			wait for 50 ns;
			
			
			
		
		
      wait;
   end process;
	


END;
