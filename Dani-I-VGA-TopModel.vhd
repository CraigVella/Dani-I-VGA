----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:50:24 02/01/2017 
-- Design Name: 
-- Module Name:    Dani-I-VGA-TopModel - Behavioral 
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

entity Dani_I_VGA_TopModel is
    Port ( CLK        : in  STD_LOGIC;
           HSYNC      : out  STD_LOGIC;
           VSYNC      : out  STD_LOGIC;
			  RGB        : out  STD_LOGIC_VECTOR (0 to 5);
			  CHARRAM_CE : out STD_LOGIC;
			  VGARAM_CE  : out STD_LOGIC;
			  RAM_WR     : out STD_LOGIC;
			  DATA       : inout STD_LOGIC_VECTOR (7 downto 0);
			  ADDR       : out STD_LOGIC_VECTOR (11 downto 0);
			  DEBUG      : out STD_LOGIC;
			  DEBUG2     : out STD_LOGIC
			  );
end Dani_I_VGA_TopModel;

architecture Behavioral of Dani_I_VGA_TopModel is

	COMPONENT pixel_clock
	PORT(
		CLK         : IN std_logic;          
		pixel_clock : OUT std_logic
		);
	END COMPONENT;
	
	COMPONENT vga_controller
	PORT(
		PIXEL_CLOCK  : IN std_logic;
		VGA_EN       : IN std_logic;
		HSYNC        : OUT std_logic;
		VSYNC        : OUT std_logic;
		DISPLAY_EN   : OUT std_logic;
		START_VSYNC  : out  STD_LOGIC;
		ROW          : OUT INTEGER;
		COLUMN       : OUT INTEGER
		);
	END COMPONENT;

	COMPONENT imager
	PORT(
		DISPLAY_EN  : IN std_logic;
		START_VSYNC : IN std_logic;
		HSYNC       : IN std_logic;
		VGA_EN      : OUT std_logic;
		ROW         : IN INTEGER;
		PCLK        : IN std_logic;
		COLUMN      : IN INTEGER;          
		RGB         : OUT std_logic_vector(0 to 5);
		CHARRAM_CE  : out STD_LOGIC;
	   VGARAM_CE   : out STD_LOGIC;
		RAM_WR      : out STD_LOGIC;
	   DATA_OUT    : out STD_LOGIC_VECTOR (7 downto 0);
		DATA_IN     : in STD_LOGIC_VECTOR (7 downto 0);
	   ADDR        : out STD_LOGIC_VECTOR (11 downto 0);
		DEBUG       : out STD_LOGIC;
		DEBUG2      : out STD_LOGIC
		);
	END COMPONENT;
	
	signal s_pixel_clock : std_logic;
	signal s_hsync       : std_logic;
	signal s_vsync       : std_logic;
	signal s_display_en  : std_logic;
	signal s_start_vsync : std_logic;
	signal s_row         : INTEGER;
	signal s_column      : INTEGER;
	signal s_rgb         : std_logic_vector(5 downto 0) := "000000";
	signal s_vga_en      : std_logic := '0';
	signal s_data_out    : std_logic_vector(7 downto 0);
	signal s_data_in     : std_logic_vector(7 downto 0);
	signal s_addr        : std_logic_vector(11 downto 0) := "000000000000";
	signal s_charram_ce  : std_logic := '1';
	signal s_ram_wr      : std_logic := '1';
	signal s_vgaram_ce   : std_logic := '1';
	signal s_debug       : std_logic := '0';
	signal s_debug2      : std_logic := '0';
	
begin

	I_pixel_clock: pixel_clock PORT MAP(
		CLK         => CLK,
		pixel_clock => s_pixel_clock 
	);
	
	I_imager: imager PORT MAP(
		DISPLAY_EN  => s_display_en,
		START_VSYNC => s_start_vsync,
		HSYNC       => s_hsync,
		VGA_EN      => s_vga_en,
		ROW         => s_row,
		PCLK        => s_pixel_clock,
		COLUMN      => s_column,
		RGB         => s_rgb,
		DATA_OUT    => s_data_out,
		DATA_IN     => s_data_in,
		ADDR        => s_addr,
		CHARRAM_CE  => s_charram_ce,
		VGARAM_CE   => s_vgaram_ce,
		RAM_WR      => s_ram_wr,
		DEBUG       => s_debug,
		DEBUG2      => s_debug2
	);
	
	I_vga_controller: vga_controller PORT MAP(
		PIXEL_CLOCK => s_pixel_clock,
		VGA_EN      => s_vga_en,
		HSYNC       => s_hsync,
		VSYNC       => s_vsync,
		DISPLAY_EN  => s_display_en,
		START_VSYNC => s_start_vsync,
		ROW         => s_row,
		COLUMN      => s_column
	);
	
	HSYNC <= s_hsync;
	VSYNC <= s_vsync;
	
	RGB(0 to 5) <= s_rgb;
	
	ADDR <= s_addr;
	CHARRAM_CE <= s_charram_ce;
	VGARAM_CE  <= s_vgaram_ce;
	RAM_WR  <= s_ram_wr;
	
	DATA <= s_data_out WHEN s_ram_wr = '0' ELSE (others => 'Z');
	s_data_in <= DATA;
	
	DEBUG <= s_debug;
	DEBUG2 <= s_debug2;

end Behavioral;

