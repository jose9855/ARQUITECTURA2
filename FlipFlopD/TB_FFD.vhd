--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:58:58 03/26/2017
-- Design Name:   
-- Module Name:   F:/GitHub/FlipFlipD/TB_FFD.vhd
-- Project Name:  FlipFlopD
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: FFD_Module
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
 
ENTITY TB_FFD IS
END TB_FFD;
 
ARCHITECTURE behavior OF TB_FFD IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT FFD_Module
    PORT(
         D : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         Qout : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal D : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal Qout : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: FFD_Module PORT MAP (
          D => D,
          clk => clk,
          rst => rst,
          Qout => Qout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
	rst<='0';
	D<='1';
   wait for 20 ns;
	rst<='1';
	D<='1';
   wait for 20 ns;
	rst<='0';
	D <='0';
   wait for 20 ns;
	rst<='1';
	D <='0'; 
	wait for 20 ns;

      wait;
   end process;

END;
