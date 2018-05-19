----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:05:35 02/01/2017 
-- Design Name: 
-- Module Name:    pixel_clock - Behavioral 
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

entity pixel_clock is
    Port ( CLK         : in  STD_LOGIC;
           pixel_clock : out  STD_LOGIC);
end pixel_clock;

architecture Behavioral of pixel_clock is

	signal pulse : std_logic := '0';

begin

	pixel_clock_p : process (CLK) 
	begin
		if CLK'event and CLK = '1' then
			pulse <= not pulse;
		end if;
	end process;

	pixel_clock <= pulse;

end Behavioral;

