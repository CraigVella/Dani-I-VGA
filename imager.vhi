
-- VHDL Instantiation Created from source file imager.vhd -- 08:39:29 02/03/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT imager
	PORT(
		HPREFETCH_EN : IN std_logic;
		DISPLAY_EN : IN std_logic;
		ROW : IN std_logic;
		PCLK : IN std_logic;
		COLUMN : IN std_logic;          
		RGB : OUT std_logic_vector(0 to 6)
		);
	END COMPONENT;

	Inst_imager: imager PORT MAP(
		HPREFETCH_EN => ,
		DISPLAY_EN => ,
		ROW => ,
		PCLK => ,
		COLUMN => ,
		RGB => 
	);


