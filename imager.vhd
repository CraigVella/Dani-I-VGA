----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:34:39 02/03/2017 
-- Design Name: 
-- Module Name:    imager - Behavioral 
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
use ieee.std_logic_unsigned.all; 

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity imager is
    Port ( DISPLAY_EN  : in  STD_LOGIC;
			  START_VSYNC : in  STD_LOGIC;
			  HSYNC       : in  STD_LOGIC;
			  VGA_EN      : out STD_LOGIC;
           ROW         : in  INTEGER;
			  PCLK        : in  STD_LOGIC;
           COLUMN      : in  INTEGER;
           RGB         : out STD_LOGIC_VECTOR (0 to 5);
			  CHARRAM_CE  : out STD_LOGIC := '1';
			  VGARAM_CE   : out STD_LOGIC := '1';
			  RAM_WR      : out STD_LOGIC := '1';
			  DATA_OUT    : out STD_LOGIC_VECTOR (7 downto 0);
			  DATA_IN     : in  STD_LOGIC_VECTOR (7 downto 0);
			  ADDR        : out STD_LOGIC_VECTOR (11 downto 0) := "000000000000";
			  DEBUG       : out STD_LOGIC := '0';
			  DEBUG2      : out STD_LOGIC := '0');
			  
end imager;

architecture Behavioral of imager is
	
	signal RGBWhite : STD_LOGIC_VECTOR (0 to 5) := "111111";
	signal RGBBlack : STD_LOGIC_VECTOR (0 to 5) := "000000";
	
	TYPE imager_re_state IS (draw, draw_dup);
	signal im_re_state : imager_re_state := draw;
	
	TYPE tDraw_fetch_state IS (fetch_next_address, fetch_char_byte, store_next_byte, store_next_index, end_fetch);
	signal draw_fetch_state : tDraw_fetch_state := fetch_next_address;
	
	TYPE imager_vgac_re_state IS (nop, clear_command, fetch_command, latch_command, latch_char_store_loc, 
	                              latch_char_data, save_char_data, save_char_read_data, latch_char_read_loc, 
											latch_char_read_data, save_char_data_wait, save_char_read_data_wait);
	signal im_vgac_re_state : imager_vgac_re_state := fetch_command;
	
	TYPE CharDataBufferArray is Array (0 to 7) of STD_LOGIC_VECTOR ( 0 to 7 );
	signal aCharDataBuffer : CharDataBufferArray;
	
begin

im:process (PCLK)
	-- normal mode variables
	variable iAdjXPixel   : INTEGER range 0 to 320 := 0;
	variable iAdjYPixel   : INTEGER range 0 to 240 := 0;
	variable iColumn      : INTEGER range 0 to 40 := 0;
	variable iRow         : INTEGER range 0 to 30 := 0;
	variable iColumnPixel : INTEGER range 0 to 8 := 0;
	variable iRowPixel    : INTEGER range 0 to 8 := 0;
	variable sDupeRow     : std_logic := '0';
	variable sIncPixel    : std_logic := '0';
	variable sNeedToFetch : std_logic := '1';
	variable iFetchedChar : STD_LOGIC_VECTOR (0 to 7) := "11011011";
	variable iCurrentChar : STD_LOGIC_VECTOR (0 to 7) := "00000000";
	
	-- normal mode fetch variables
	variable sFetchIndex   : STD_LOGIC_VECTOR (0 to 7) := "00000000";
	
	-- vga command variables
	variable iStCharCount  : INTEGER range 0 to 7 := 0;
	variable iStCharLoc    : STD_LOGIC_VECTOR ( 7 downto 0 ) := "00000000";
	variable sResult       : STD_LOGIC_VECTOR ( 11 downto 0 );
	variable sDisableFetch : STD_LOGIC := '0';
	
begin
 IF (PCLK'event AND PCLK = '1') THEN
 
 IF (HSYNC = '1') THEN -- You are not in HYSNC run normal commands
	IF sDisableFetch = '0' THEN
    im_vgac_re_state <= fetch_command; -- Set the VGA RE state to FetchCommand
	END IF;
	case im_re_state IS -- state machine
		WHEN draw => -- typical odd pixel draws
			VGA_EN <= '1'; -- enable VGA
			IF (DISPLAY_EN = '1') THEN
			  -- active drawing time
			  CASE draw_fetch_state IS
			   -----------------------------------------------------
			   WHEN fetch_char_byte =>
				 sFetchIndex := DATA_IN;
				 VGARAM_CE <= '1'; -- VGA RAM Off
				 CHARRAM_CE <= '1'; -- CHAR RAM Off
				 IF ((iRowPixel + 1 = 8) AND (iColumn + 1 = 40) AND sDupeRow = '1') THEN
				  sResult := (std_logic_vector(to_unsigned(8,11)) * sFetchIndex) + (std_logic_vector(to_unsigned(0,8))); -- Byte Data will now be on Bus
				 ELSIF ((iColumn + 1 = 40) AND sDupeRow = '1') THEN
				  sResult := (std_logic_vector(to_unsigned(8,11)) * sFetchIndex) + (std_logic_vector(to_unsigned(iRowPixel + 1,8)));
				 ELSE
				  sResult := (std_logic_vector(to_unsigned(8,11)) * sFetchIndex) + (std_logic_vector(to_unsigned(iRowPixel,8)));
				 END IF;
				 draw_fetch_state <= store_next_index;
				WHEN store_next_byte =>
				 -- Character Should be on BUS
				 iFetchedChar := DATA_IN;
				 draw_fetch_state <= end_fetch;
				--------------DO-NOTHING-BELOW-----------------------
				WHEN fetch_next_address =>
				WHEN end_fetch =>
				WHEN store_next_index =>
			  END CASE;
--------- DRAW PIXEL HERE ---------------------------
			  IF (iCurrentChar (iColumnPixel) = '1') THEN
			   RGB <= RGBWhite;
			  ELSE 
			   RGB <= RGBBlack;
			  END IF;
			  im_re_state <= draw_dup;
			ELSE
			  RGB <= "000000";
			END IF;
-----------------------------------------------------
		WHEN draw_dup =>
			-- RGB should still be on the pipe line 
			-- check to see if this is the first draw_dup of this row
			-- if so fetch next data during this draw
			IF (sNeedToFetch = '1') THEN -- fetch flag is on, need to grab next data column -- you have 15 cycles :0
				CASE draw_fetch_state IS
				-----------------------------------------------------
				 WHEN fetch_next_address =>
				  IF ((iRowPixel + 1 = 8) AND (iColumn + 1 = 40) AND (iRow + 1 = 30) AND sDupeRow = '1') THEN
					sResult := ((std_logic_vector(to_unsigned(0, 12)))); 
				  ELSIF ((iRowPixel + 1 = 8) AND (iColumn + 1 = 40) AND sDupeRow = '1') THEN
				   sResult := ((std_logic_vector(to_unsigned(0, 8))) + (X"028" * std_logic_vector(to_unsigned((iRow + 1),8))));
				  ELSIF ((iColumn + 1 = 40)) THEN
				   sResult := ((std_logic_vector(to_unsigned(0, 8))) + (X"028" * std_logic_vector(to_unsigned((iRow),8))));
				  ELSE
				   sResult := ((std_logic_vector(to_unsigned((iColumn + 1), 8))) + (X"028" * std_logic_vector(to_unsigned((iRow),8))));
				  END IF;
				  VGARAM_CE <= '0'; -- Enable VGA RAM
				  CHARRAM_CE <= '1'; -- Disable CHAR RAM
				  ADDR <= sResult(11 downto 0); -- Put the Address For Index On the Bus
				  draw_fetch_state <= fetch_char_byte;
				 WHEN store_next_index =>
				  VGARAM_CE <= '1';
				  CHARRAM_CE <= '0';
				  ADDR <= sResult(11 downto 0);
				  draw_fetch_state <= store_next_byte;
				 WHEN end_fetch =>
				  sNeedToFetch := '0'; -- fetched
				  VGARAM_CE <= '1'; -- Disable VGA RAM
				  CHARRAM_CE <= '1'; -- Disable CHAR RAM
				  draw_fetch_state <= fetch_next_address;
				 --------------DO-NOTHING-BELOW-----------------------
				 WHEN fetch_char_byte=>
				 WHEN store_next_byte =>
				END CASE;
			END IF;
			sIncPixel := '1';
			im_re_state <= draw;
	END CASE;
	
------- The Following takes care of pixel movement and fetch flags

	IF (sIncPixel = '1') THEN -- if increasePixel is Flagged, increase and unflag -- this should only be flagged on DUP draws
		iAdjXPixel := iAdjXPixel + 1; -- Add one to the X pixel
		if (iAdjXPixel = 320) THEN -- If we have hit 320 go back to 0 (left)
		 iAdjXPixel := 0;
		 IF (sDupeRow = '0') THEN
		  sDupeRow := '1';
		 ELSE
		   sDupeRow := '0';
		   iAdjYPixel := iAdjYPixel + 1; -- Increase our Y by 1
			IF (iAdjYPixel = 240) THEN -- If we have hit 240 go back to 0 (top)
			 iAdjYPixel := 0;
			END IF;
			iRowPixel := iRowPixel + 1; -- if we have hit 320 increase our row counter
			IF (iRowPixel = 8) THEN -- if we hit 8 pixels in our row go back to 0 (8x8 chars)
			 iRowPixel := 0;
			 iRow := iRow + 1; -- increase our total row count
			 IF (iRow = 30) THEN -- if our total row count is 30 go back to 0 (top of rows)
				iRow := 0;
			 END IF;
			END IF;
		 END IF;
		END IF;
		
		iColumnPixel := iColumnPixel + 1; -- increase our column pixel by one
		IF (iColumnPixel = 8) THEN -- if we are at 8 (8x8) go back to 0
		 iColumnPixel := 0;
		 iCurrentChar := iFetchedChar; -- Done with Column, Take the fetch make it current
		 sNeedToFetch := '1'; -- Need to set the Fetch Flag, so next dupe a fetch is done
		 iColumn := iColumn + 1; -- we also hit 8 pixels so increase our total column count by 1
		 if (iColumn = 40) THEN -- we hit all 40 columns go back to 0 (40x30 chars)
		  iColumn := 0;
		 END IF;
		END IF;
		sIncPixel := '0'; -- set the increase pixel flag back to 0
	END IF;
	
 ELSIF (HSYNC = '0') THEN -- You are in HSYNC - RUN VGA Commands
 
	CASE im_vgac_re_state IS
-----------------------------------------------------
	 WHEN clear_command =>
	  iStCharCount := 0;
	  CHARRAM_CE <= '1'; -- Disable the Char RAM
	  VGARAM_CE <= '0'; -- Enable the VGARAM
	  RAM_WR <= '0'; -- Enable Write
	  ADDR <= X"F00";
	  DATA_OUT <= "00000000";
	  im_vgac_re_state <= nop;
-----------------------------------------------------
	 WHEN nop =>
	  -- NOP
	  RAM_WR <= '1'; -- SET READ
	  CHARRAM_CE <= '1'; -- DISABLE CHAR RAM
	  VGARAM_CE <= '1'; -- DISABLE VGA RAM
	  iStCharCount := 0;
-----------------------------------------------------
	 WHEN fetch_command => -- By Default Fetch the command Vector
	  VGARAM_CE <= '0'; -- enable VGA RAM
	  CHARRAM_CE <= '1'; -- DISABLE CHAR RAM
	  RAM_WR <= '1'; -- READ MODE
	  ADDR <= X"F00"; -- Command Read
	  im_vgac_re_state <= latch_command;
-----------------------------------------------------
	 WHEN latch_command =>
	  -- The Fetch is on the DataBus Read and Execute
	  CASE DATA_IN IS
	   WHEN X"01" =>
	    -- character store command
		 DEBUG <= '1';
		 VGARAM_CE <= '0'; -- enable VGA RAM
		 CHARRAM_CE <= '1'; -- DISABLE CHAR RAM
	    RAM_WR <= '1'; -- READ MODE
	    ADDR <= X"F10"; -- Read Char Location
		 im_vgac_re_state <= latch_char_store_loc;
		WHEN X"02" =>
		 -- character retrieve command
		 VGARAM_CE <= '0'; -- enable VGA RAM
	    RAM_WR <= '1'; -- READ MODE
	    ADDR <= X"F10"; -- Read Char Location
		 im_vgac_re_state <= latch_char_read_loc;
	   WHEN OTHERS =>
	    im_vgac_re_state <= nop; -- didn't find a command sit at nop
	   END CASE;
-----------------------------------------------------
	 WHEN latch_char_store_loc =>
	  -- The Char Store Loc is on the Data Bus - Store it then start reading data
	  iStCharLoc := DATA_IN;
	  -- Fetch Char
	  VGARAM_CE <= '0'; -- enable VGA RAM
	  CHARRAM_CE <= '1'; -- disable CHAR RAM
	  RAM_WR <= '1'; -- READ MODE
	  ADDR <= X"F20" + std_logic_vector(to_unsigned(iStCharCount,8)); -- Set Addr
	  im_vgac_re_state <= latch_char_data;
-----------------------------------------------------
	 WHEN latch_char_read_loc =>
	  -- The Char Read Loc is on the Data Bus - Store it then start reading data
	  iStCharLoc := DATA_IN;
	  -- Fetch Char from RAM
	  VGARAM_CE <= '1'; -- disbale VGA RAM
	  CHARRAM_CE <= '0'; -- enable Char RAM
	  RAM_WR <= '1'; -- READ MODE
	  sResult := (std_logic_vector(to_unsigned(8,11)) * iStCharLoc) + std_logic_vector(to_unsigned(iStCharCount,8));
	  ADDR <= sResult(11 downto 0); -- address to read from
	  im_vgac_re_state <= latch_char_read_data;
-----------------------------------------------------
	 WHEN latch_char_data =>  -- looping latch char (8 total cycles)
	  -- Latch Char
	  aCharDataBuffer(iStCharCount) <= DATA_IN;
	  IF ((iStCharCount + 1) = 8) THEN
	   iStCharCount := 0;
		im_vgac_re_state <= save_char_data;
	  ELSE
	   iStCharCount := iStCharCount + 1;
		VGARAM_CE <= '0'; -- enable VGA RAM
	   CHARRAM_CE <= '1'; -- disable CHAR RAM
	   RAM_WR <= '1'; -- READ MODE
	   ADDR <= X"F20" + std_logic_vector(to_unsigned(iStCharCount,8)); -- Set Addr
	  END IF;
-----------------------------------------------------
	 WHEN latch_char_read_data =>
	  -- latch read char - data on bus
	  aCharDataBuffer(iStCharCount) <= DATA_IN;
	  IF ((iStCharCount + 1) = 8) THEN
	   iStCharCount := 0;
		im_vgac_re_state <= save_char_read_data;
	  ELSE
	   iStCharCount := iStCharCount + 1;
		VGARAM_CE <= '1'; -- disable VGA RAM
	   CHARRAM_CE <= '0'; -- enable CHAR RAM
	   RAM_WR <= '1'; -- READ MODE
	   sResult := (std_logic_vector(to_unsigned(8,12)) * iStCharLoc) + std_logic_vector(to_unsigned(iStCharCount,8));
	   ADDR <= sResult(11 downto 0); -- address to read from
	  END IF;
-----------------------------------------------------
	 WHEN save_char_data => -- Save Char Data Loop
	  -- All Character Data has been recieved - Store it
	  VGARAM_CE <= '1'; -- Disable the VGA RAM
	  sResult := (std_logic_vector(to_unsigned(8,12)) * iStCharLoc) + std_logic_vector(to_unsigned(iStCharCount,8));
	  ADDR <= sResult(11 downto 0);
	  DATA_OUT <= aCharDataBuffer(iStCharCount);
	  CHARRAM_CE <= '0'; -- Enable the Char RAM
	  RAM_WR <= '0'; -- Enable RAM Write
	  IF ((iStCharCount + 1) = 8) THEN
	   im_vgac_re_state <= clear_command; -- command is done - exit loop and clear command
	  ELSE
	   iStCharCount := iStCharCount + 1;
		im_vgac_re_state <= save_char_data_wait; -- Wait there
	  END IF;
-----------------------------------------------------
	 WHEN save_char_data_wait =>
	  im_vgac_re_state <= save_char_data;
	  RAM_WR <= '1';
	  CHARRAM_CE <= '1';
-----------------------------------------------------
	 WHEN save_char_read_data => -- Save Read Char Data Loop
	  CHARRAM_CE <= '1'; -- Disable the CHAR_RAM
	  VGARAM_CE <= '0'; -- Enable the VGA RAM
	  RAM_WR <= '0'; -- Enable RAM Write
	  ADDR <= X"F30" + std_logic_vector(to_unsigned(iStCharCount,8)); -- Set Addr
	  DATA_OUT <= aCharDataBuffer(iStCharCount);
	  IF ((iStCharCount + 1) = 8) THEN
	   im_vgac_re_state <= clear_command; -- command is done - exit loop and clear command
	  ELSE
	   iStCharCount := iStCharCount + 1;
		im_vgac_re_state <= save_char_read_data_wait;
	  END IF;
-----------------------------------------------------
	 WHEN save_char_read_data_wait =>
	  VGARAM_CE <= '1';
	  RAM_WR <= '1';
	  im_vgac_re_state <= save_char_read_data;
	END CASE;
	
 END IF; -- HSYNC 1 or 0 END IF
 END IF; -- PCLK'event END IF

end process;

end Behavioral;

