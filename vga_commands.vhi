
-- VHDL Instantiation Created from source file vga_commands.vhd -- 00:47:18 02/06/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT vga_commands
	PORT(
		HSYNC : IN std_logic;
		DATA_IN : IN std_logic_vector(7 downto 0);
		PCLK : IN std_logic;          
		ADDR : OUT std_logic_vector(11 downto 0);
		DATA_OUT : OUT std_logic_vector(7 downto 0);
		VGARAM_EN : OUT std_logic;
		VGARAM_WR : OUT std_logic;
		CHARRAM_EN : OUT std_logic;
		CHARRAM_WR : OUT std_logic
		);
	END COMPONENT;

	Inst_vga_commands: vga_commands PORT MAP(
		HSYNC => ,
		ADDR => ,
		DATA_IN => ,
		DATA_OUT => ,
		VGARAM_EN => ,
		VGARAM_WR => ,
		CHARRAM_EN => ,
		CHARRAM_WR => ,
		PCLK => 
	);


