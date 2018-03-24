-- testbench for testing singlepulsegen
-- created by Kyprianos Papadimitriou
-- for the course Advanced Logic Design
-- School of ECE, TU Crete
-- March 4, 2016

library IEEE;
use IEEE.std_logic_1164.all;

entity testbench is
-- empty
end testbench; 

architecture tb of testbench is

-- DUT component
component singlepulsegen is
port(	clk		: in std_logic;
   		rst 	: in std_logic;
        input 	: in std_logic;
        output : out std_logic
        );
end component;

signal clk_top, rst_top, in_top, out_top: std_logic;	
constant clk_period : time := 10 ns;					-- set the clock period
signal stopClk : boolean;								-- flag for starting/stopping clock generator				

begin						-- begin architecture
  
-- Connect DUT
  	DUT: singlepulsegen port map	(	clk 	=>	clk_top, 
  										rst		=>	rst_top, 
                            			input	=>	in_top,
                            			output	=>	out_top
									);

-- clock with 50% duty cycle is generated here
	clk_process: process
   	begin
        while not stopClk loop	
        clk_top <= '0';
        wait for clk_period/2;	--for 50% of the period, signal is '0'
        clk_top <= '1';
        wait for clk_period/2;	--for 50% of the period, signal is '1'
        end loop;
        wait;
   	end process;                      
    
      -- Stimulus process
  	stim_proc: process
   	begin
		rst_top <= '1';
		wait for 11 ns;
		rst_top <= '0';
		InVec(0) <= '1';		-- push button 1 for 1 cycle
		wait for Clk_period*2;
		InVec(0) <= '0';	
		wait for Clk_period*2;
		InVec(2) <= '1';
		wait for Clk_period*2;
		InVec(2) <= '0';
		wait for Clk_period*2;
		InVec(0) <= '1';
		wait for Clk_period*2;
		InVec(0) <= '0';
		wait for Clk_period*2;
		InVec(1) <= '1';
		wait for Clk_period*2;
		InVec(1) <= '0';
		wait for Clk_period*2;
		Rst_top		<= '1';

      wait;
	end process stim_proc;  
                                                           
end tb;						-- end architecture

