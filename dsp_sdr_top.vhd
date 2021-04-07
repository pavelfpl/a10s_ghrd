--------------------------
-- dsp_sdr_top VHDL TOP --
--------------------------
-- Pavel Fiala 2018 		-- 
--------------------------
-- 1] FIFO TEST
--------------------------

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

------------------------
-- dsp_sdr_top entity --
------------------------
entity dsp_sdr_top is
    
    generic(
			FIFO_DATA_LENGTH_IN: natural:=32;     	-- fixed [four bytes] ...
			FIFO_DATA_LENGTH_OUT: natural:=32;     -- fixed [four bytes] ...
			FIFO_DATA_DSP: natural:=32					-- fixed [two bytes] ...
    );
    
    port(
		clk,reset: in std_logic;						-- clk, reset [clk --> system clock] ... 
		
		-------------------------------
		-- hps_to_fpga_fifo / mSGDMA --
		-------------------------------	
		fifo_data_out: in std_logic_vector(FIFO_DATA_LENGTH_IN-1 downto 0);								-- fifo_data_out [hps_to_fpga_fifo] --> Data from Avalon DC FIFO / mSGDMA ... 
		fifo_valid_out: in std_logic;																				   -- fifo_valid_out - input strobe
		fifo_ready_out: out std_logic;																				-- fifo_ready_out - output strobe
		
		-------------------------------
		-- fpga_to_hps_fifo / mSGDMA --
		-------------------------------
		fifo_data_in: out std_logic_vector(FIFO_DATA_LENGTH_OUT-1 downto 0);								-- fifo_data_in [fpga_to_hps_fifo] --> Data to Avalon FIFO ...
		fifo_valid_in: out std_logic;																					-- fifo_valid_in - output strobe
		fifo_ready_in: in std_logic																					-- fifo_ready_in - input strobe
    );  
    
end entity;

-----------------------------------
-- arch_dsp_sdr_top architecture --
-----------------------------------
architecture arch_dsp_sdr_top of dsp_sdr_top is
	 -------------------
	 ----  SIGNALS -----
	 -------------------
	 SIGNAL fifo_ready_out_sig: std_logic:='0';
	 SIGNAL fifo_valid_in_sig: std_logic:='0';
	 SIGNAL fifo_valid_internal: std_logic:='0';
	 
	 SIGNAL fifo_data_sig: std_logic_vector(FIFO_DATA_DSP-1 downto 0):=(others=>'0');   			
begin

------------------------------------
-- FIFO_LOOPBACK_CONTROL process ...
------------------------------------

FIFO_LOOPBACK_CONTROL: process (clk,reset)
  -- No variables --
  ------------------	
  begin
  if reset='0' then 
	 ----------------------
    -- hold reset state --
	 ----------------------
	 fifo_ready_out_sig <='0';
	 fifo_valid_in_sig <='0';
  elsif (clk'event and clk='1') then 
		-- INPUT DATA valid -- 
		----------------------
		if (fifo_valid_out='1') then 
			 fifo_valid_internal<='1';
		else
			 fifo_valid_internal<='0';
		end if;
		
		-- FIFO ready in / out -- 
		-------------------------
		if (fifo_ready_in='1') then 
			 fifo_ready_out_sig<='1';
		else
			 fifo_ready_out_sig<='0';
		end if;

		-- OUTPUT DATA valid -- 
		-----------------------
		if (fifo_valid_internal='1') then
			 fifo_valid_in_sig<='1';
		else
			 fifo_valid_in_sig<='0';
		end if;
   
	  fifo_data_sig<=fifo_data_out;	
	  fifo_data_in<=fifo_data_sig; 
	end if;
end process FIFO_LOOPBACK_CONTROL;	

fifo_ready_out<=fifo_ready_out_sig;
fifo_valid_in<=fifo_valid_in_sig;

end arch_dsp_sdr_top;	