----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:35:19 02/01/2017 
-- Design Name: 
-- Module Name:    vga_controller - Behavioral 
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

entity vga_controller is
	 Generic ( 
			  h_pulse      :  INTEGER   := 96;     --horiztonal sync pulse width in pixels -- should be 96 -- 92
			  h_bp         :  INTEGER   := 48;     --horiztonal back porch width in pixels -- should be 48 -- 46
			  h_pixels     :  INTEGER   := 640;    --horiztonal display width in pixels
			  h_fp         :  INTEGER   := 16;     --horiztonal front porch width in pixels
			  h_pol        :  STD_LOGIC := '0';    --horizontal sync pulse polarity (1 = positive, 0 = negative)
			  v_pulse      :  INTEGER   := 2;      --vertical sync pulse width in rows
			  v_bp         :  INTEGER   := 29;     --vertical back porch width in rows -- 31
			  v_pixels     :  INTEGER   := 480;    --vertical display width in rows
			  v_fp         :  INTEGER   := 10;     --vertical front porch width in rows -- 11
			  v_pol        :  STD_LOGIC := '0');   -- 1
    Port ( PIXEL_CLOCK  : in   STD_LOGIC;
			  VGA_EN       : in   STD_LOGIC := '0';
           HSYNC        : out  STD_LOGIC := '1';
           VSYNC        : out  STD_LOGIC := '1';
           DISPLAY_EN   : out  STD_LOGIC := '0';
			  START_VSYNC  : out  STD_LOGIC := '0';
           ROW          : out  INTEGER := 0;
           COLUMN       : out  INTEGER := 0);
end vga_controller;

architecture Behavioral of vga_controller is
	CONSTANT  h_period  :  INTEGER := h_pulse + h_bp + h_pixels + h_fp;  --total number of pixel clocks in a row
   CONSTANT  v_period  :  INTEGER := v_pulse + v_bp + v_pixels + v_fp;  --total number of rows in column
begin

 vga_controller_p : process (PIXEL_CLOCK) 
	 VARIABLE h_count  :  INTEGER RANGE 0 TO h_period - 1 := 0;  --horizontal counter (counts the columns)
    VARIABLE v_count  :  INTEGER RANGE 0 TO v_period - 1 := 0;  --vertical counter (counts the rows)
	 VARIABLE vStartTrigger : std_logic := '1';
	begin
		IF (PIXEL_CLOCK'EVENT AND PIXEL_CLOCK = '1' AND VGA_EN = '1') THEN

			--horizontal sync signal
			IF(h_count < h_pixels + h_fp OR h_count > h_pixels + h_fp + h_pulse) THEN
			  HSYNC <= NOT h_pol;    --deassert horiztonal sync pulse
			ELSE
			  HSYNC <= h_pol;        --assert horiztonal sync pulse
			END IF;
			
			--vertical sync signal
			IF(v_count < v_pixels + v_fp OR v_count > v_pixels + v_fp + v_pulse) THEN
			  VSYNC <= NOT v_pol;    --deassert vertical sync pulse
			  vStartTrigger := '1';
			ELSE
			  VSYNC <= v_pol;        --assert vertical sync pulse
			  IF (vStartTrigger = '1') THEN
				vStartTrigger := '0';
			   START_VSYNC <= '1';
				ELSE
				START_VSYNC <= '0';
			  END IF;
			END IF;
			
			--set pixel coordinates
			IF(h_count < h_pixels) THEN  --horiztonal display time
			  COLUMN <= h_count;         --set horiztonal pixel coordinate
			END IF;
			IF(v_count < v_pixels) THEN  --vertical display time
			  ROW <= v_count;            --set vertical pixel coordinate
			END IF;

			--set display enable output
			IF(h_count < h_pixels AND v_count < v_pixels) THEN  --display time
			  DISPLAY_EN <= '1';                                  --enable display
			ELSE                                                --blanking time
			  DISPLAY_EN <= '0';                                  --disable display
			END IF;
			
			--counters
			IF(h_count < h_period - 1) THEN    --horizontal counter (pixels)
			  h_count := h_count + 1;
			ELSE
			  h_count := 0;
			  IF(v_count < v_period - 1) THEN  --veritcal counter (rows)
				 v_count := v_count + 1;
			  ELSE
				 v_count := 0;
			  END IF;
			END IF;

		END IF;
	end process;

end Behavioral;

