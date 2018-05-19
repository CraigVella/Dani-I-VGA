
-- VHDL Instantiation Created from source file vga_controller.vhd -- 22:02:37 02/01/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT vga_controller
	PORT(
		PIXEL_CLOCK : IN std_logic;          
		HSYNC : OUT std_logic;
		VSYNC : OUT std_logic;
		DISPLAY_EN : OUT std_logic;
		ROW : OUT std_logic;
		COLUMN : OUT std_logic
		);
	END COMPONENT;

	Inst_vga_controller: vga_controller PORT MAP(
		PIXEL_CLOCK => ,
		HSYNC => ,
		VSYNC => ,
		DISPLAY_EN => ,
		ROW => ,
		COLUMN => 
	);


