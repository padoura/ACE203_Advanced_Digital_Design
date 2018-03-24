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
    		rst_top <='0';	-- reset is low
        	in_top <='0';	-- assume that input is low     
		wait for 60 ns;
        
        	rst_top <='1';	-- we do hard reset on the circuit
        	in_top <='1';	-- ...and we press the button!
		wait for 40 ns;
        
        	rst_top <='0';	-- we release the hard reset
		wait for 50 ns;	
        
        	in_top <= '0';	-- we release the button
		wait for 40 ns;
        
        	in_top <= '1';	-- we press the button again
		wait for 8 ns;
        
        	in_top <= '0';	-- SPIKE for 3ns (button is still pressed)
		wait for 3 ns;
        
        	in_top <= '1';	-- SPIKE for 2ns (button is still pressed)	
		wait for 2 ns;
        
        	in_top <= '0';	-- SPIKE for 5ns (button is still pressed)
		wait for 5 ns;
        
        	in_top <= '1';  -- output of button is '1' for several clock cycles
		wait for clk_period*10;
        
        	in_top <= '0';	-- we release the button
		wait for clk_period*20;
        
        	in_top <= '1';	-- output of button is '1' for several clock cycles
		wait for clk_period*30;
		
        	in_top <= '0';	-- we release the button
		wait for clk_period*2;

			stopClk <= true;-- flag to stop clock generator
      	wait;          
	end process stim_proc;  
                                                           
end tb;						-- end architecture

