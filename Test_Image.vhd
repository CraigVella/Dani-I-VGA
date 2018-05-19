----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:13:32 02/01/2017 
-- Design Name: 
-- Module Name:    Test_Image - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Test_Image is
    Port ( DISPLAY_EN : in  STD_LOGIC;
           ROW : in  INTEGER;
           COLUMN : in  INTEGER;
           RGB : out  STD_LOGIC_VECTOR (0 to 5));
end Test_Image;

architecture Behavioral of Test_Image is
	--signal RGBmap  : std_logic_vector (5 downto 0) := "000000";
	signal lastROW : INTEGER := 0;
	signal iColumn : INTEGER range 0 to 79 := 0;
	signal iRow    : INTEGER range 0 to 59 := 0;
	signal iColumnPixel : INTEGER range 0 to 7 := 0;
	signal iRowPixel : INTEGER range 0 to 7 := 0;
begin

	test : process (DISPLAY_EN)
	begin
		if DISPLAY_EN = '1' then
		 -- Display is on - Draw based on row - column
		 iColumn <= COLUMN / 8;
		 iRow    <= ROW / 8;
		 iColumnPixel <= COLUMN mod 8;
		 iRowPixel <= ROW mod 8;
		 
		 RGB <= std_logic_vector(to_unsigned(iRow, RGB'length));
		 

		else 
		 RGB <= "000000";
		end if;
	end process;

end Behavioral;

