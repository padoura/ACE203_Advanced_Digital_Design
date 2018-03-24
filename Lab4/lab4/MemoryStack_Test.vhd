--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   04:38:59 03/25/2017
-- Design Name:   
-- Module Name:   D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab3/Lab3Stack/MemoryStack_Test.vhd
-- Project Name:  Lab3Stack
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MemoryStack
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
 
ENTITY MemoryStack_Test IS
END MemoryStack_Test;
 
ARCHITECTURE behavior OF MemoryStack_Test IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MemoryStack
    PORT(
         clka : IN  std_logic;
         wea : IN  std_logic_vector(0 downto 0);
         addra : IN  std_logic_vector(4 downto 0);
         dina : IN  std_logic_vector(7 downto 0);
         douta : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clka : std_logic := '0';
   signal wea : std_logic_vector(0 downto 0) := (others => '0');
   signal addra : std_logic_vector(4 downto 0) := (others => '0');
   signal dina : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal douta : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant clka_period : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MemoryStack PORT MAP (
          clka => clka,
          wea => wea,
          addra => addra,
          dina => dina,
          douta => douta
        );

   -- Clock process definitions
   clka_process :process
   begin
		clka <= '0';
		wait for clka_period/2;
		clka <= '1';
		wait for clka_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
      wait for 1 ns;
		for i in 0 to 31 loop --writing to all the memory locations of the BRAM. set wea "1" for this.
			wea <= "1"; --write mode
			wait for clka_period;
			addra <= std_logic_vector( unsigned(addra) + 1 ); --increase address
			dina <= std_logic_vector( unsigned(dina) + 1 ); --data-in
		end loop;
		addra <= "00000"; --reset address value for reading from mem loc "0"
		--reading all the 256 memory locations of BRAM
		for i in 0 to 31 loop
			wea <= "0"; -- read mode
			wait for clka_period;
			addra <= std_logic_vector( unsigned(addra) + 1 ); --read data from each address
		end loop;

      wait;
   end process;

END;
