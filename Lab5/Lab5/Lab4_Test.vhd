--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   19:22:42 04/24/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab3/Lab3Stack/Lab4_Test.vhd
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
USE ieee.numeric_std.ALL;
 
ENTITY Lab4_Test IS
END Lab4_Test;
 
ARCHITECTURE behavior OF Lab4_Test IS 
 
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
	signal stopClk : boolean;			-- flag for starting/stopping clock generator	
 
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
       -- hold reset state for 100 ns.
		Rst <= '1';
		wait for 21 ns;
		Rst <= '0';
		wait for 21 ns;
--		Push <= '1';
--		Num_In <= "00000001";
--      wait for Clk_period*4;
--		Push <= '0';
--		Pop <=  '1';
--		wait for Clk_period*4;
--		Pop <= '0';
--		Num_In <= "00000000";
--		
--		for i in 0 to 32 loop -- test for OVF
--			Num_In <= std_logic_vector( unsigned(Num_In) + 1); --increase address
--			Push <= '1';
--			wait for clk_period*2;
--			Push <= '0';
--			wait for clk_period*2;
--		end loop;
--		
--		Rst <= '1';
--		wait for clk_period*2;
--		Rst <= '0';
--		wait for clk_period*2;
--		Num_In <= "00000000";
--		
--		-- Add overflow after loop
--		for i in 0 to 30 loop --pushing to all the memory locations of the BRAM
--			Num_In <= std_logic_vector( unsigned(Num_In) + 1); --increase address
--			Push <= '1';
--			wait for clk_period*2;
--			Push <= '0';
--			wait for clk_period*2;
--		end loop;
--		
--		Rst <= '1';
--		wait for clk_period*5;
--		Rst <= '0';
--		wait for clk_period*5;
--		




		-- Mode 1 Add test
		Num_In <= "00000001";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		wait for clk_period*5;
		Num_In <= "00000010";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		mode <= '1';
--		wait for clk_period*5;
--		mode <= '0';
--		Push <= '1';
--		wait for clk_period*5;
--		Push <= '0';



		-- Mode 2 Swap test
--		wait for clk_period*5;
--		mode <= '1';
		wait for clk_period*5;
		mode <= '0';
		wait for clk_period*5;
		mode <= '1';
		wait for clk_period*5;
		mode <= '0';
		Pop <= '1';
		wait for clk_period*5;
		Pop <= '0';
		


		-- Test 3xBtn2
		wait for clk_period*5;
		mode <= '1';
		wait for clk_period*5;
		mode <= '0';
		wait for clk_period*5;
		mode <= '1';
		wait for clk_period*5;
		mode <= '0';
		wait for clk_period*5;
		mode <= '1';
		wait for clk_period*5;
		mode <= '0';
		
		-- Mode 2 Unary test
		wait for clk_period*5;
		mode <= '1';
		wait for clk_period*5;
		mode <= '0';
		wait for clk_period*5;
		mode <= '1';
		wait for clk_period*5;
		mode <= '0';
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		
--		-- Test 3xBtn2
--		wait for clk_period*5;
--		mode <= '1';
--		wait for clk_period*5;
--		mode <= '0';
--		wait for clk_period*5;
--		mode <= '1';
--		wait for clk_period*5;
--		mode <= '0';
--		wait for clk_period*5;
--		mode <= '1';
--		wait for clk_period*5;
--		mode <= '0';
		
		
--		-- Mode 1 Sub test
--		wait for clk_period*5;
--		mode <= '1';
--		wait for clk_period*5;
--		mode <= '0';
--		Pop <= '1';
--		wait for clk_period*5;
--		Pop <= '0';
--		wait for clk_period*5;
--		Pop <= '1';
--		wait for clk_period*5;
		
		
		-- Test (-2) - (3) = -5
		wait for clk_period*5;
		Rst <= '1';
		wait for clk_period*5;
		Rst <= '0';
		wait for clk_period*5;
		Num_In <= "00000011";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		wait for clk_period*5;
		Num_In <= "11111110";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		Mode <= '1';
		wait for clk_period*5;
		Mode <= '0';
		Pop <= '1';
		wait for clk_period*5;
		Pop <= '0';
		wait for clk_period*10;
		
		-- Test (-127) - (126) = OVF
		Rst <= '1';
		wait for clk_period*5;
		Rst <= '0';
		wait for clk_period*5;
		Num_In <= "01111110";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		wait for clk_period*5;
		Num_In <= "10000001";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		Mode <= '1';
		wait for clk_period*5;
		Mode <= '0';
		Pop <= '1';
		wait for clk_period*5;
		Pop <= '0';
		wait for clk_period*10;
		
		-- Test (-1) + (4) = 3
		Rst <= '1';
		wait for clk_period*5;
		Rst <= '0';
		wait for clk_period*5;
		Num_In <= "11111111";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		wait for clk_period*5;
		Num_In <= "00000100";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		Mode <= '1';
		wait for clk_period*5;
		Mode <= '0';
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		wait for clk_period*10;
		
		-- Test (125) + (126) = OVF
		Rst <= '1';
		wait for clk_period*5;
		Rst <= '0';
		wait for clk_period*5;
		Num_In <= "01111110";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		wait for clk_period*5;
		Num_In <= "01111101";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		Mode <= '1';
		wait for clk_period*5;
		Mode <= '0';
		Push <= '1';		
		wait for clk_period*5;
		Push <= '0';
		wait for clk_period*5;
		
		
		-- Test (-1) + (127) = 126
		Rst <= '1';
		wait for clk_period*5;
		Rst <= '0';
		wait for clk_period*5;
		Num_In <= "01111111";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		wait for clk_period*5;
		Num_In <= "11111111";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		Mode <= '1';
		wait for clk_period*5;
		Mode <= '0';
		Push <= '1';		
		wait for clk_period*5;
		Push <= '0';
		wait for clk_period*10;

		-- Test (-2) - (127) = OVF
		Rst <= '1';
		wait for clk_period*5;
		Rst <= '0';
		wait for clk_period*5;
		Num_In <= "01111111";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		wait for clk_period*5;
		Num_In <= "11111110";
		Push <= '1';
		wait for clk_period*5;
		Push <= '0';
		Mode <= '1';
		wait for clk_period*5;
		Mode <= '0';
		Pop <= '1';		
		wait for clk_period*5;
		Pop <= '0';
		wait for clk_period*20;
		
		stopClk <= true;

      -- insert stimulus here

      wait;
   end process;

END;
