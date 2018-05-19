----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:46:14 02/06/2017 
-- Design Name: 
-- Module Name:    vga_commands - Behavioral 
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

entity vga_commands is
    Port ( HSYNC : in  STD_LOGIC;
           ADDR : out  STD_LOGIC_VECTOR (11 downto 0);
           DATA_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           DATA_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
           VGARAM_EN : out  STD_LOGIC;
           CHARRAM_EN : out  STD_LOGIC;
           RAM_WR : out  STD_LOGIC;
           PCLK : in  STD_LOGIC);
end vga_commands;

architecture Behavioral of vga_commands is

begin


end Behavioral;

