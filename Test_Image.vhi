
-- VHDL Instantiation Created from source file Test_Image.vhd -- 22:16:20 02/01/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Test_Image
	PORT(
		DISPLAY_EN : IN std_logic;
		ROW : IN std_logic;
		COLUMN : IN std_logic;          
		RGB : OUT std_logic_vector(5 downto 0)
		);
	END COMPONENT;

	Inst_Test_Image: Test_Image PORT MAP(
		DISPLAY_EN => ,
		ROW => ,
		COLUMN => ,
		RGB => 
	);


