----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:56:34 03/26/2017 
-- Design Name: 
-- Module Name:    FFD_Module - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity FFD_Module is
    Port ( D : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           Qout : out  STD_LOGIC);
end FFD_Module;

architecture Behavioral of FFD_Module is

begin
-- envio los parametros de entrada 
process(clk,rst,D)

begin

   if (rst='1') then
	 -- si rst=1 entonces hago Qout=0
      Qout<='0';
	else
	-- de lo contrario valido si el reloj esta en subida
		if rising_edge(clk) then
			Qout<=D;
		-- si el reloj esta arriba hago Qout=valor entrada D
   
		end if;
	end if;
end process;

end Behavioral;
