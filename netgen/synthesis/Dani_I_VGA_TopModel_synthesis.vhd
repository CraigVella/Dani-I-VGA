--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: Dani_I_VGA_TopModel_synthesis.vhd
-- /___/   /\     Timestamp: Thu Feb 09 14:33:41 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -ar Structure -tm Dani_I_VGA_TopModel -w -dir netgen/synthesis -ofmt vhdl -sim Dani_I_VGA_TopModel.ngc Dani_I_VGA_TopModel_synthesis.vhd 
-- Device	: xc3s200a-4-vq100
-- Input file	: Dani_I_VGA_TopModel.ngc
-- Output file	: C:\Users\Craig Vella\Documents\ISEProjects\Dani-I-VGA\netgen\synthesis\Dani_I_VGA_TopModel_synthesis.vhd
-- # of Entities	: 1
-- Design Name	: Dani_I_VGA_TopModel
-- Xilinx	: C:\Xilinx\14.7\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity Dani_I_VGA_TopModel is
  port (
    DEBUG : out STD_LOGIC; 
    CLK : in STD_LOGIC := 'X'; 
    RAM_WR : out STD_LOGIC; 
    VSYNC : out STD_LOGIC; 
    DEBUG2 : out STD_LOGIC; 
    HSYNC : out STD_LOGIC; 
    CHARRAM_CE : out STD_LOGIC; 
    VGARAM_CE : out STD_LOGIC; 
    DATA : inout STD_LOGIC_VECTOR ( 7 downto 0 ); 
    ADDR : out STD_LOGIC_VECTOR ( 11 downto 0 ); 
    RGB : out STD_LOGIC_VECTOR ( 0 to 5 ) 
  );
end Dani_I_VGA_TopModel;

architecture Structure of Dani_I_VGA_TopModel is
  signal CLK_BUFGP_14 : STD_LOGIC; 
  signal I_imager_ADDR_cmp_eq0000_54 : STD_LOGIC; 
  signal I_imager_ADDR_cmp_eq0001_55 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_0_0_80 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_0_102 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_0_1117_82 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_0_114_83 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_0_12_84 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_0_17_85 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_0_31_86 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_10_123_87 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_10_181_88 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_10_24_89 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_10_27_90 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_10_42 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_10_5_92 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_11_18_93 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_11_24_94 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_11_27_95 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_11_42 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_11_5_97 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_1_101 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_1_17_99 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_1_50_100 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_1_89_101 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_2_101 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_2_17_103 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_2_50_104 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_2_89_105 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_3_100 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_3_17_107 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_3_50_108 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_3_89_109 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_4_125_110 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_4_136 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_4_29_112 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_4_37_113 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_4_53_114 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_4_73_115 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_4_86_116 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_4_98_117 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_5_0_118 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_5_1_119 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_5_100 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_5_17_121 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_5_37_122 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_5_50_123 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_5_62_124 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_5_89_125 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_6_0_126 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_6_1_127 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_6_101 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_6_17_129 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_6_37_130 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_7_26_131 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_7_3_132 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_7_38_133 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_7_55_134 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_7_80_135 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_8_18_136 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_8_24_137 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_8_27_138 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_8_42 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_8_5_140 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_9_18_141 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_9_24_142 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_9_27_143 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_9_42 : STD_LOGIC; 
  signal I_imager_ADDR_mux0001_9_5_145 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_10_mand_147 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_10_mand1 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_11_mand : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_1_20_151 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_1_34_152 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_2_2 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_2_28_155 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_3_mand_156 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_3_mand1 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_4_mand_158 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_4_mand1 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_5_mand_160 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_5_mand1 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_6_mand_162 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_6_mand1 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_7_mand_164 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_7_mand1 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_8_mand_166 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_8_mand1 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_9_mand_168 : STD_LOGIC; 
  signal I_imager_ADDR_mux0002_9_mand1 : STD_LOGIC; 
  signal I_imager_ADDR_mux0003_11_Q : STD_LOGIC; 
  signal I_imager_ADDR_mux0003_3_Q : STD_LOGIC; 
  signal I_imager_ADDR_mux0003_3_1_172 : STD_LOGIC; 
  signal I_imager_ADDR_mux0003_4_Q : STD_LOGIC; 
  signal I_imager_ADDR_mux0003_4_14_174 : STD_LOGIC; 
  signal I_imager_ADDR_mux0003_4_5_175 : STD_LOGIC; 
  signal I_imager_ADDR_mux0003_5_Q : STD_LOGIC; 
  signal I_imager_ADDR_mux0003_6_Q : STD_LOGIC; 
  signal I_imager_ADDR_mux0003_7_Q : STD_LOGIC; 
  signal I_imager_ADDR_or0009 : STD_LOGIC; 
  signal I_imager_ADDR_or0010 : STD_LOGIC; 
  signal I_imager_CHARRAM_CE_193 : STD_LOGIC; 
  signal I_imager_CHARRAM_CE_mux000011 : STD_LOGIC; 
  signal I_imager_CHARRAM_CE_mux0000111_195 : STD_LOGIC; 
  signal I_imager_CHARRAM_CE_mux0000112_196 : STD_LOGIC; 
  signal I_imager_CHARRAM_CE_mux000020_197 : STD_LOGIC; 
  signal I_imager_CHARRAM_CE_mux000021_198 : STD_LOGIC; 
  signal I_imager_CHARRAM_CE_mux000033_199 : STD_LOGIC; 
  signal I_imager_CHARRAM_CE_mux000051_200 : STD_LOGIC; 
  signal I_imager_CHARRAM_CE_mux000063_201 : STD_LOGIC; 
  signal I_imager_CHARRAM_CE_mux000084_202 : STD_LOGIC; 
  signal I_imager_HSYNC_inv : STD_LOGIC; 
  signal I_imager_Madd_ADDR_add0000_cy_5_rt_226 : STD_LOGIC; 
  signal I_imager_Madd_ADDR_add0000_cy_6_rt_228 : STD_LOGIC; 
  signal I_imager_Madd_ADDR_add0000_xor_7_rt_234 : STD_LOGIC; 
  signal I_imager_Madd_ADDR_add0002_cy_5_rt_241 : STD_LOGIC; 
  signal I_imager_Madd_ADDR_add0002_cy_6_rt_243 : STD_LOGIC; 
  signal I_imager_Madd_ADDR_add0002_xor_7_rt_249 : STD_LOGIC; 
  signal I_imager_Madd_sDupeRow_add0000_cy_1_rt_278 : STD_LOGIC; 
  signal I_imager_Madd_sDupeRow_add0000_cy_2_rt_280 : STD_LOGIC; 
  signal I_imager_Madd_sDupeRow_add0000_cy_3_rt_282 : STD_LOGIC; 
  signal I_imager_Madd_sDupeRow_add0000_cy_4_rt_284 : STD_LOGIC; 
  signal I_imager_Madd_sDupeRow_add0000_cy_5_rt_286 : STD_LOGIC; 
  signal I_imager_Madd_sDupeRow_add0000_cy_6_rt_288 : STD_LOGIC; 
  signal I_imager_Madd_sDupeRow_add0000_cy_7_rt_290 : STD_LOGIC; 
  signal I_imager_Madd_sDupeRow_add0000_xor_8_rt_292 : STD_LOGIC; 
  signal I_imager_Mcount_iAdjXPixel_cy_1_rt_296 : STD_LOGIC; 
  signal I_imager_Mcount_iAdjXPixel_cy_2_rt_298 : STD_LOGIC; 
  signal I_imager_Mcount_iAdjXPixel_cy_3_rt_300 : STD_LOGIC; 
  signal I_imager_Mcount_iAdjXPixel_cy_4_rt_302 : STD_LOGIC; 
  signal I_imager_Mcount_iAdjXPixel_cy_5_rt_304 : STD_LOGIC; 
  signal I_imager_Mcount_iAdjXPixel_cy_6_rt_306 : STD_LOGIC; 
  signal I_imager_Mcount_iAdjXPixel_cy_7_rt_308 : STD_LOGIC; 
  signal I_imager_Mcount_iAdjXPixel_xor_8_rt_310 : STD_LOGIC; 
  signal I_imager_Mmux_iCurrentChar_mux0000_3_f5_311 : STD_LOGIC; 
  signal I_imager_Mmux_iCurrentChar_mux0000_4_312 : STD_LOGIC; 
  signal I_imager_Mmux_iCurrentChar_mux0000_4_f5_313 : STD_LOGIC; 
  signal I_imager_Mmux_iCurrentChar_mux0000_5_314 : STD_LOGIC; 
  signal I_imager_Mmux_iCurrentChar_mux0000_51_315 : STD_LOGIC; 
  signal I_imager_Mmux_iCurrentChar_mux0000_6_316 : STD_LOGIC; 
  signal I_imager_N0 : STD_LOGIC; 
  signal I_imager_N1 : STD_LOGIC; 
  signal I_imager_N10 : STD_LOGIC; 
  signal I_imager_N11 : STD_LOGIC; 
  signal I_imager_N14 : STD_LOGIC; 
  signal I_imager_N15 : STD_LOGIC; 
  signal I_imager_N2 : STD_LOGIC; 
  signal I_imager_N24 : STD_LOGIC; 
  signal I_imager_N3 : STD_LOGIC; 
  signal I_imager_N30 : STD_LOGIC; 
  signal I_imager_N31 : STD_LOGIC; 
  signal I_imager_N32 : STD_LOGIC; 
  signal I_imager_N35 : STD_LOGIC; 
  signal I_imager_N38 : STD_LOGIC; 
  signal I_imager_N47 : STD_LOGIC; 
  signal I_imager_N5 : STD_LOGIC; 
  signal I_imager_N59 : STD_LOGIC; 
  signal I_imager_N62 : STD_LOGIC; 
  signal I_imager_N65 : STD_LOGIC; 
  signal I_imager_N67 : STD_LOGIC; 
  signal I_imager_N8 : STD_LOGIC; 
  signal I_imager_N9 : STD_LOGIC; 
  signal I_imager_RAM_WR_339 : STD_LOGIC; 
  signal I_imager_RAM_WR_and0001 : STD_LOGIC; 
  signal I_imager_RAM_WR_mux0000 : STD_LOGIC; 
  signal I_imager_RAM_WR_mux000032_342 : STD_LOGIC; 
  signal I_imager_RAM_WR_mux00004_343 : STD_LOGIC; 
  signal I_imager_RAM_WR_not0001 : STD_LOGIC; 
  signal I_imager_RGB_not0001 : STD_LOGIC; 
  signal I_imager_Result_0_1 : STD_LOGIC; 
  signal I_imager_Result_0_2 : STD_LOGIC; 
  signal I_imager_Result_0_3 : STD_LOGIC; 
  signal I_imager_Result_0_4 : STD_LOGIC; 
  signal I_imager_Result_1_1 : STD_LOGIC; 
  signal I_imager_Result_1_2_355 : STD_LOGIC; 
  signal I_imager_Result_1_3 : STD_LOGIC; 
  signal I_imager_Result_1_4 : STD_LOGIC; 
  signal I_imager_Result_2_1 : STD_LOGIC; 
  signal I_imager_Result_2_2_360 : STD_LOGIC; 
  signal I_imager_Result_2_3 : STD_LOGIC; 
  signal I_imager_Result_2_4 : STD_LOGIC; 
  signal I_imager_Result_3_1 : STD_LOGIC; 
  signal I_imager_Result_3_2_365 : STD_LOGIC; 
  signal I_imager_Result_3_3 : STD_LOGIC; 
  signal I_imager_Result_3_4 : STD_LOGIC; 
  signal I_imager_Result_4_1_369 : STD_LOGIC; 
  signal I_imager_Result_4_2 : STD_LOGIC; 
  signal I_imager_Result_5_1 : STD_LOGIC; 
  signal I_imager_VGARAM_CE_376 : STD_LOGIC; 
  signal I_imager_VGARAM_CE_mux000012_377 : STD_LOGIC; 
  signal I_imager_VGARAM_CE_mux0000131 : STD_LOGIC; 
  signal I_imager_VGARAM_CE_mux000026 : STD_LOGIC; 
  signal I_imager_VGARAM_CE_mux0000261_380 : STD_LOGIC; 
  signal I_imager_VGARAM_CE_mux000042_381 : STD_LOGIC; 
  signal I_imager_VGARAM_CE_mux000066_382 : STD_LOGIC; 
  signal I_imager_VGARAM_CE_mux000090_383 : STD_LOGIC; 
  signal I_imager_draw_fetch_state_0_not0001 : STD_LOGIC; 
  signal I_imager_iAdjXPixel_and0000 : STD_LOGIC; 
  signal I_imager_iAdjXPixel_not0001 : STD_LOGIC; 
  signal I_imager_iColumnPixel_and0000 : STD_LOGIC; 
  signal I_imager_iColumn_and0000 : STD_LOGIC; 
  signal I_imager_iCurrentChar_mux0000 : STD_LOGIC; 
  signal I_imager_iCurrentChar_not0001 : STD_LOGIC; 
  signal I_imager_iCurrentChar_not00011 : STD_LOGIC; 
  signal I_imager_iRowPixel_and0000 : STD_LOGIC; 
  signal I_imager_iRowPixel_not0001 : STD_LOGIC; 
  signal I_imager_iRow_and0000_455 : STD_LOGIC; 
  signal I_imager_iRow_cmp_eq0001 : STD_LOGIC; 
  signal I_imager_iRow_cmp_eq0002 : STD_LOGIC; 
  signal I_imager_iRow_cmp_eq000228_458 : STD_LOGIC; 
  signal I_imager_iStCharCount_mux0000_1_1_464 : STD_LOGIC; 
  signal I_imager_iStCharCount_mux0000_1_2_465 : STD_LOGIC; 
  signal I_imager_iStCharLoc_mux0000_0_110_476 : STD_LOGIC; 
  signal I_imager_im_re_state_FSM_FFd1_484 : STD_LOGIC; 
  signal I_imager_im_re_state_FSM_FFd1_In : STD_LOGIC; 
  signal I_imager_im_re_state_FSM_FFd2_486 : STD_LOGIC; 
  signal I_imager_im_re_state_FSM_FFd2_In : STD_LOGIC; 
  signal I_imager_im_re_state_FSM_FFd2_In1_488 : STD_LOGIC; 
  signal I_imager_im_re_state_FSM_FFd2_In2_489 : STD_LOGIC; 
  signal I_imager_im_re_state_FSM_FFd3_490 : STD_LOGIC; 
  signal I_imager_im_re_state_FSM_FFd4_491 : STD_LOGIC; 
  signal I_imager_im_re_state_FSM_FFd5_492 : STD_LOGIC; 
  signal I_imager_im_re_state_FSM_FFd5_In : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd1_494 : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd1_In : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd10_496 : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd10_In : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd11_498 : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd11_In : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd11_In22_500 : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd12_501 : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd2_502 : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd2_In : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd3_504 : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd3_In : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd4_506 : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd4_In : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd5_508 : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd5_In : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd6_510 : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd6_In : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd7_512 : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd7_In : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd8_514 : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd8_In : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd9_516 : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_FSM_FFd9_In : STD_LOGIC; 
  signal I_imager_im_vgac_re_state_cmp_eq0002 : STD_LOGIC; 
  signal I_imager_sDupeRow_519 : STD_LOGIC; 
  signal I_imager_sDupeRow_mux0001 : STD_LOGIC; 
  signal I_pixel_clock_pulse_533 : STD_LOGIC; 
  signal I_pixel_clock_pulse1 : STD_LOGIC; 
  signal I_vga_controller_DISPLAY_EN_535 : STD_LOGIC; 
  signal I_vga_controller_DISPLAY_EN_and0000_536 : STD_LOGIC; 
  signal I_vga_controller_HSYNC_537 : STD_LOGIC; 
  signal I_vga_controller_HSYNC_or0000 : STD_LOGIC; 
  signal I_vga_controller_HSYNC_or000015_539 : STD_LOGIC; 
  signal I_vga_controller_HSYNC_or000040_540 : STD_LOGIC; 
  signal I_vga_controller_HSYNC_or000045_541 : STD_LOGIC; 
  signal I_vga_controller_HSYNC_or000046_542 : STD_LOGIC; 
  signal I_vga_controller_Mcount_h_count_cy_1_rt_545 : STD_LOGIC; 
  signal I_vga_controller_Mcount_h_count_cy_2_rt_547 : STD_LOGIC; 
  signal I_vga_controller_Mcount_h_count_cy_3_rt_549 : STD_LOGIC; 
  signal I_vga_controller_Mcount_h_count_cy_4_rt_551 : STD_LOGIC; 
  signal I_vga_controller_Mcount_h_count_cy_5_rt_553 : STD_LOGIC; 
  signal I_vga_controller_Mcount_h_count_cy_6_rt_555 : STD_LOGIC; 
  signal I_vga_controller_Mcount_h_count_cy_7_rt_557 : STD_LOGIC; 
  signal I_vga_controller_Mcount_h_count_cy_8_rt_559 : STD_LOGIC; 
  signal I_vga_controller_Mcount_h_count_xor_9_rt_561 : STD_LOGIC; 
  signal I_vga_controller_Mcount_v_count_cy_1_rt_564 : STD_LOGIC; 
  signal I_vga_controller_Mcount_v_count_cy_2_rt_566 : STD_LOGIC; 
  signal I_vga_controller_Mcount_v_count_cy_3_rt_568 : STD_LOGIC; 
  signal I_vga_controller_Mcount_v_count_cy_4_rt_570 : STD_LOGIC; 
  signal I_vga_controller_Mcount_v_count_cy_5_rt_572 : STD_LOGIC; 
  signal I_vga_controller_Mcount_v_count_cy_6_rt_574 : STD_LOGIC; 
  signal I_vga_controller_Mcount_v_count_cy_7_rt_576 : STD_LOGIC; 
  signal I_vga_controller_Mcount_v_count_cy_8_rt_578 : STD_LOGIC; 
  signal I_vga_controller_Mcount_v_count_xor_9_rt_580 : STD_LOGIC; 
  signal I_vga_controller_N7 : STD_LOGIC; 
  signal I_vga_controller_Result_0_1 : STD_LOGIC; 
  signal I_vga_controller_Result_1_1 : STD_LOGIC; 
  signal I_vga_controller_Result_2_1 : STD_LOGIC; 
  signal I_vga_controller_Result_3_1 : STD_LOGIC; 
  signal I_vga_controller_Result_4_1 : STD_LOGIC; 
  signal I_vga_controller_Result_5_1 : STD_LOGIC; 
  signal I_vga_controller_Result_6_1 : STD_LOGIC; 
  signal I_vga_controller_Result_7_1 : STD_LOGIC; 
  signal I_vga_controller_Result_8_1 : STD_LOGIC; 
  signal I_vga_controller_Result_9_1 : STD_LOGIC; 
  signal I_vga_controller_START_VSYNC_602 : STD_LOGIC; 
  signal I_vga_controller_START_VSYNC_cmp_gt0000212_603 : STD_LOGIC; 
  signal I_vga_controller_START_VSYNC_cmp_gt000024_604 : STD_LOGIC; 
  signal I_vga_controller_START_VSYNC_cmp_lt0000212_605 : STD_LOGIC; 
  signal I_vga_controller_START_VSYNC_cmp_lt0000228_606 : STD_LOGIC; 
  signal I_vga_controller_START_VSYNC_not0001 : STD_LOGIC; 
  signal I_vga_controller_VSYNC_608 : STD_LOGIC; 
  signal I_vga_controller_VSYNC_or0000 : STD_LOGIC; 
  signal I_vga_controller_h_count_and0000 : STD_LOGIC; 
  signal I_vga_controller_vStartTrigger_621 : STD_LOGIC; 
  signal I_vga_controller_vStartTrigger_not0001 : STD_LOGIC; 
  signal I_vga_controller_vStartTrigger_not00011 : STD_LOGIC; 
  signal I_vga_controller_v_count_and0000 : STD_LOGIC; 
  signal I_vga_controller_v_count_and00000_635 : STD_LOGIC; 
  signal I_vga_controller_v_count_and00005_636 : STD_LOGIC; 
  signal I_vga_controller_v_count_cmp_lt0001 : STD_LOGIC; 
  signal I_vga_controller_v_count_cmp_lt0001221 : STD_LOGIC; 
  signal I_vga_controller_v_count_cmp_lt00012211_639 : STD_LOGIC; 
  signal I_vga_controller_v_count_cmp_lt0001232_640 : STD_LOGIC; 
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal N100 : STD_LOGIC; 
  signal N102 : STD_LOGIC; 
  signal N106 : STD_LOGIC; 
  signal N108 : STD_LOGIC; 
  signal N109 : STD_LOGIC; 
  signal N110 : STD_LOGIC; 
  signal N111 : STD_LOGIC; 
  signal N112 : STD_LOGIC; 
  signal N113 : STD_LOGIC; 
  signal N114 : STD_LOGIC; 
  signal N115 : STD_LOGIC; 
  signal N116 : STD_LOGIC; 
  signal N117 : STD_LOGIC; 
  signal N118 : STD_LOGIC; 
  signal N119 : STD_LOGIC; 
  signal N120 : STD_LOGIC; 
  signal N121 : STD_LOGIC; 
  signal N122 : STD_LOGIC; 
  signal N123 : STD_LOGIC; 
  signal N124 : STD_LOGIC; 
  signal N125 : STD_LOGIC; 
  signal N126 : STD_LOGIC; 
  signal N127 : STD_LOGIC; 
  signal N128 : STD_LOGIC; 
  signal N129 : STD_LOGIC; 
  signal N130 : STD_LOGIC; 
  signal N131 : STD_LOGIC; 
  signal N132 : STD_LOGIC; 
  signal N133 : STD_LOGIC; 
  signal N134 : STD_LOGIC; 
  signal N14 : STD_LOGIC; 
  signal N2 : STD_LOGIC; 
  signal N22 : STD_LOGIC; 
  signal N24 : STD_LOGIC; 
  signal N26 : STD_LOGIC; 
  signal N30 : STD_LOGIC; 
  signal N36 : STD_LOGIC; 
  signal N38 : STD_LOGIC; 
  signal N39 : STD_LOGIC; 
  signal N40 : STD_LOGIC; 
  signal N41 : STD_LOGIC; 
  signal N42 : STD_LOGIC; 
  signal N43 : STD_LOGIC; 
  signal N44 : STD_LOGIC; 
  signal N45 : STD_LOGIC; 
  signal N54 : STD_LOGIC; 
  signal N56 : STD_LOGIC; 
  signal N58 : STD_LOGIC; 
  signal N6 : STD_LOGIC; 
  signal N66 : STD_LOGIC; 
  signal N68 : STD_LOGIC; 
  signal N70 : STD_LOGIC; 
  signal N72 : STD_LOGIC; 
  signal N74 : STD_LOGIC; 
  signal N76 : STD_LOGIC; 
  signal N78 : STD_LOGIC; 
  signal N80 : STD_LOGIC; 
  signal N82 : STD_LOGIC; 
  signal N84 : STD_LOGIC; 
  signal N86 : STD_LOGIC; 
  signal N88 : STD_LOGIC; 
  signal N90 : STD_LOGIC; 
  signal N92 : STD_LOGIC; 
  signal N94 : STD_LOGIC; 
  signal N96 : STD_LOGIC; 
  signal N98 : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCIN_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_35_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_34_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_33_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_32_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_31_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_30_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_29_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_28_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_27_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_26_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_25_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_24_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_23_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_22_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_21_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_20_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_19_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_18_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_P_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_17_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_16_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_I_imager_Mmult_sResult_mult0003_BCOUT_0_UNCONNECTED : STD_LOGIC; 
  signal I_imager_ADDR : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal I_imager_ADDR_add0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal I_imager_ADDR_add0002 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal I_imager_ADDR_mult0000 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal I_imager_ADDR_mult0001 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal I_imager_ADDR_mux0002 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal I_imager_ADDR_share0000 : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal I_imager_DATA_OUT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal I_imager_DATA_OUT_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal I_imager_Madd_ADDR_add0000_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal I_imager_Madd_ADDR_add0000_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal I_imager_Madd_ADDR_add0002_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal I_imager_Madd_ADDR_add0002_lut : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal I_imager_Madd_ADDR_add0003_cy : STD_LOGIC_VECTOR ( 1 downto 1 ); 
  signal I_imager_Madd_ADDR_addsub0000_cy : STD_LOGIC_VECTOR ( 4 downto 3 ); 
  signal I_imager_Madd_ADDR_share0000_cy : STD_LOGIC_VECTOR ( 10 downto 0 ); 
  signal I_imager_Madd_ADDR_share0000_lut : STD_LOGIC_VECTOR ( 11 downto 0 ); 
  signal I_imager_Madd_sDupeRow_add0000_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal I_imager_Madd_sDupeRow_add0000_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal I_imager_Madd_sResult_add0003_cy : STD_LOGIC_VECTOR ( 3 downto 3 ); 
  signal I_imager_Mcount_iAdjXPixel_cy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal I_imager_Mcount_iAdjXPixel_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal I_imager_RGB : STD_LOGIC_VECTOR ( 5 downto 5 ); 
  signal I_imager_RGB_mux0001 : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal I_imager_Result : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal I_imager_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal I_imager_varindex0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal I_imager_draw_fetch_state : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal I_imager_iAdjXPixel : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal I_imager_iColumnPixel : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal I_imager_iColumn : STD_LOGIC_VECTOR ( 5 downto 0 ); 
  signal I_imager_iCurrentChar : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal I_imager_iCurrentChar_mux0001 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal I_imager_iRowPixel : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal I_imager_iRow : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal I_imager_iStCharCount : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal I_imager_iStCharCount_mux0000 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal I_imager_iStCharLoc : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal I_imager_iStCharLoc_mux0000 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal I_imager_sDupeRow_add0000 : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal I_imager_sResult_mult0003 : STD_LOGIC_VECTOR ( 2 downto 0 ); 
  signal I_vga_controller_Mcount_h_count_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal I_vga_controller_Mcount_h_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal I_vga_controller_Mcount_v_count_cy : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal I_vga_controller_Mcount_v_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal I_vga_controller_Result : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal I_vga_controller_h_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal I_vga_controller_v_count : STD_LOGIC_VECTOR ( 9 downto 0 ); 
begin
  XST_GND : GND
    port map (
      G => N0
    );
  XST_VCC : VCC
    port map (
      P => N1
    );
  I_imager_im_vgac_re_state_FSM_FFd11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_imager_im_vgac_re_state_FSM_FFd11_In,
      Q => I_imager_im_vgac_re_state_FSM_FFd11_498
    );
  I_imager_im_vgac_re_state_FSM_FFd10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_imager_im_vgac_re_state_FSM_FFd10_In,
      Q => I_imager_im_vgac_re_state_FSM_FFd10_496
    );
  I_imager_im_vgac_re_state_FSM_FFd12 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_HSYNC_537,
      Q => I_imager_im_vgac_re_state_FSM_FFd12_501
    );
  I_imager_im_vgac_re_state_FSM_FFd8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_imager_im_vgac_re_state_FSM_FFd8_In,
      Q => I_imager_im_vgac_re_state_FSM_FFd8_514
    );
  I_imager_im_vgac_re_state_FSM_FFd7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_imager_im_vgac_re_state_FSM_FFd7_In,
      Q => I_imager_im_vgac_re_state_FSM_FFd7_512
    );
  I_imager_im_vgac_re_state_FSM_FFd9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_imager_im_vgac_re_state_FSM_FFd9_In,
      Q => I_imager_im_vgac_re_state_FSM_FFd9_516
    );
  I_imager_im_vgac_re_state_FSM_FFd5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_imager_im_vgac_re_state_FSM_FFd5_In,
      Q => I_imager_im_vgac_re_state_FSM_FFd5_508
    );
  I_imager_im_vgac_re_state_FSM_FFd4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_imager_im_vgac_re_state_FSM_FFd4_In,
      Q => I_imager_im_vgac_re_state_FSM_FFd4_506
    );
  I_imager_im_vgac_re_state_FSM_FFd6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_imager_im_vgac_re_state_FSM_FFd6_In,
      Q => I_imager_im_vgac_re_state_FSM_FFd6_510
    );
  I_imager_im_vgac_re_state_FSM_FFd2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_imager_im_vgac_re_state_FSM_FFd2_In,
      Q => I_imager_im_vgac_re_state_FSM_FFd2_502
    );
  I_imager_im_vgac_re_state_FSM_FFd1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_imager_im_vgac_re_state_FSM_FFd1_In,
      Q => I_imager_im_vgac_re_state_FSM_FFd1_494
    );
  I_imager_im_vgac_re_state_FSM_FFd3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_imager_im_vgac_re_state_FSM_FFd3_In,
      Q => I_imager_im_vgac_re_state_FSM_FFd3_504
    );
  I_imager_im_re_state_FSM_FFd3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_HSYNC_537,
      D => I_imager_im_re_state_FSM_FFd4_491,
      Q => I_imager_im_re_state_FSM_FFd3_490
    );
  I_imager_im_re_state_FSM_FFd4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_HSYNC_537,
      D => I_imager_im_re_state_FSM_FFd5_492,
      Q => I_imager_im_re_state_FSM_FFd4_491
    );
  I_imager_im_re_state_FSM_FFd5 : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_HSYNC_537,
      D => I_imager_im_re_state_FSM_FFd5_In,
      Q => I_imager_im_re_state_FSM_FFd5_492
    );
  I_imager_im_re_state_FSM_FFd2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_HSYNC_537,
      D => I_imager_im_re_state_FSM_FFd2_In,
      Q => I_imager_im_re_state_FSM_FFd2_486
    );
  I_imager_im_re_state_FSM_FFd1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_HSYNC_537,
      D => I_imager_im_re_state_FSM_FFd1_In,
      Q => I_imager_im_re_state_FSM_FFd1_484
    );
  I_imager_Mcount_iAdjXPixel_xor_8_Q : XORCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(7),
      LI => I_imager_Mcount_iAdjXPixel_xor_8_rt_310,
      O => I_imager_Result(8)
    );
  I_imager_Mcount_iAdjXPixel_xor_7_Q : XORCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(6),
      LI => I_imager_Mcount_iAdjXPixel_cy_7_rt_308,
      O => I_imager_Result(7)
    );
  I_imager_Mcount_iAdjXPixel_cy_7_Q : MUXCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(6),
      DI => N0,
      S => I_imager_Mcount_iAdjXPixel_cy_7_rt_308,
      O => I_imager_Mcount_iAdjXPixel_cy(7)
    );
  I_imager_Mcount_iAdjXPixel_xor_6_Q : XORCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(5),
      LI => I_imager_Mcount_iAdjXPixel_cy_6_rt_306,
      O => I_imager_Result(6)
    );
  I_imager_Mcount_iAdjXPixel_cy_6_Q : MUXCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(5),
      DI => N0,
      S => I_imager_Mcount_iAdjXPixel_cy_6_rt_306,
      O => I_imager_Mcount_iAdjXPixel_cy(6)
    );
  I_imager_Mcount_iAdjXPixel_xor_5_Q : XORCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(4),
      LI => I_imager_Mcount_iAdjXPixel_cy_5_rt_304,
      O => I_imager_Result(5)
    );
  I_imager_Mcount_iAdjXPixel_cy_5_Q : MUXCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(4),
      DI => N0,
      S => I_imager_Mcount_iAdjXPixel_cy_5_rt_304,
      O => I_imager_Mcount_iAdjXPixel_cy(5)
    );
  I_imager_Mcount_iAdjXPixel_xor_4_Q : XORCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(3),
      LI => I_imager_Mcount_iAdjXPixel_cy_4_rt_302,
      O => I_imager_Result_4_1_369
    );
  I_imager_Mcount_iAdjXPixel_cy_4_Q : MUXCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(3),
      DI => N0,
      S => I_imager_Mcount_iAdjXPixel_cy_4_rt_302,
      O => I_imager_Mcount_iAdjXPixel_cy(4)
    );
  I_imager_Mcount_iAdjXPixel_xor_3_Q : XORCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(2),
      LI => I_imager_Mcount_iAdjXPixel_cy_3_rt_300,
      O => I_imager_Result_3_2_365
    );
  I_imager_Mcount_iAdjXPixel_cy_3_Q : MUXCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(2),
      DI => N0,
      S => I_imager_Mcount_iAdjXPixel_cy_3_rt_300,
      O => I_imager_Mcount_iAdjXPixel_cy(3)
    );
  I_imager_Mcount_iAdjXPixel_xor_2_Q : XORCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(1),
      LI => I_imager_Mcount_iAdjXPixel_cy_2_rt_298,
      O => I_imager_Result_2_2_360
    );
  I_imager_Mcount_iAdjXPixel_cy_2_Q : MUXCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(1),
      DI => N0,
      S => I_imager_Mcount_iAdjXPixel_cy_2_rt_298,
      O => I_imager_Mcount_iAdjXPixel_cy(2)
    );
  I_imager_Mcount_iAdjXPixel_xor_1_Q : XORCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(0),
      LI => I_imager_Mcount_iAdjXPixel_cy_1_rt_296,
      O => I_imager_Result_1_2_355
    );
  I_imager_Mcount_iAdjXPixel_cy_1_Q : MUXCY
    port map (
      CI => I_imager_Mcount_iAdjXPixel_cy(0),
      DI => N0,
      S => I_imager_Mcount_iAdjXPixel_cy_1_rt_296,
      O => I_imager_Mcount_iAdjXPixel_cy(1)
    );
  I_imager_Mcount_iAdjXPixel_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => I_imager_Mcount_iAdjXPixel_lut(0),
      O => I_imager_Result_0_2
    );
  I_imager_Mcount_iAdjXPixel_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => I_imager_Mcount_iAdjXPixel_lut(0),
      O => I_imager_Mcount_iAdjXPixel_cy(0)
    );
  I_imager_Mmux_iCurrentChar_mux0000_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => I_imager_iColumnPixel(0),
      I1 => I_imager_iCurrentChar(6),
      I2 => I_imager_iCurrentChar(7),
      O => I_imager_Mmux_iCurrentChar_mux0000_4_312
    );
  I_imager_Mmux_iCurrentChar_mux0000_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => I_imager_iColumnPixel(0),
      I1 => I_imager_iCurrentChar(4),
      I2 => I_imager_iCurrentChar(5),
      O => I_imager_Mmux_iCurrentChar_mux0000_5_314
    );
  I_imager_Mmux_iCurrentChar_mux0000_3_f5 : MUXF5
    port map (
      I0 => I_imager_Mmux_iCurrentChar_mux0000_5_314,
      I1 => I_imager_Mmux_iCurrentChar_mux0000_4_312,
      S => I_imager_iColumnPixel(1),
      O => I_imager_Mmux_iCurrentChar_mux0000_3_f5_311
    );
  I_imager_Mmux_iCurrentChar_mux0000_51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => I_imager_iColumnPixel(0),
      I1 => I_imager_iCurrentChar(2),
      I2 => I_imager_iCurrentChar(3),
      O => I_imager_Mmux_iCurrentChar_mux0000_51_315
    );
  I_imager_Mmux_iCurrentChar_mux0000_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => I_imager_iColumnPixel(0),
      I1 => I_imager_iCurrentChar(0),
      I2 => I_imager_iCurrentChar(1),
      O => I_imager_Mmux_iCurrentChar_mux0000_6_316
    );
  I_imager_Mmux_iCurrentChar_mux0000_4_f5 : MUXF5
    port map (
      I0 => I_imager_Mmux_iCurrentChar_mux0000_6_316,
      I1 => I_imager_Mmux_iCurrentChar_mux0000_51_315,
      S => I_imager_iColumnPixel(1),
      O => I_imager_Mmux_iCurrentChar_mux0000_4_f5_313
    );
  I_imager_Mmux_iCurrentChar_mux0000_2_f6 : MUXF6
    port map (
      I0 => I_imager_Mmux_iCurrentChar_mux0000_4_f5_313,
      I1 => I_imager_Mmux_iCurrentChar_mux0000_3_f5_311,
      S => I_imager_iColumnPixel(2),
      O => I_imager_iCurrentChar_mux0000
    );
  I_imager_Madd_ADDR_share0000_xor_11_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(10),
      LI => I_imager_Madd_ADDR_share0000_lut(11),
      O => I_imager_ADDR_share0000(11)
    );
  I_imager_Madd_ADDR_share0000_lut_11_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0003_11_Q,
      I2 => I_imager_ADDR_mux0002_11_mand,
      O => I_imager_Madd_ADDR_share0000_lut(11)
    );
  I_imager_Madd_ADDR_share0000_xor_10_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(9),
      LI => I_imager_Madd_ADDR_share0000_lut(10),
      O => I_imager_ADDR_share0000(10)
    );
  I_imager_Madd_ADDR_share0000_cy_10_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(9),
      DI => I_imager_ADDR_mux0002_10_mand1,
      S => I_imager_Madd_ADDR_share0000_lut(10),
      O => I_imager_Madd_ADDR_share0000_cy(10)
    );
  I_imager_ADDR_mux0002_10_mand : MULT_AND
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0002_10_mand_147,
      LO => I_imager_ADDR_mux0002_10_mand1
    );
  I_imager_Madd_ADDR_share0000_xor_9_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(8),
      LI => I_imager_Madd_ADDR_share0000_lut(9),
      O => I_imager_ADDR_share0000(9)
    );
  I_imager_Madd_ADDR_share0000_cy_9_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(8),
      DI => I_imager_ADDR_mux0002_9_mand1,
      S => I_imager_Madd_ADDR_share0000_lut(9),
      O => I_imager_Madd_ADDR_share0000_cy(9)
    );
  I_imager_ADDR_mux0002_9_mand : MULT_AND
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0002_9_mand_168,
      LO => I_imager_ADDR_mux0002_9_mand1
    );
  I_imager_Madd_ADDR_share0000_xor_8_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(7),
      LI => I_imager_Madd_ADDR_share0000_lut(8),
      O => I_imager_ADDR_share0000(8)
    );
  I_imager_Madd_ADDR_share0000_cy_8_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(7),
      DI => I_imager_ADDR_mux0002_8_mand1,
      S => I_imager_Madd_ADDR_share0000_lut(8),
      O => I_imager_Madd_ADDR_share0000_cy(8)
    );
  I_imager_ADDR_mux0002_8_mand : MULT_AND
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0002_8_mand_166,
      LO => I_imager_ADDR_mux0002_8_mand1
    );
  I_imager_Madd_ADDR_share0000_xor_7_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(6),
      LI => I_imager_Madd_ADDR_share0000_lut(7),
      O => I_imager_ADDR_share0000(7)
    );
  I_imager_Madd_ADDR_share0000_cy_7_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(6),
      DI => I_imager_ADDR_mux0002_7_mand1,
      S => I_imager_Madd_ADDR_share0000_lut(7),
      O => I_imager_Madd_ADDR_share0000_cy(7)
    );
  I_imager_Madd_ADDR_share0000_lut_7_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0003_7_Q,
      I2 => I_imager_ADDR_mux0002_7_mand_164,
      O => I_imager_Madd_ADDR_share0000_lut(7)
    );
  I_imager_ADDR_mux0002_7_mand : MULT_AND
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0002_7_mand_164,
      LO => I_imager_ADDR_mux0002_7_mand1
    );
  I_imager_Madd_ADDR_share0000_xor_6_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(5),
      LI => I_imager_Madd_ADDR_share0000_lut(6),
      O => I_imager_ADDR_share0000(6)
    );
  I_imager_Madd_ADDR_share0000_cy_6_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(5),
      DI => I_imager_ADDR_mux0002_6_mand1,
      S => I_imager_Madd_ADDR_share0000_lut(6),
      O => I_imager_Madd_ADDR_share0000_cy(6)
    );
  I_imager_Madd_ADDR_share0000_lut_6_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0003_6_Q,
      I2 => I_imager_ADDR_mux0002_6_mand_162,
      O => I_imager_Madd_ADDR_share0000_lut(6)
    );
  I_imager_ADDR_mux0002_6_mand : MULT_AND
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0002_6_mand_162,
      LO => I_imager_ADDR_mux0002_6_mand1
    );
  I_imager_Madd_ADDR_share0000_xor_5_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(4),
      LI => I_imager_Madd_ADDR_share0000_lut(5),
      O => I_imager_ADDR_share0000(5)
    );
  I_imager_Madd_ADDR_share0000_cy_5_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(4),
      DI => I_imager_ADDR_mux0002_5_mand1,
      S => I_imager_Madd_ADDR_share0000_lut(5),
      O => I_imager_Madd_ADDR_share0000_cy(5)
    );
  I_imager_Madd_ADDR_share0000_lut_5_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0003_5_Q,
      I2 => I_imager_ADDR_mux0002_5_mand_160,
      O => I_imager_Madd_ADDR_share0000_lut(5)
    );
  I_imager_ADDR_mux0002_5_mand : MULT_AND
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0002_5_mand_160,
      LO => I_imager_ADDR_mux0002_5_mand1
    );
  I_imager_Madd_ADDR_share0000_xor_4_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(3),
      LI => I_imager_Madd_ADDR_share0000_lut(4),
      O => I_imager_ADDR_share0000(4)
    );
  I_imager_Madd_ADDR_share0000_cy_4_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(3),
      DI => I_imager_ADDR_mux0002_4_mand1,
      S => I_imager_Madd_ADDR_share0000_lut(4),
      O => I_imager_Madd_ADDR_share0000_cy(4)
    );
  I_imager_Madd_ADDR_share0000_lut_4_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0003_4_Q,
      I2 => I_imager_ADDR_mux0002_4_mand_158,
      O => I_imager_Madd_ADDR_share0000_lut(4)
    );
  I_imager_ADDR_mux0002_4_mand : MULT_AND
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0002_4_mand_158,
      LO => I_imager_ADDR_mux0002_4_mand1
    );
  I_imager_Madd_ADDR_share0000_xor_3_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(2),
      LI => I_imager_Madd_ADDR_share0000_lut(3),
      O => I_imager_ADDR_share0000(3)
    );
  I_imager_Madd_ADDR_share0000_cy_3_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(2),
      DI => I_imager_ADDR_mux0002_3_mand1,
      S => I_imager_Madd_ADDR_share0000_lut(3),
      O => I_imager_Madd_ADDR_share0000_cy(3)
    );
  I_imager_Madd_ADDR_share0000_lut_3_Q : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0003_3_Q,
      I2 => I_imager_ADDR_mux0002_3_mand_156,
      O => I_imager_Madd_ADDR_share0000_lut(3)
    );
  I_imager_ADDR_mux0002_3_mand : MULT_AND
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0002_3_mand_156,
      LO => I_imager_ADDR_mux0002_3_mand1
    );
  I_imager_Madd_ADDR_share0000_xor_2_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(1),
      LI => I_imager_Madd_ADDR_share0000_lut(2),
      O => I_imager_ADDR_share0000(2)
    );
  I_imager_Madd_ADDR_share0000_cy_2_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(1),
      DI => I_imager_ADDR_mux0002(2),
      S => I_imager_Madd_ADDR_share0000_lut(2),
      O => I_imager_Madd_ADDR_share0000_cy(2)
    );
  I_imager_Madd_ADDR_share0000_xor_1_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(0),
      LI => I_imager_Madd_ADDR_share0000_lut(1),
      O => I_imager_ADDR_share0000(1)
    );
  I_imager_Madd_ADDR_share0000_cy_1_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_share0000_cy(0),
      DI => I_imager_ADDR_mux0002(1),
      S => I_imager_Madd_ADDR_share0000_lut(1),
      O => I_imager_Madd_ADDR_share0000_cy(1)
    );
  I_imager_Madd_ADDR_share0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => I_imager_Madd_ADDR_share0000_lut(0),
      O => I_imager_ADDR_share0000(0)
    );
  I_imager_Madd_ADDR_share0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => I_imager_ADDR_mux0002(0),
      S => I_imager_Madd_ADDR_share0000_lut(0),
      O => I_imager_Madd_ADDR_share0000_cy(0)
    );
  I_imager_Madd_sDupeRow_add0000_xor_8_Q : XORCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(7),
      LI => I_imager_Madd_sDupeRow_add0000_xor_8_rt_292,
      O => I_imager_sDupeRow_add0000(8)
    );
  I_imager_Madd_sDupeRow_add0000_xor_7_Q : XORCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(6),
      LI => I_imager_Madd_sDupeRow_add0000_cy_7_rt_290,
      O => I_imager_sDupeRow_add0000(7)
    );
  I_imager_Madd_sDupeRow_add0000_cy_7_Q : MUXCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(6),
      DI => N0,
      S => I_imager_Madd_sDupeRow_add0000_cy_7_rt_290,
      O => I_imager_Madd_sDupeRow_add0000_cy(7)
    );
  I_imager_Madd_sDupeRow_add0000_xor_6_Q : XORCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(5),
      LI => I_imager_Madd_sDupeRow_add0000_cy_6_rt_288,
      O => I_imager_sDupeRow_add0000(6)
    );
  I_imager_Madd_sDupeRow_add0000_cy_6_Q : MUXCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(5),
      DI => N0,
      S => I_imager_Madd_sDupeRow_add0000_cy_6_rt_288,
      O => I_imager_Madd_sDupeRow_add0000_cy(6)
    );
  I_imager_Madd_sDupeRow_add0000_xor_5_Q : XORCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(4),
      LI => I_imager_Madd_sDupeRow_add0000_cy_5_rt_286,
      O => I_imager_sDupeRow_add0000(5)
    );
  I_imager_Madd_sDupeRow_add0000_cy_5_Q : MUXCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(4),
      DI => N0,
      S => I_imager_Madd_sDupeRow_add0000_cy_5_rt_286,
      O => I_imager_Madd_sDupeRow_add0000_cy(5)
    );
  I_imager_Madd_sDupeRow_add0000_xor_4_Q : XORCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(3),
      LI => I_imager_Madd_sDupeRow_add0000_cy_4_rt_284,
      O => I_imager_sDupeRow_add0000(4)
    );
  I_imager_Madd_sDupeRow_add0000_cy_4_Q : MUXCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(3),
      DI => N0,
      S => I_imager_Madd_sDupeRow_add0000_cy_4_rt_284,
      O => I_imager_Madd_sDupeRow_add0000_cy(4)
    );
  I_imager_Madd_sDupeRow_add0000_xor_3_Q : XORCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(2),
      LI => I_imager_Madd_sDupeRow_add0000_cy_3_rt_282,
      O => I_imager_sDupeRow_add0000(3)
    );
  I_imager_Madd_sDupeRow_add0000_cy_3_Q : MUXCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(2),
      DI => N0,
      S => I_imager_Madd_sDupeRow_add0000_cy_3_rt_282,
      O => I_imager_Madd_sDupeRow_add0000_cy(3)
    );
  I_imager_Madd_sDupeRow_add0000_xor_2_Q : XORCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(1),
      LI => I_imager_Madd_sDupeRow_add0000_cy_2_rt_280,
      O => I_imager_sDupeRow_add0000(2)
    );
  I_imager_Madd_sDupeRow_add0000_cy_2_Q : MUXCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(1),
      DI => N0,
      S => I_imager_Madd_sDupeRow_add0000_cy_2_rt_280,
      O => I_imager_Madd_sDupeRow_add0000_cy(2)
    );
  I_imager_Madd_sDupeRow_add0000_xor_1_Q : XORCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(0),
      LI => I_imager_Madd_sDupeRow_add0000_cy_1_rt_278,
      O => I_imager_sDupeRow_add0000(1)
    );
  I_imager_Madd_sDupeRow_add0000_cy_1_Q : MUXCY
    port map (
      CI => I_imager_Madd_sDupeRow_add0000_cy(0),
      DI => N0,
      S => I_imager_Madd_sDupeRow_add0000_cy_1_rt_278,
      O => I_imager_Madd_sDupeRow_add0000_cy(1)
    );
  I_imager_Madd_sDupeRow_add0000_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => I_imager_Madd_sDupeRow_add0000_lut(0),
      O => I_imager_sDupeRow_add0000(0)
    );
  I_imager_Madd_sDupeRow_add0000_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => I_imager_Madd_sDupeRow_add0000_lut(0),
      O => I_imager_Madd_sDupeRow_add0000_cy(0)
    );
  I_imager_Madd_ADDR_add0002_xor_7_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0002_cy(6),
      LI => I_imager_Madd_ADDR_add0002_xor_7_rt_249,
      O => I_imager_ADDR_add0002(7)
    );
  I_imager_Madd_ADDR_add0002_xor_6_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0002_cy(5),
      LI => I_imager_Madd_ADDR_add0002_cy_6_rt_243,
      O => I_imager_ADDR_add0002(6)
    );
  I_imager_Madd_ADDR_add0002_cy_6_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_add0002_cy(5),
      DI => N0,
      S => I_imager_Madd_ADDR_add0002_cy_6_rt_243,
      O => I_imager_Madd_ADDR_add0002_cy(6)
    );
  I_imager_Madd_ADDR_add0002_xor_5_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0002_cy(4),
      LI => I_imager_Madd_ADDR_add0002_cy_5_rt_241,
      O => I_imager_ADDR_add0002(5)
    );
  I_imager_Madd_ADDR_add0002_cy_5_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_add0002_cy(4),
      DI => N0,
      S => I_imager_Madd_ADDR_add0002_cy_5_rt_241,
      O => I_imager_Madd_ADDR_add0002_cy(5)
    );
  I_imager_Madd_ADDR_add0002_xor_4_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0002_cy(3),
      LI => I_imager_Madd_ADDR_add0002_lut(4),
      O => I_imager_ADDR_add0002(4)
    );
  I_imager_Madd_ADDR_add0002_cy_4_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_add0002_cy(3),
      DI => N41,
      S => I_imager_Madd_ADDR_add0002_lut(4),
      O => I_imager_Madd_ADDR_add0002_cy(4)
    );
  I_imager_Madd_ADDR_add0002_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => N41,
      I1 => I_imager_iRow(4),
      O => I_imager_Madd_ADDR_add0002_lut(4)
    );
  I_imager_Madd_ADDR_add0002_xor_3_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0002_cy(2),
      LI => I_imager_Madd_ADDR_add0002_lut(3),
      O => I_imager_ADDR_add0002(3)
    );
  I_imager_Madd_ADDR_add0002_cy_3_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_add0002_cy(2),
      DI => N42,
      S => I_imager_Madd_ADDR_add0002_lut(3),
      O => I_imager_Madd_ADDR_add0002_cy(3)
    );
  I_imager_Madd_ADDR_add0002_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => N42,
      I1 => I_imager_iRow(3),
      O => I_imager_Madd_ADDR_add0002_lut(3)
    );
  I_imager_Madd_ADDR_add0002_xor_2_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0002_cy(1),
      LI => I_imager_Madd_ADDR_add0002_lut(2),
      O => I_imager_ADDR_add0002(2)
    );
  I_imager_Madd_ADDR_add0002_cy_2_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_add0002_cy(1),
      DI => N43,
      S => I_imager_Madd_ADDR_add0002_lut(2),
      O => I_imager_Madd_ADDR_add0002_cy(2)
    );
  I_imager_Madd_ADDR_add0002_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => N43,
      I1 => I_imager_iRow(2),
      O => I_imager_Madd_ADDR_add0002_lut(2)
    );
  I_imager_Madd_ADDR_add0002_xor_1_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0002_cy(0),
      LI => I_imager_Madd_ADDR_add0002_lut(1),
      O => I_imager_ADDR_add0002(1)
    );
  I_imager_Madd_ADDR_add0002_cy_1_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_add0002_cy(0),
      DI => N44,
      S => I_imager_Madd_ADDR_add0002_lut(1),
      O => I_imager_Madd_ADDR_add0002_cy(1)
    );
  I_imager_Madd_ADDR_add0002_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => N44,
      I1 => I_imager_iRow(1),
      O => I_imager_Madd_ADDR_add0002_lut(1)
    );
  I_imager_Madd_ADDR_add0002_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => I_imager_Madd_ADDR_add0002_lut(0),
      O => I_imager_ADDR_add0002(0)
    );
  I_imager_Madd_ADDR_add0002_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N45,
      S => I_imager_Madd_ADDR_add0002_lut(0),
      O => I_imager_Madd_ADDR_add0002_cy(0)
    );
  I_imager_Madd_ADDR_add0002_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => N45,
      I1 => I_imager_iRow(0),
      O => I_imager_Madd_ADDR_add0002_lut(0)
    );
  I_imager_Madd_ADDR_add0000_xor_7_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0000_cy(6),
      LI => I_imager_Madd_ADDR_add0000_xor_7_rt_234,
      O => I_imager_ADDR_add0000(7)
    );
  I_imager_Madd_ADDR_add0000_xor_6_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0000_cy(5),
      LI => I_imager_Madd_ADDR_add0000_cy_6_rt_228,
      O => I_imager_ADDR_add0000(6)
    );
  I_imager_Madd_ADDR_add0000_cy_6_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_add0000_cy(5),
      DI => N0,
      S => I_imager_Madd_ADDR_add0000_cy_6_rt_228,
      O => I_imager_Madd_ADDR_add0000_cy(6)
    );
  I_imager_Madd_ADDR_add0000_xor_5_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0000_cy(4),
      LI => I_imager_Madd_ADDR_add0000_cy_5_rt_226,
      O => I_imager_ADDR_add0000(5)
    );
  I_imager_Madd_ADDR_add0000_cy_5_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_add0000_cy(4),
      DI => N0,
      S => I_imager_Madd_ADDR_add0000_cy_5_rt_226,
      O => I_imager_Madd_ADDR_add0000_cy(5)
    );
  I_imager_Madd_ADDR_add0000_xor_4_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0000_cy(3),
      LI => I_imager_Madd_ADDR_add0000_lut(4),
      O => I_imager_ADDR_add0000(4)
    );
  I_imager_Madd_ADDR_add0000_cy_4_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_add0000_cy(3),
      DI => N41,
      S => I_imager_Madd_ADDR_add0000_lut(4),
      O => I_imager_Madd_ADDR_add0000_cy(4)
    );
  I_imager_Madd_ADDR_add0000_lut_4_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => N41,
      I1 => I_imager_iRow(4),
      O => I_imager_Madd_ADDR_add0000_lut(4)
    );
  I_imager_Madd_ADDR_add0000_xor_3_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0000_cy(2),
      LI => I_imager_Madd_ADDR_add0000_lut(3),
      O => I_imager_ADDR_add0000(3)
    );
  I_imager_Madd_ADDR_add0000_cy_3_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_add0000_cy(2),
      DI => N42,
      S => I_imager_Madd_ADDR_add0000_lut(3),
      O => I_imager_Madd_ADDR_add0000_cy(3)
    );
  I_imager_Madd_ADDR_add0000_lut_3_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => N42,
      I1 => I_imager_iRow(3),
      O => I_imager_Madd_ADDR_add0000_lut(3)
    );
  I_imager_Madd_ADDR_add0000_xor_2_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0000_cy(1),
      LI => I_imager_Madd_ADDR_add0000_lut(2),
      O => I_imager_ADDR_add0000(2)
    );
  I_imager_Madd_ADDR_add0000_cy_2_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_add0000_cy(1),
      DI => N43,
      S => I_imager_Madd_ADDR_add0000_lut(2),
      O => I_imager_Madd_ADDR_add0000_cy(2)
    );
  I_imager_Madd_ADDR_add0000_lut_2_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => N43,
      I1 => I_imager_iRow(2),
      O => I_imager_Madd_ADDR_add0000_lut(2)
    );
  I_imager_Madd_ADDR_add0000_xor_1_Q : XORCY
    port map (
      CI => I_imager_Madd_ADDR_add0000_cy(0),
      LI => I_imager_Madd_ADDR_add0000_lut(1),
      O => I_imager_ADDR_add0000(1)
    );
  I_imager_Madd_ADDR_add0000_cy_1_Q : MUXCY
    port map (
      CI => I_imager_Madd_ADDR_add0000_cy(0),
      DI => N44,
      S => I_imager_Madd_ADDR_add0000_lut(1),
      O => I_imager_Madd_ADDR_add0000_cy(1)
    );
  I_imager_Madd_ADDR_add0000_lut_1_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => N44,
      I1 => I_imager_iRow(1),
      O => I_imager_Madd_ADDR_add0000_lut(1)
    );
  I_imager_Madd_ADDR_add0000_xor_0_Q : XORCY
    port map (
      CI => N1,
      LI => I_imager_Madd_ADDR_add0000_lut(0),
      O => I_imager_ADDR_add0000(0)
    );
  I_imager_Madd_ADDR_add0000_cy_0_Q : MUXCY
    port map (
      CI => N1,
      DI => N45,
      S => I_imager_Madd_ADDR_add0000_lut(0),
      O => I_imager_Madd_ADDR_add0000_cy(0)
    );
  I_imager_Madd_ADDR_add0000_lut_0_Q : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => N45,
      I1 => I_imager_iRow(0),
      O => I_imager_Madd_ADDR_add0000_lut(0)
    );
  I_imager_iColumnPixel_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_not0001,
      D => I_imager_Result_3_4,
      R => I_imager_iColumnPixel_and0000,
      Q => I_imager_iColumnPixel(3)
    );
  I_imager_iColumnPixel_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_not0001,
      D => I_imager_Result_2_4,
      R => I_imager_iColumnPixel_and0000,
      Q => I_imager_iColumnPixel(2)
    );
  I_imager_iColumnPixel_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_not0001,
      D => I_imager_Result_1_4,
      R => I_imager_iColumnPixel_and0000,
      Q => I_imager_iColumnPixel(1)
    );
  I_imager_iColumnPixel_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_not0001,
      D => I_imager_Result_0_4,
      R => I_imager_iColumnPixel_and0000,
      Q => I_imager_iColumnPixel(0)
    );
  I_imager_iColumn_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iColumnPixel_and0000,
      D => I_imager_Result_5_1,
      R => I_imager_iColumn_and0000,
      Q => I_imager_iColumn(5)
    );
  I_imager_iColumn_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iColumnPixel_and0000,
      D => I_imager_Result_4_2,
      R => I_imager_iColumn_and0000,
      Q => I_imager_iColumn(4)
    );
  I_imager_iColumn_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iColumnPixel_and0000,
      D => I_imager_Result_3_3,
      R => I_imager_iColumn_and0000,
      Q => I_imager_iColumn(3)
    );
  I_imager_iColumn_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iColumnPixel_and0000,
      D => I_imager_Result_2_3,
      R => I_imager_iColumn_and0000,
      Q => I_imager_iColumn(2)
    );
  I_imager_iColumn_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iColumnPixel_and0000,
      D => I_imager_Result_1_3,
      R => I_imager_iColumn_and0000,
      Q => I_imager_iColumn(1)
    );
  I_imager_iColumn_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iColumnPixel_and0000,
      D => I_imager_Result_0_3,
      R => I_imager_iColumn_and0000,
      Q => I_imager_iColumn(0)
    );
  I_imager_iAdjXPixel_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_not0001,
      D => I_imager_Result(8),
      R => I_imager_iAdjXPixel_and0000,
      Q => I_imager_iAdjXPixel(8)
    );
  I_imager_iAdjXPixel_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_not0001,
      D => I_imager_Result(7),
      R => I_imager_iAdjXPixel_and0000,
      Q => I_imager_iAdjXPixel(7)
    );
  I_imager_iAdjXPixel_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_not0001,
      D => I_imager_Result(6),
      R => I_imager_iAdjXPixel_and0000,
      Q => I_imager_iAdjXPixel(6)
    );
  I_imager_iAdjXPixel_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_not0001,
      D => I_imager_Result(5),
      R => I_imager_iAdjXPixel_and0000,
      Q => I_imager_iAdjXPixel(5)
    );
  I_imager_iAdjXPixel_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_not0001,
      D => I_imager_Result_4_1_369,
      R => I_imager_iAdjXPixel_and0000,
      Q => I_imager_iAdjXPixel(4)
    );
  I_imager_iAdjXPixel_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_not0001,
      D => I_imager_Result_3_2_365,
      R => I_imager_iAdjXPixel_and0000,
      Q => I_imager_iAdjXPixel(3)
    );
  I_imager_iAdjXPixel_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_not0001,
      D => I_imager_Result_2_2_360,
      R => I_imager_iAdjXPixel_and0000,
      Q => I_imager_iAdjXPixel(2)
    );
  I_imager_iAdjXPixel_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_not0001,
      D => I_imager_Result_1_2_355,
      R => I_imager_iAdjXPixel_and0000,
      Q => I_imager_iAdjXPixel(1)
    );
  I_imager_iAdjXPixel_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_not0001,
      D => I_imager_Result_0_2,
      R => I_imager_iAdjXPixel_and0000,
      Q => I_imager_iAdjXPixel(0)
    );
  I_imager_iRow_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iRowPixel_and0000,
      D => I_imager_Result(4),
      R => I_imager_iRow_and0000_455,
      Q => I_imager_iRow(4)
    );
  I_imager_iRow_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iRowPixel_and0000,
      D => I_imager_Result_3_1,
      R => I_imager_iRow_and0000_455,
      Q => I_imager_iRow(3)
    );
  I_imager_iRow_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iRowPixel_and0000,
      D => I_imager_Result_2_1,
      R => I_imager_iRow_and0000_455,
      Q => I_imager_iRow(2)
    );
  I_imager_iRow_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iRowPixel_and0000,
      D => I_imager_Result_1_1,
      R => I_imager_iRow_and0000_455,
      Q => I_imager_iRow(1)
    );
  I_imager_iRow_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iRowPixel_and0000,
      D => I_imager_Result_0_1,
      R => I_imager_iRow_and0000_455,
      Q => I_imager_iRow(0)
    );
  I_imager_iRowPixel_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iRowPixel_not0001,
      D => I_imager_Result(3),
      R => I_imager_iRowPixel_and0000,
      Q => I_imager_iRowPixel(3)
    );
  I_imager_iRowPixel_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iRowPixel_not0001,
      D => I_imager_Result(2),
      R => I_imager_iRowPixel_and0000,
      Q => I_imager_iRowPixel(2)
    );
  I_imager_iRowPixel_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iRowPixel_not0001,
      D => I_imager_Result(1),
      R => I_imager_iRowPixel_and0000,
      Q => I_imager_iRowPixel(1)
    );
  I_imager_iRowPixel_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iRowPixel_not0001,
      D => I_imager_Result(0),
      R => I_imager_iRowPixel_and0000,
      Q => I_imager_iRowPixel(0)
    );
  I_imager_Mram_aCharDataBuffer8 : RAM16X1S
    port map (
      A0 => I_imager_iStCharCount(0),
      A1 => I_imager_iStCharCount(1),
      A2 => I_imager_iStCharCount(2),
      A3 => N0,
      D => I_imager_mux0000(0),
      WCLK => I_pixel_clock_pulse_533,
      WE => I_imager_HSYNC_inv,
      O => I_imager_varindex0000(0)
    );
  I_imager_Mram_aCharDataBuffer7 : RAM16X1S
    port map (
      A0 => I_imager_iStCharCount(0),
      A1 => I_imager_iStCharCount(1),
      A2 => I_imager_iStCharCount(2),
      A3 => N0,
      D => I_imager_mux0000(1),
      WCLK => I_pixel_clock_pulse_533,
      WE => I_imager_HSYNC_inv,
      O => I_imager_varindex0000(1)
    );
  I_imager_Mram_aCharDataBuffer6 : RAM16X1S
    port map (
      A0 => I_imager_iStCharCount(0),
      A1 => I_imager_iStCharCount(1),
      A2 => I_imager_iStCharCount(2),
      A3 => N0,
      D => I_imager_mux0000(2),
      WCLK => I_pixel_clock_pulse_533,
      WE => I_imager_HSYNC_inv,
      O => I_imager_varindex0000(2)
    );
  I_imager_Mram_aCharDataBuffer5 : RAM16X1S
    port map (
      A0 => I_imager_iStCharCount(0),
      A1 => I_imager_iStCharCount(1),
      A2 => I_imager_iStCharCount(2),
      A3 => N0,
      D => I_imager_mux0000(3),
      WCLK => I_pixel_clock_pulse_533,
      WE => I_imager_HSYNC_inv,
      O => I_imager_varindex0000(3)
    );
  I_imager_Mram_aCharDataBuffer4 : RAM16X1S
    port map (
      A0 => I_imager_iStCharCount(0),
      A1 => I_imager_iStCharCount(1),
      A2 => I_imager_iStCharCount(2),
      A3 => N0,
      D => I_imager_mux0000(4),
      WCLK => I_pixel_clock_pulse_533,
      WE => I_imager_HSYNC_inv,
      O => I_imager_varindex0000(4)
    );
  I_imager_Mram_aCharDataBuffer3 : RAM16X1S
    port map (
      A0 => I_imager_iStCharCount(0),
      A1 => I_imager_iStCharCount(1),
      A2 => I_imager_iStCharCount(2),
      A3 => N0,
      D => I_imager_mux0000(5),
      WCLK => I_pixel_clock_pulse_533,
      WE => I_imager_HSYNC_inv,
      O => I_imager_varindex0000(5)
    );
  I_imager_Mram_aCharDataBuffer2 : RAM16X1S
    port map (
      A0 => I_imager_iStCharCount(0),
      A1 => I_imager_iStCharCount(1),
      A2 => I_imager_iStCharCount(2),
      A3 => N0,
      D => I_imager_mux0000(6),
      WCLK => I_pixel_clock_pulse_533,
      WE => I_imager_HSYNC_inv,
      O => I_imager_varindex0000(6)
    );
  I_imager_Mram_aCharDataBuffer1 : RAM16X1S
    port map (
      A0 => I_imager_iStCharCount(0),
      A1 => I_imager_iStCharCount(1),
      A2 => I_imager_iStCharCount(2),
      A3 => N0,
      D => I_imager_mux0000(7),
      WCLK => I_pixel_clock_pulse_533,
      WE => I_imager_HSYNC_inv,
      O => I_imager_varindex0000(7)
    );
  I_imager_Mmult_ADDR_mult0000 : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 0,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => N0,
      CEB => N0,
      CEP => N0,
      CLK => N0,
      RSTA => N0,
      RSTB => N0,
      RSTP => N0,
      A(17) => N0,
      A(16) => N0,
      A(15) => N0,
      A(14) => N0,
      A(13) => N0,
      A(12) => N0,
      A(11) => N0,
      A(10) => N0,
      A(9) => N0,
      A(8) => N0,
      A(7) => N0,
      A(6) => N0,
      A(5) => I_imager_iColumn(5),
      A(4) => I_imager_iColumn(4),
      A(3) => I_imager_iColumn(3),
      A(2) => I_imager_iColumn(2),
      A(1) => I_imager_iColumn(1),
      A(0) => I_imager_iColumn(0),
      B(17) => N0,
      B(16) => N0,
      B(15) => N0,
      B(14) => N0,
      B(13) => N0,
      B(12) => N0,
      B(11) => N0,
      B(10) => N0,
      B(9) => N0,
      B(8) => N0,
      B(7) => N0,
      B(6) => N0,
      B(5) => I_imager_Madd_ADDR_addsub0000_cy(4),
      B(4) => I_imager_Result(4),
      B(3) => I_imager_Result_3_1,
      B(2) => I_imager_Result_2_1,
      B(1) => I_imager_Result_1_1,
      B(0) => I_imager_Result_0_1,
      BCIN(17) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_17_UNCONNECTED,
      BCIN(16) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_16_UNCONNECTED,
      BCIN(15) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_15_UNCONNECTED,
      BCIN(14) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_14_UNCONNECTED,
      BCIN(13) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_13_UNCONNECTED,
      BCIN(12) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_12_UNCONNECTED,
      BCIN(11) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_11_UNCONNECTED,
      BCIN(10) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_10_UNCONNECTED,
      BCIN(9) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_9_UNCONNECTED,
      BCIN(8) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_8_UNCONNECTED,
      BCIN(7) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_7_UNCONNECTED,
      BCIN(6) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_6_UNCONNECTED,
      BCIN(5) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_5_UNCONNECTED,
      BCIN(4) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_4_UNCONNECTED,
      BCIN(3) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_3_UNCONNECTED,
      BCIN(2) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_2_UNCONNECTED,
      BCIN(1) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_1_UNCONNECTED,
      BCIN(0) => NLW_I_imager_Mmult_ADDR_mult0000_BCIN_0_UNCONNECTED,
      P(35) => NLW_I_imager_Mmult_ADDR_mult0000_P_35_UNCONNECTED,
      P(34) => NLW_I_imager_Mmult_ADDR_mult0000_P_34_UNCONNECTED,
      P(33) => NLW_I_imager_Mmult_ADDR_mult0000_P_33_UNCONNECTED,
      P(32) => NLW_I_imager_Mmult_ADDR_mult0000_P_32_UNCONNECTED,
      P(31) => NLW_I_imager_Mmult_ADDR_mult0000_P_31_UNCONNECTED,
      P(30) => NLW_I_imager_Mmult_ADDR_mult0000_P_30_UNCONNECTED,
      P(29) => NLW_I_imager_Mmult_ADDR_mult0000_P_29_UNCONNECTED,
      P(28) => NLW_I_imager_Mmult_ADDR_mult0000_P_28_UNCONNECTED,
      P(27) => NLW_I_imager_Mmult_ADDR_mult0000_P_27_UNCONNECTED,
      P(26) => NLW_I_imager_Mmult_ADDR_mult0000_P_26_UNCONNECTED,
      P(25) => NLW_I_imager_Mmult_ADDR_mult0000_P_25_UNCONNECTED,
      P(24) => NLW_I_imager_Mmult_ADDR_mult0000_P_24_UNCONNECTED,
      P(23) => NLW_I_imager_Mmult_ADDR_mult0000_P_23_UNCONNECTED,
      P(22) => NLW_I_imager_Mmult_ADDR_mult0000_P_22_UNCONNECTED,
      P(21) => NLW_I_imager_Mmult_ADDR_mult0000_P_21_UNCONNECTED,
      P(20) => NLW_I_imager_Mmult_ADDR_mult0000_P_20_UNCONNECTED,
      P(19) => NLW_I_imager_Mmult_ADDR_mult0000_P_19_UNCONNECTED,
      P(18) => NLW_I_imager_Mmult_ADDR_mult0000_P_18_UNCONNECTED,
      P(17) => NLW_I_imager_Mmult_ADDR_mult0000_P_17_UNCONNECTED,
      P(16) => NLW_I_imager_Mmult_ADDR_mult0000_P_16_UNCONNECTED,
      P(15) => NLW_I_imager_Mmult_ADDR_mult0000_P_15_UNCONNECTED,
      P(14) => NLW_I_imager_Mmult_ADDR_mult0000_P_14_UNCONNECTED,
      P(13) => NLW_I_imager_Mmult_ADDR_mult0000_P_13_UNCONNECTED,
      P(12) => NLW_I_imager_Mmult_ADDR_mult0000_P_12_UNCONNECTED,
      P(11) => I_imager_ADDR_mult0000(11),
      P(10) => I_imager_ADDR_mult0000(10),
      P(9) => I_imager_ADDR_mult0000(9),
      P(8) => I_imager_ADDR_mult0000(8),
      P(7) => I_imager_ADDR_mult0000(7),
      P(6) => I_imager_ADDR_mult0000(6),
      P(5) => I_imager_ADDR_mult0000(5),
      P(4) => I_imager_ADDR_mult0000(4),
      P(3) => I_imager_ADDR_mult0000(3),
      P(2) => I_imager_ADDR_mult0000(2),
      P(1) => I_imager_ADDR_mult0000(1),
      P(0) => I_imager_ADDR_mult0000(0),
      BCOUT(17) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_I_imager_Mmult_ADDR_mult0000_BCOUT_0_UNCONNECTED
    );
  I_imager_Mmult_ADDR_mult0001 : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 0,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => N0,
      CEB => N0,
      CEP => N0,
      CLK => N0,
      RSTA => N0,
      RSTB => N0,
      RSTP => N0,
      A(17) => N0,
      A(16) => N0,
      A(15) => N0,
      A(14) => N0,
      A(13) => N0,
      A(12) => N0,
      A(11) => N0,
      A(10) => N0,
      A(9) => N0,
      A(8) => N0,
      A(7) => N0,
      A(6) => N0,
      A(5) => N0,
      A(4) => I_imager_Result(4),
      A(3) => I_imager_Result_3_1,
      A(2) => I_imager_Result_2_1,
      A(1) => I_imager_Result_1_1,
      A(0) => I_imager_Result_0_1,
      B(17) => N0,
      B(16) => N0,
      B(15) => N0,
      B(14) => N0,
      B(13) => N0,
      B(12) => N0,
      B(11) => N0,
      B(10) => N0,
      B(9) => N0,
      B(8) => N0,
      B(7) => N0,
      B(6) => N0,
      B(5) => N1,
      B(4) => N0,
      B(3) => N1,
      B(2) => N0,
      B(1) => N0,
      B(0) => N0,
      BCIN(17) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_17_UNCONNECTED,
      BCIN(16) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_16_UNCONNECTED,
      BCIN(15) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_15_UNCONNECTED,
      BCIN(14) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_14_UNCONNECTED,
      BCIN(13) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_13_UNCONNECTED,
      BCIN(12) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_12_UNCONNECTED,
      BCIN(11) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_11_UNCONNECTED,
      BCIN(10) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_10_UNCONNECTED,
      BCIN(9) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_9_UNCONNECTED,
      BCIN(8) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_8_UNCONNECTED,
      BCIN(7) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_7_UNCONNECTED,
      BCIN(6) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_6_UNCONNECTED,
      BCIN(5) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_5_UNCONNECTED,
      BCIN(4) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_4_UNCONNECTED,
      BCIN(3) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_3_UNCONNECTED,
      BCIN(2) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_2_UNCONNECTED,
      BCIN(1) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_1_UNCONNECTED,
      BCIN(0) => NLW_I_imager_Mmult_ADDR_mult0001_BCIN_0_UNCONNECTED,
      P(35) => NLW_I_imager_Mmult_ADDR_mult0001_P_35_UNCONNECTED,
      P(34) => NLW_I_imager_Mmult_ADDR_mult0001_P_34_UNCONNECTED,
      P(33) => NLW_I_imager_Mmult_ADDR_mult0001_P_33_UNCONNECTED,
      P(32) => NLW_I_imager_Mmult_ADDR_mult0001_P_32_UNCONNECTED,
      P(31) => NLW_I_imager_Mmult_ADDR_mult0001_P_31_UNCONNECTED,
      P(30) => NLW_I_imager_Mmult_ADDR_mult0001_P_30_UNCONNECTED,
      P(29) => NLW_I_imager_Mmult_ADDR_mult0001_P_29_UNCONNECTED,
      P(28) => NLW_I_imager_Mmult_ADDR_mult0001_P_28_UNCONNECTED,
      P(27) => NLW_I_imager_Mmult_ADDR_mult0001_P_27_UNCONNECTED,
      P(26) => NLW_I_imager_Mmult_ADDR_mult0001_P_26_UNCONNECTED,
      P(25) => NLW_I_imager_Mmult_ADDR_mult0001_P_25_UNCONNECTED,
      P(24) => NLW_I_imager_Mmult_ADDR_mult0001_P_24_UNCONNECTED,
      P(23) => NLW_I_imager_Mmult_ADDR_mult0001_P_23_UNCONNECTED,
      P(22) => NLW_I_imager_Mmult_ADDR_mult0001_P_22_UNCONNECTED,
      P(21) => NLW_I_imager_Mmult_ADDR_mult0001_P_21_UNCONNECTED,
      P(20) => NLW_I_imager_Mmult_ADDR_mult0001_P_20_UNCONNECTED,
      P(19) => NLW_I_imager_Mmult_ADDR_mult0001_P_19_UNCONNECTED,
      P(18) => NLW_I_imager_Mmult_ADDR_mult0001_P_18_UNCONNECTED,
      P(17) => NLW_I_imager_Mmult_ADDR_mult0001_P_17_UNCONNECTED,
      P(16) => NLW_I_imager_Mmult_ADDR_mult0001_P_16_UNCONNECTED,
      P(15) => NLW_I_imager_Mmult_ADDR_mult0001_P_15_UNCONNECTED,
      P(14) => NLW_I_imager_Mmult_ADDR_mult0001_P_14_UNCONNECTED,
      P(13) => NLW_I_imager_Mmult_ADDR_mult0001_P_13_UNCONNECTED,
      P(12) => NLW_I_imager_Mmult_ADDR_mult0001_P_12_UNCONNECTED,
      P(11) => I_imager_ADDR_mult0001(11),
      P(10) => I_imager_ADDR_mult0001(10),
      P(9) => I_imager_ADDR_mult0001(9),
      P(8) => I_imager_ADDR_mult0001(8),
      P(7) => I_imager_ADDR_mult0001(7),
      P(6) => I_imager_ADDR_mult0001(6),
      P(5) => I_imager_ADDR_mult0001(5),
      P(4) => I_imager_ADDR_mult0001(4),
      P(3) => I_imager_ADDR_mult0001(3),
      P(2) => I_imager_ADDR_mult0001(2),
      P(1) => I_imager_ADDR_mult0001(1),
      P(0) => I_imager_ADDR_mult0001(0),
      BCOUT(17) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_I_imager_Mmult_ADDR_mult0001_BCOUT_0_UNCONNECTED
    );
  I_imager_Mmult_sResult_mult0003 : MULT18X18SIO
    generic map(
      B_INPUT => "DIRECT",
      AREG => 0,
      BREG => 0,
      PREG => 0
    )
    port map (
      CEA => N0,
      CEB => N0,
      CEP => N0,
      CLK => N0,
      RSTA => N0,
      RSTB => N0,
      RSTP => N0,
      A(17) => N0,
      A(16) => N0,
      A(15) => N0,
      A(14) => N0,
      A(13) => N0,
      A(12) => N0,
      A(11) => N0,
      A(10) => N0,
      A(9) => N0,
      A(8) => N0,
      A(7) => N0,
      A(6) => N0,
      A(5) => N0,
      A(4) => I_imager_iRow(4),
      A(3) => I_imager_iRow(3),
      A(2) => I_imager_iRow(2),
      A(1) => I_imager_iRow(1),
      A(0) => I_imager_iRow(0),
      B(17) => N0,
      B(16) => N0,
      B(15) => N0,
      B(14) => N0,
      B(13) => N0,
      B(12) => N0,
      B(11) => N0,
      B(10) => N0,
      B(9) => N0,
      B(8) => N0,
      B(7) => N0,
      B(6) => N0,
      B(5) => N1,
      B(4) => N0,
      B(3) => N1,
      B(2) => N0,
      B(1) => N0,
      B(0) => N0,
      BCIN(17) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_17_UNCONNECTED,
      BCIN(16) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_16_UNCONNECTED,
      BCIN(15) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_15_UNCONNECTED,
      BCIN(14) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_14_UNCONNECTED,
      BCIN(13) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_13_UNCONNECTED,
      BCIN(12) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_12_UNCONNECTED,
      BCIN(11) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_11_UNCONNECTED,
      BCIN(10) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_10_UNCONNECTED,
      BCIN(9) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_9_UNCONNECTED,
      BCIN(8) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_8_UNCONNECTED,
      BCIN(7) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_7_UNCONNECTED,
      BCIN(6) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_6_UNCONNECTED,
      BCIN(5) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_5_UNCONNECTED,
      BCIN(4) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_4_UNCONNECTED,
      BCIN(3) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_3_UNCONNECTED,
      BCIN(2) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_2_UNCONNECTED,
      BCIN(1) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_1_UNCONNECTED,
      BCIN(0) => NLW_I_imager_Mmult_sResult_mult0003_BCIN_0_UNCONNECTED,
      P(35) => NLW_I_imager_Mmult_sResult_mult0003_P_35_UNCONNECTED,
      P(34) => NLW_I_imager_Mmult_sResult_mult0003_P_34_UNCONNECTED,
      P(33) => NLW_I_imager_Mmult_sResult_mult0003_P_33_UNCONNECTED,
      P(32) => NLW_I_imager_Mmult_sResult_mult0003_P_32_UNCONNECTED,
      P(31) => NLW_I_imager_Mmult_sResult_mult0003_P_31_UNCONNECTED,
      P(30) => NLW_I_imager_Mmult_sResult_mult0003_P_30_UNCONNECTED,
      P(29) => NLW_I_imager_Mmult_sResult_mult0003_P_29_UNCONNECTED,
      P(28) => NLW_I_imager_Mmult_sResult_mult0003_P_28_UNCONNECTED,
      P(27) => NLW_I_imager_Mmult_sResult_mult0003_P_27_UNCONNECTED,
      P(26) => NLW_I_imager_Mmult_sResult_mult0003_P_26_UNCONNECTED,
      P(25) => NLW_I_imager_Mmult_sResult_mult0003_P_25_UNCONNECTED,
      P(24) => NLW_I_imager_Mmult_sResult_mult0003_P_24_UNCONNECTED,
      P(23) => NLW_I_imager_Mmult_sResult_mult0003_P_23_UNCONNECTED,
      P(22) => NLW_I_imager_Mmult_sResult_mult0003_P_22_UNCONNECTED,
      P(21) => NLW_I_imager_Mmult_sResult_mult0003_P_21_UNCONNECTED,
      P(20) => NLW_I_imager_Mmult_sResult_mult0003_P_20_UNCONNECTED,
      P(19) => NLW_I_imager_Mmult_sResult_mult0003_P_19_UNCONNECTED,
      P(18) => NLW_I_imager_Mmult_sResult_mult0003_P_18_UNCONNECTED,
      P(17) => NLW_I_imager_Mmult_sResult_mult0003_P_17_UNCONNECTED,
      P(16) => NLW_I_imager_Mmult_sResult_mult0003_P_16_UNCONNECTED,
      P(15) => NLW_I_imager_Mmult_sResult_mult0003_P_15_UNCONNECTED,
      P(14) => NLW_I_imager_Mmult_sResult_mult0003_P_14_UNCONNECTED,
      P(13) => NLW_I_imager_Mmult_sResult_mult0003_P_13_UNCONNECTED,
      P(12) => NLW_I_imager_Mmult_sResult_mult0003_P_12_UNCONNECTED,
      P(11) => I_imager_ADDR_mux0002_11_mand,
      P(10) => I_imager_ADDR_mux0002_10_mand_147,
      P(9) => I_imager_ADDR_mux0002_9_mand_168,
      P(8) => I_imager_ADDR_mux0002_8_mand_166,
      P(7) => I_imager_ADDR_mux0002_7_mand_164,
      P(6) => I_imager_ADDR_mux0002_6_mand_162,
      P(5) => I_imager_ADDR_mux0002_5_mand_160,
      P(4) => I_imager_ADDR_mux0002_4_mand_158,
      P(3) => I_imager_ADDR_mux0002_3_mand_156,
      P(2) => I_imager_sResult_mult0003(2),
      P(1) => I_imager_sResult_mult0003(1),
      P(0) => I_imager_sResult_mult0003(0),
      BCOUT(17) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_17_UNCONNECTED,
      BCOUT(16) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_16_UNCONNECTED,
      BCOUT(15) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_15_UNCONNECTED,
      BCOUT(14) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_14_UNCONNECTED,
      BCOUT(13) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_13_UNCONNECTED,
      BCOUT(12) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_12_UNCONNECTED,
      BCOUT(11) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_11_UNCONNECTED,
      BCOUT(10) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_10_UNCONNECTED,
      BCOUT(9) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_9_UNCONNECTED,
      BCOUT(8) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_8_UNCONNECTED,
      BCOUT(7) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_7_UNCONNECTED,
      BCOUT(6) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_6_UNCONNECTED,
      BCOUT(5) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_5_UNCONNECTED,
      BCOUT(4) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_4_UNCONNECTED,
      BCOUT(3) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_3_UNCONNECTED,
      BCOUT(2) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_2_UNCONNECTED,
      BCOUT(1) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_1_UNCONNECTED,
      BCOUT(0) => NLW_I_imager_Mmult_sResult_mult0003_BCOUT_0_UNCONNECTED
    );
  I_imager_RGB_5 : FDE
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_RGB_not0001,
      D => I_imager_RGB_mux0001(0),
      Q => I_imager_RGB(5)
    );
  I_imager_draw_fetch_state_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_draw_fetch_state_0_not0001,
      D => N1,
      Q => I_imager_draw_fetch_state(0)
    );
  I_imager_iStCharCount_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_iStCharCount_mux0000(0),
      Q => I_imager_iStCharCount(2)
    );
  I_imager_iStCharCount_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_iStCharCount_mux0000(1),
      Q => I_imager_iStCharCount(1)
    );
  I_imager_iStCharCount_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_iStCharCount_mux0000(2),
      Q => I_imager_iStCharCount(0)
    );
  I_imager_iStCharLoc_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_iStCharLoc_mux0000(7),
      Q => I_imager_iStCharLoc(7)
    );
  I_imager_iStCharLoc_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_iStCharLoc_mux0000(6),
      Q => I_imager_iStCharLoc(6)
    );
  I_imager_iStCharLoc_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_iStCharLoc_mux0000(5),
      Q => I_imager_iStCharLoc(5)
    );
  I_imager_iStCharLoc_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_iStCharLoc_mux0000(4),
      Q => I_imager_iStCharLoc(4)
    );
  I_imager_iStCharLoc_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_iStCharLoc_mux0000(3),
      Q => I_imager_iStCharLoc(3)
    );
  I_imager_iStCharLoc_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_iStCharLoc_mux0000(2),
      Q => I_imager_iStCharLoc(2)
    );
  I_imager_iStCharLoc_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_iStCharLoc_mux0000(1),
      Q => I_imager_iStCharLoc(1)
    );
  I_imager_iStCharLoc_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_iStCharLoc_mux0000(0),
      Q => I_imager_iStCharLoc(0)
    );
  I_imager_DATA_OUT_7 : FDE
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_DATA_OUT_mux0000(0),
      Q => I_imager_DATA_OUT(7)
    );
  I_imager_DATA_OUT_6 : FDE
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_DATA_OUT_mux0000(1),
      Q => I_imager_DATA_OUT(6)
    );
  I_imager_DATA_OUT_5 : FDE
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_DATA_OUT_mux0000(2),
      Q => I_imager_DATA_OUT(5)
    );
  I_imager_DATA_OUT_4 : FDE
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_DATA_OUT_mux0000(3),
      Q => I_imager_DATA_OUT(4)
    );
  I_imager_DATA_OUT_3 : FDE
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_DATA_OUT_mux0000(4),
      Q => I_imager_DATA_OUT(3)
    );
  I_imager_DATA_OUT_2 : FDE
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_DATA_OUT_mux0000(5),
      Q => I_imager_DATA_OUT(2)
    );
  I_imager_DATA_OUT_1 : FDE
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_DATA_OUT_mux0000(6),
      Q => I_imager_DATA_OUT(1)
    );
  I_imager_DATA_OUT_0 : FDE
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_HSYNC_inv,
      D => I_imager_DATA_OUT_mux0000(7),
      Q => I_imager_DATA_OUT(0)
    );
  I_imager_iCurrentChar_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iCurrentChar_not0001,
      D => I_imager_iCurrentChar_mux0001(0),
      Q => I_imager_iCurrentChar(0)
    );
  I_imager_iCurrentChar_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iCurrentChar_not0001,
      D => I_imager_iCurrentChar_mux0001(1),
      Q => I_imager_iCurrentChar(1)
    );
  I_imager_iCurrentChar_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iCurrentChar_not0001,
      D => I_imager_iCurrentChar_mux0001(2),
      Q => I_imager_iCurrentChar(2)
    );
  I_imager_iCurrentChar_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iCurrentChar_not0001,
      D => I_imager_iCurrentChar_mux0001(3),
      Q => I_imager_iCurrentChar(3)
    );
  I_imager_iCurrentChar_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iCurrentChar_not0001,
      D => I_imager_iCurrentChar_mux0001(4),
      Q => I_imager_iCurrentChar(4)
    );
  I_imager_iCurrentChar_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iCurrentChar_not0001,
      D => I_imager_iCurrentChar_mux0001(5),
      Q => I_imager_iCurrentChar(5)
    );
  I_imager_iCurrentChar_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iCurrentChar_not0001,
      D => I_imager_iCurrentChar_mux0001(6),
      Q => I_imager_iCurrentChar(6)
    );
  I_imager_iCurrentChar_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iCurrentChar_not0001,
      D => I_imager_iCurrentChar_mux0001(7),
      Q => I_imager_iCurrentChar(7)
    );
  I_imager_RAM_WR : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_RAM_WR_not0001,
      D => I_imager_RAM_WR_mux0000,
      Q => I_imager_RAM_WR_339
    );
  I_imager_sDupeRow : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_imager_iAdjXPixel_and0000,
      D => I_imager_sDupeRow_mux0001,
      Q => I_imager_sDupeRow_519
    );
  I_vga_controller_Mcount_h_count_xor_9_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(8),
      LI => I_vga_controller_Mcount_h_count_xor_9_rt_561,
      O => I_vga_controller_Result_9_1
    );
  I_vga_controller_Mcount_h_count_xor_8_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(7),
      LI => I_vga_controller_Mcount_h_count_cy_8_rt_559,
      O => I_vga_controller_Result_8_1
    );
  I_vga_controller_Mcount_h_count_cy_8_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(7),
      DI => N0,
      S => I_vga_controller_Mcount_h_count_cy_8_rt_559,
      O => I_vga_controller_Mcount_h_count_cy(8)
    );
  I_vga_controller_Mcount_h_count_xor_7_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(6),
      LI => I_vga_controller_Mcount_h_count_cy_7_rt_557,
      O => I_vga_controller_Result_7_1
    );
  I_vga_controller_Mcount_h_count_cy_7_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(6),
      DI => N0,
      S => I_vga_controller_Mcount_h_count_cy_7_rt_557,
      O => I_vga_controller_Mcount_h_count_cy(7)
    );
  I_vga_controller_Mcount_h_count_xor_6_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(5),
      LI => I_vga_controller_Mcount_h_count_cy_6_rt_555,
      O => I_vga_controller_Result_6_1
    );
  I_vga_controller_Mcount_h_count_cy_6_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(5),
      DI => N0,
      S => I_vga_controller_Mcount_h_count_cy_6_rt_555,
      O => I_vga_controller_Mcount_h_count_cy(6)
    );
  I_vga_controller_Mcount_h_count_xor_5_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(4),
      LI => I_vga_controller_Mcount_h_count_cy_5_rt_553,
      O => I_vga_controller_Result_5_1
    );
  I_vga_controller_Mcount_h_count_cy_5_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(4),
      DI => N0,
      S => I_vga_controller_Mcount_h_count_cy_5_rt_553,
      O => I_vga_controller_Mcount_h_count_cy(5)
    );
  I_vga_controller_Mcount_h_count_xor_4_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(3),
      LI => I_vga_controller_Mcount_h_count_cy_4_rt_551,
      O => I_vga_controller_Result_4_1
    );
  I_vga_controller_Mcount_h_count_cy_4_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(3),
      DI => N0,
      S => I_vga_controller_Mcount_h_count_cy_4_rt_551,
      O => I_vga_controller_Mcount_h_count_cy(4)
    );
  I_vga_controller_Mcount_h_count_xor_3_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(2),
      LI => I_vga_controller_Mcount_h_count_cy_3_rt_549,
      O => I_vga_controller_Result_3_1
    );
  I_vga_controller_Mcount_h_count_cy_3_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(2),
      DI => N0,
      S => I_vga_controller_Mcount_h_count_cy_3_rt_549,
      O => I_vga_controller_Mcount_h_count_cy(3)
    );
  I_vga_controller_Mcount_h_count_xor_2_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(1),
      LI => I_vga_controller_Mcount_h_count_cy_2_rt_547,
      O => I_vga_controller_Result_2_1
    );
  I_vga_controller_Mcount_h_count_cy_2_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(1),
      DI => N0,
      S => I_vga_controller_Mcount_h_count_cy_2_rt_547,
      O => I_vga_controller_Mcount_h_count_cy(2)
    );
  I_vga_controller_Mcount_h_count_xor_1_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(0),
      LI => I_vga_controller_Mcount_h_count_cy_1_rt_545,
      O => I_vga_controller_Result_1_1
    );
  I_vga_controller_Mcount_h_count_cy_1_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_h_count_cy(0),
      DI => N0,
      S => I_vga_controller_Mcount_h_count_cy_1_rt_545,
      O => I_vga_controller_Mcount_h_count_cy(1)
    );
  I_vga_controller_Mcount_h_count_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => I_vga_controller_Mcount_h_count_lut(0),
      O => I_vga_controller_Result_0_1
    );
  I_vga_controller_Mcount_h_count_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => I_vga_controller_Mcount_h_count_lut(0),
      O => I_vga_controller_Mcount_h_count_cy(0)
    );
  I_vga_controller_Mcount_v_count_xor_9_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(8),
      LI => I_vga_controller_Mcount_v_count_xor_9_rt_580,
      O => I_vga_controller_Result(9)
    );
  I_vga_controller_Mcount_v_count_xor_8_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(7),
      LI => I_vga_controller_Mcount_v_count_cy_8_rt_578,
      O => I_vga_controller_Result(8)
    );
  I_vga_controller_Mcount_v_count_cy_8_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(7),
      DI => N0,
      S => I_vga_controller_Mcount_v_count_cy_8_rt_578,
      O => I_vga_controller_Mcount_v_count_cy(8)
    );
  I_vga_controller_Mcount_v_count_xor_7_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(6),
      LI => I_vga_controller_Mcount_v_count_cy_7_rt_576,
      O => I_vga_controller_Result(7)
    );
  I_vga_controller_Mcount_v_count_cy_7_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(6),
      DI => N0,
      S => I_vga_controller_Mcount_v_count_cy_7_rt_576,
      O => I_vga_controller_Mcount_v_count_cy(7)
    );
  I_vga_controller_Mcount_v_count_xor_6_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(5),
      LI => I_vga_controller_Mcount_v_count_cy_6_rt_574,
      O => I_vga_controller_Result(6)
    );
  I_vga_controller_Mcount_v_count_cy_6_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(5),
      DI => N0,
      S => I_vga_controller_Mcount_v_count_cy_6_rt_574,
      O => I_vga_controller_Mcount_v_count_cy(6)
    );
  I_vga_controller_Mcount_v_count_xor_5_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(4),
      LI => I_vga_controller_Mcount_v_count_cy_5_rt_572,
      O => I_vga_controller_Result(5)
    );
  I_vga_controller_Mcount_v_count_cy_5_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(4),
      DI => N0,
      S => I_vga_controller_Mcount_v_count_cy_5_rt_572,
      O => I_vga_controller_Mcount_v_count_cy(5)
    );
  I_vga_controller_Mcount_v_count_xor_4_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(3),
      LI => I_vga_controller_Mcount_v_count_cy_4_rt_570,
      O => I_vga_controller_Result(4)
    );
  I_vga_controller_Mcount_v_count_cy_4_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(3),
      DI => N0,
      S => I_vga_controller_Mcount_v_count_cy_4_rt_570,
      O => I_vga_controller_Mcount_v_count_cy(4)
    );
  I_vga_controller_Mcount_v_count_xor_3_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(2),
      LI => I_vga_controller_Mcount_v_count_cy_3_rt_568,
      O => I_vga_controller_Result(3)
    );
  I_vga_controller_Mcount_v_count_cy_3_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(2),
      DI => N0,
      S => I_vga_controller_Mcount_v_count_cy_3_rt_568,
      O => I_vga_controller_Mcount_v_count_cy(3)
    );
  I_vga_controller_Mcount_v_count_xor_2_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(1),
      LI => I_vga_controller_Mcount_v_count_cy_2_rt_566,
      O => I_vga_controller_Result(2)
    );
  I_vga_controller_Mcount_v_count_cy_2_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(1),
      DI => N0,
      S => I_vga_controller_Mcount_v_count_cy_2_rt_566,
      O => I_vga_controller_Mcount_v_count_cy(2)
    );
  I_vga_controller_Mcount_v_count_xor_1_Q : XORCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(0),
      LI => I_vga_controller_Mcount_v_count_cy_1_rt_564,
      O => I_vga_controller_Result(1)
    );
  I_vga_controller_Mcount_v_count_cy_1_Q : MUXCY
    port map (
      CI => I_vga_controller_Mcount_v_count_cy(0),
      DI => N0,
      S => I_vga_controller_Mcount_v_count_cy_1_rt_564,
      O => I_vga_controller_Mcount_v_count_cy(1)
    );
  I_vga_controller_Mcount_v_count_xor_0_Q : XORCY
    port map (
      CI => N0,
      LI => I_vga_controller_Mcount_v_count_lut(0),
      O => I_vga_controller_Result(0)
    );
  I_vga_controller_Mcount_v_count_cy_0_Q : MUXCY
    port map (
      CI => N0,
      DI => N1,
      S => I_vga_controller_Mcount_v_count_lut(0),
      O => I_vga_controller_Mcount_v_count_cy(0)
    );
  I_vga_controller_h_count_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_Result_9_1,
      R => I_vga_controller_h_count_and0000,
      Q => I_vga_controller_h_count(9)
    );
  I_vga_controller_h_count_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_Result_8_1,
      R => I_vga_controller_h_count_and0000,
      Q => I_vga_controller_h_count(8)
    );
  I_vga_controller_h_count_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_Result_7_1,
      R => I_vga_controller_h_count_and0000,
      Q => I_vga_controller_h_count(7)
    );
  I_vga_controller_h_count_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_Result_6_1,
      R => I_vga_controller_h_count_and0000,
      Q => I_vga_controller_h_count(6)
    );
  I_vga_controller_h_count_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_Result_5_1,
      R => I_vga_controller_h_count_and0000,
      Q => I_vga_controller_h_count(5)
    );
  I_vga_controller_h_count_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_Result_4_1,
      R => I_vga_controller_h_count_and0000,
      Q => I_vga_controller_h_count(4)
    );
  I_vga_controller_h_count_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_Result_3_1,
      R => I_vga_controller_h_count_and0000,
      Q => I_vga_controller_h_count(3)
    );
  I_vga_controller_h_count_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_Result_2_1,
      R => I_vga_controller_h_count_and0000,
      Q => I_vga_controller_h_count(2)
    );
  I_vga_controller_h_count_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_Result_1_1,
      R => I_vga_controller_h_count_and0000,
      Q => I_vga_controller_h_count(1)
    );
  I_vga_controller_h_count_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_Result_0_1,
      R => I_vga_controller_h_count_and0000,
      Q => I_vga_controller_h_count(0)
    );
  I_vga_controller_v_count_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_h_count_and0000,
      D => I_vga_controller_Result(9),
      R => I_vga_controller_v_count_and0000,
      Q => I_vga_controller_v_count(9)
    );
  I_vga_controller_v_count_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_h_count_and0000,
      D => I_vga_controller_Result(8),
      R => I_vga_controller_v_count_and0000,
      Q => I_vga_controller_v_count(8)
    );
  I_vga_controller_v_count_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_h_count_and0000,
      D => I_vga_controller_Result(7),
      R => I_vga_controller_v_count_and0000,
      Q => I_vga_controller_v_count(7)
    );
  I_vga_controller_v_count_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_h_count_and0000,
      D => I_vga_controller_Result(6),
      R => I_vga_controller_v_count_and0000,
      Q => I_vga_controller_v_count(6)
    );
  I_vga_controller_v_count_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_h_count_and0000,
      D => I_vga_controller_Result(5),
      R => I_vga_controller_v_count_and0000,
      Q => I_vga_controller_v_count(5)
    );
  I_vga_controller_v_count_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_h_count_and0000,
      D => I_vga_controller_Result(4),
      R => I_vga_controller_v_count_and0000,
      Q => I_vga_controller_v_count(4)
    );
  I_vga_controller_v_count_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_h_count_and0000,
      D => I_vga_controller_Result(3),
      R => I_vga_controller_v_count_and0000,
      Q => I_vga_controller_v_count(3)
    );
  I_vga_controller_v_count_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_h_count_and0000,
      D => I_vga_controller_Result(2),
      R => I_vga_controller_v_count_and0000,
      Q => I_vga_controller_v_count(2)
    );
  I_vga_controller_v_count_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_h_count_and0000,
      D => I_vga_controller_Result(1),
      R => I_vga_controller_v_count_and0000,
      Q => I_vga_controller_v_count(1)
    );
  I_vga_controller_v_count_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_h_count_and0000,
      D => I_vga_controller_Result(0),
      R => I_vga_controller_v_count_and0000,
      Q => I_vga_controller_v_count(0)
    );
  I_vga_controller_START_VSYNC : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_START_VSYNC_not0001,
      D => I_vga_controller_vStartTrigger_621,
      Q => I_vga_controller_START_VSYNC_602
    );
  I_vga_controller_HSYNC : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_HSYNC_or0000,
      Q => I_vga_controller_HSYNC_537
    );
  I_vga_controller_DISPLAY_EN : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_DISPLAY_EN_and0000_536,
      Q => I_vga_controller_DISPLAY_EN_535
    );
  I_vga_controller_vStartTrigger : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => I_vga_controller_vStartTrigger_not0001,
      D => I_vga_controller_VSYNC_or0000,
      Q => I_vga_controller_vStartTrigger_621
    );
  I_vga_controller_VSYNC : FDE
    generic map(
      INIT => '1'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      CE => N1,
      D => I_vga_controller_VSYNC_or0000,
      Q => I_vga_controller_VSYNC_608
    );
  I_imager_im_vgac_re_state_FSM_FFd9_In1 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_im_vgac_re_state_FSM_FFd12_501,
      O => I_imager_im_vgac_re_state_FSM_FFd9_In
    );
  I_imager_im_re_state_FSM_FFd1_In1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_vga_controller_DISPLAY_EN_535,
      I1 => I_imager_im_re_state_FSM_FFd2_486,
      O => I_imager_im_re_state_FSM_FFd1_In
    );
  I_imager_Result_1_311 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_imager_iColumn(0),
      I1 => I_imager_iColumn(1),
      O => I_imager_Result_1_3
    );
  I_imager_Result_1_41 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_imager_iColumnPixel(1),
      I1 => I_imager_iColumnPixel(0),
      O => I_imager_Result_1_4
    );
  I_imager_Result_1_2 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_imager_iRowPixel(1),
      I1 => I_imager_iRowPixel(0),
      O => I_imager_Result(1)
    );
  I_imager_im_re_state_FSM_FFd5_In1 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => I_vga_controller_START_VSYNC_602,
      I1 => I_vga_controller_DISPLAY_EN_535,
      I2 => I_imager_im_re_state_FSM_FFd2_486,
      O => I_imager_im_re_state_FSM_FFd5_In
    );
  I_imager_Result_2_41 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => I_imager_iColumnPixel(1),
      I1 => I_imager_iColumnPixel(2),
      I2 => I_imager_iColumnPixel(0),
      O => I_imager_Result_2_4
    );
  I_imager_RGB_not00011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd2_486,
      I1 => I_vga_controller_HSYNC_537,
      O => I_imager_RGB_not0001
    );
  I_imager_RAM_WR_not00011 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_im_re_state_FSM_FFd5_492,
      O => I_imager_RAM_WR_not0001
    );
  I_imager_iStCharLoc_mux0000_0_21 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd8_514,
      I1 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      O => I_imager_N11
    );
  I_vga_controller_DISPLAY_EN_and0000_SW0 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => I_vga_controller_h_count(9),
      I1 => I_vga_controller_h_count(7),
      I2 => I_vga_controller_h_count(8),
      O => N2
    );
  I_vga_controller_DISPLAY_EN_and0000 : LUT4
    generic map(
      INIT => X"0103"
    )
    port map (
      I0 => I_vga_controller_N7,
      I1 => I_vga_controller_v_count(9),
      I2 => N2,
      I3 => I_vga_controller_v_count(8),
      O => I_vga_controller_DISPLAY_EN_and0000_536
    );
  I_imager_iCurrentChar_mux0001_7_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => I_imager_N30,
      I1 => N45,
      O => I_imager_iCurrentChar_mux0001(7)
    );
  I_imager_iCurrentChar_mux0001_6_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => I_imager_N30,
      I1 => N44,
      O => I_imager_iCurrentChar_mux0001(6)
    );
  I_imager_iCurrentChar_mux0001_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N43,
      I1 => I_imager_N30,
      O => I_imager_iCurrentChar_mux0001(5)
    );
  I_imager_iCurrentChar_mux0001_4_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => I_imager_N30,
      I1 => N42,
      O => I_imager_iCurrentChar_mux0001(4)
    );
  I_imager_iCurrentChar_mux0001_3_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => I_imager_N30,
      I1 => N41,
      O => I_imager_iCurrentChar_mux0001(3)
    );
  I_imager_iCurrentChar_mux0001_2_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => N40,
      I1 => I_imager_N30,
      O => I_imager_iCurrentChar_mux0001(2)
    );
  I_imager_iCurrentChar_mux0001_1_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => I_imager_N30,
      I1 => N39,
      O => I_imager_iCurrentChar_mux0001(1)
    );
  I_imager_iCurrentChar_mux0001_0_1 : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => I_imager_N30,
      I1 => N38,
      O => I_imager_iCurrentChar_mux0001(0)
    );
  I_imager_im_vgac_re_state_FSM_FFd8_In1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => N45,
      I1 => I_imager_N32,
      I2 => I_imager_RAM_WR_and0001,
      I3 => N44,
      O => I_imager_im_vgac_re_state_FSM_FFd8_In
    );
  I_imager_im_vgac_re_state_FSM_FFd7_In1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => N44,
      I1 => I_imager_N32,
      I2 => I_imager_RAM_WR_and0001,
      I3 => N45,
      O => I_imager_im_vgac_re_state_FSM_FFd7_In
    );
  I_imager_iCurrentChar_not00012 : LUT3
    generic map(
      INIT => X"A2"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_N30,
      I2 => I_imager_im_re_state_FSM_FFd3_490,
      O => I_imager_iCurrentChar_not0001
    );
  I_imager_RGB_mux0001_0_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_vga_controller_DISPLAY_EN_535,
      I1 => I_imager_iCurrentChar_mux0000,
      O => I_imager_RGB_mux0001(0)
    );
  I_imager_im_vgac_re_state_FSM_FFd6_In1 : LUT4
    generic map(
      INIT => X"5510"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_im_vgac_re_state_cmp_eq0002,
      I2 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      I3 => I_imager_im_vgac_re_state_FSM_FFd8_514,
      O => I_imager_im_vgac_re_state_FSM_FFd6_In
    );
  I_imager_im_vgac_re_state_FSM_FFd4_In1 : LUT4
    generic map(
      INIT => X"5540"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_im_vgac_re_state_cmp_eq0002,
      I2 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      I3 => I_imager_im_vgac_re_state_FSM_FFd2_502,
      O => I_imager_im_vgac_re_state_FSM_FFd4_In
    );
  I_imager_iStCharLoc_mux0000_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_iStCharLoc(7),
      I1 => I_imager_N2,
      I2 => N38,
      I3 => I_imager_N11,
      O => I_imager_iStCharLoc_mux0000(7)
    );
  I_imager_iStCharLoc_mux0000_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_iStCharLoc(6),
      I1 => I_imager_N2,
      I2 => N39,
      I3 => I_imager_N11,
      O => I_imager_iStCharLoc_mux0000(6)
    );
  I_imager_iStCharLoc_mux0000_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_iStCharLoc(5),
      I1 => I_imager_N2,
      I2 => N40,
      I3 => I_imager_N11,
      O => I_imager_iStCharLoc_mux0000(5)
    );
  I_imager_iStCharLoc_mux0000_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_iStCharLoc(4),
      I1 => I_imager_N2,
      I2 => N41,
      I3 => I_imager_N11,
      O => I_imager_iStCharLoc_mux0000(4)
    );
  I_imager_iStCharLoc_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_iStCharLoc(3),
      I1 => I_imager_N2,
      I2 => N42,
      I3 => I_imager_N11,
      O => I_imager_iStCharLoc_mux0000(3)
    );
  I_imager_iStCharLoc_mux0000_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_iStCharLoc(2),
      I1 => I_imager_N2,
      I2 => N43,
      I3 => I_imager_N11,
      O => I_imager_iStCharLoc_mux0000(2)
    );
  I_imager_iStCharLoc_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_iStCharLoc(1),
      I1 => I_imager_N2,
      I2 => N44,
      I3 => I_imager_N11,
      O => I_imager_iStCharLoc_mux0000(1)
    );
  I_imager_iStCharLoc_mux0000_0_2 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_iStCharLoc(0),
      I1 => I_imager_N2,
      I2 => N45,
      I3 => I_imager_N11,
      O => I_imager_iStCharLoc_mux0000(0)
    );
  I_imager_im_vgac_re_state_FSM_FFd11_In22 : LUT4
    generic map(
      INIT => X"82AA"
    )
    port map (
      I0 => I_imager_N32,
      I1 => N45,
      I2 => N44,
      I3 => I_imager_RAM_WR_and0001,
      O => I_imager_im_vgac_re_state_FSM_FFd11_In22_500
    );
  I_imager_iStCharLoc_mux0000_0_110 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd1_494,
      I1 => I_imager_im_vgac_re_state_FSM_FFd4_506,
      I2 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      I3 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      O => I_imager_iStCharLoc_mux0000_0_110_476
    );
  I_vga_controller_HSYNC_or000015 : LUT4
    generic map(
      INIT => X"5557"
    )
    port map (
      I0 => I_vga_controller_h_count(7),
      I1 => I_vga_controller_h_count(6),
      I2 => I_vga_controller_h_count(4),
      I3 => I_vga_controller_h_count(5),
      O => I_vga_controller_HSYNC_or000015_539
    );
  I_vga_controller_HSYNC_or000040 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_vga_controller_h_count(3),
      I1 => I_vga_controller_h_count(2),
      I2 => I_vga_controller_h_count(1),
      I3 => I_vga_controller_h_count(0),
      O => I_vga_controller_HSYNC_or000040_540
    );
  I_vga_controller_HSYNC_or000045 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I_vga_controller_h_count(4),
      I1 => I_vga_controller_h_count(5),
      I2 => I_vga_controller_h_count(6),
      I3 => I_vga_controller_h_count(7),
      O => I_vga_controller_HSYNC_or000045_541
    );
  I_vga_controller_HSYNC_or000046 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_vga_controller_HSYNC_or000040_540,
      I1 => I_vga_controller_HSYNC_or000045_541,
      O => I_vga_controller_HSYNC_or000046_542
    );
  I_vga_controller_HSYNC_or000076 : LUT4
    generic map(
      INIT => X"FFFD"
    )
    port map (
      I0 => I_vga_controller_h_count(9),
      I1 => I_vga_controller_h_count(8),
      I2 => I_vga_controller_HSYNC_or000015_539,
      I3 => I_vga_controller_HSYNC_or000046_542,
      O => I_vga_controller_HSYNC_or0000
    );
  I_imager_mux0000_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_varindex0000(7),
      I1 => I_imager_N1,
      I2 => N45,
      I3 => I_imager_ADDR_mux0002_2_2,
      O => I_imager_mux0000(7)
    );
  I_imager_mux0000_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_varindex0000(6),
      I1 => I_imager_N1,
      I2 => N44,
      I3 => I_imager_ADDR_mux0002_2_2,
      O => I_imager_mux0000(6)
    );
  I_imager_mux0000_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_varindex0000(5),
      I1 => I_imager_N1,
      I2 => N43,
      I3 => I_imager_ADDR_mux0002_2_2,
      O => I_imager_mux0000(5)
    );
  I_imager_mux0000_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_varindex0000(4),
      I1 => I_imager_N1,
      I2 => N42,
      I3 => I_imager_ADDR_mux0002_2_2,
      O => I_imager_mux0000(4)
    );
  I_imager_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_varindex0000(3),
      I1 => I_imager_N1,
      I2 => N41,
      I3 => I_imager_ADDR_mux0002_2_2,
      O => I_imager_mux0000(3)
    );
  I_imager_mux0000_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_varindex0000(2),
      I1 => I_imager_N1,
      I2 => N40,
      I3 => I_imager_ADDR_mux0002_2_2,
      O => I_imager_mux0000(2)
    );
  I_imager_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_varindex0000(1),
      I1 => I_imager_N1,
      I2 => N39,
      I3 => I_imager_ADDR_mux0002_2_2,
      O => I_imager_mux0000(1)
    );
  I_imager_mux0000_0_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd11_498,
      I1 => I_imager_im_vgac_re_state_FSM_FFd10_496,
      I2 => I_imager_N5,
      I3 => I_imager_N14,
      O => I_imager_N1
    );
  I_imager_mux0000_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_varindex0000(0),
      I1 => I_imager_N1,
      I2 => N38,
      I3 => I_imager_ADDR_mux0002_2_2,
      O => I_imager_mux0000(0)
    );
  I_imager_iColumnPixel_and00001 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => I_imager_N30,
      I1 => I_vga_controller_HSYNC_537,
      O => I_imager_iColumnPixel_and0000
    );
  I_imager_Result_3_41 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => I_imager_iColumnPixel(3),
      I1 => I_imager_iColumnPixel(1),
      I2 => I_imager_iColumnPixel(0),
      I3 => I_imager_iColumnPixel(2),
      O => I_imager_Result_3_4
    );
  I_imager_RAM_WR_mux000031 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd1_494,
      I1 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      I2 => I_imager_im_vgac_re_state_FSM_FFd11_498,
      O => I_imager_N62
    );
  I_imager_DATA_OUT_mux0000_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_DATA_OUT(0),
      I1 => I_imager_N3,
      I2 => I_imager_varindex0000(7),
      I3 => I_imager_N14,
      O => I_imager_DATA_OUT_mux0000(7)
    );
  I_imager_DATA_OUT_mux0000_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_DATA_OUT(1),
      I1 => I_imager_N3,
      I2 => I_imager_varindex0000(6),
      I3 => I_imager_N14,
      O => I_imager_DATA_OUT_mux0000(6)
    );
  I_imager_DATA_OUT_mux0000_5_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_DATA_OUT(2),
      I1 => I_imager_N3,
      I2 => I_imager_varindex0000(5),
      I3 => I_imager_N14,
      O => I_imager_DATA_OUT_mux0000(5)
    );
  I_imager_DATA_OUT_mux0000_4_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_DATA_OUT(3),
      I1 => I_imager_N3,
      I2 => I_imager_varindex0000(4),
      I3 => I_imager_N14,
      O => I_imager_DATA_OUT_mux0000(4)
    );
  I_imager_DATA_OUT_mux0000_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_DATA_OUT(4),
      I1 => I_imager_N3,
      I2 => I_imager_varindex0000(3),
      I3 => I_imager_N14,
      O => I_imager_DATA_OUT_mux0000(3)
    );
  I_imager_DATA_OUT_mux0000_2_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_DATA_OUT(5),
      I1 => I_imager_N3,
      I2 => I_imager_varindex0000(2),
      I3 => I_imager_N14,
      O => I_imager_DATA_OUT_mux0000(2)
    );
  I_imager_DATA_OUT_mux0000_1_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_DATA_OUT(6),
      I1 => I_imager_N3,
      I2 => I_imager_varindex0000(1),
      I3 => I_imager_N14,
      O => I_imager_DATA_OUT_mux0000(1)
    );
  I_imager_DATA_OUT_mux0000_0_11 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      I1 => I_imager_im_vgac_re_state_FSM_FFd11_498,
      I2 => I_imager_N5,
      I3 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      O => I_imager_N3
    );
  I_imager_DATA_OUT_mux0000_0_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_DATA_OUT(7),
      I1 => I_imager_N3,
      I2 => I_imager_varindex0000(0),
      I3 => I_imager_N14,
      O => I_imager_DATA_OUT_mux0000(0)
    );
  I_imager_iStCharCount_mux0000_0_1_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd2_502,
      I1 => I_imager_im_vgac_re_state_FSM_FFd9_516,
      I2 => I_imager_im_vgac_re_state_FSM_FFd12_501,
      O => N6
    );
  I_imager_iStCharCount_mux0000_0_1 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd8_514,
      I1 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      I2 => I_imager_im_vgac_re_state_FSM_FFd1_494,
      I3 => N6,
      O => I_imager_N5
    );
  I_vga_controller_ROW_cmp_ge000021 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => I_vga_controller_v_count(5),
      I1 => I_vga_controller_v_count(7),
      I2 => I_vga_controller_v_count(6),
      O => I_vga_controller_N7
    );
  I_vga_controller_START_VSYNC_cmp_gt000024 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => I_vga_controller_v_count(3),
      I1 => I_vga_controller_v_count(2),
      I2 => I_vga_controller_v_count(0),
      I3 => I_vga_controller_v_count(1),
      O => I_vga_controller_START_VSYNC_cmp_gt000024_604
    );
  I_vga_controller_START_VSYNC_cmp_gt0000212 : LUT4
    generic map(
      INIT => X"8880"
    )
    port map (
      I0 => I_vga_controller_N7,
      I1 => I_vga_controller_v_count(8),
      I2 => I_vga_controller_v_count(4),
      I3 => I_vga_controller_START_VSYNC_cmp_gt000024_604,
      O => I_vga_controller_START_VSYNC_cmp_gt0000212_603
    );
  I_vga_controller_START_VSYNC_cmp_lt0000212 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => I_vga_controller_v_count(5),
      I1 => I_vga_controller_v_count(8),
      I2 => I_vga_controller_v_count(7),
      I3 => I_vga_controller_v_count(6),
      O => I_vga_controller_START_VSYNC_cmp_lt0000212_605
    );
  I_vga_controller_START_VSYNC_cmp_lt0000228 : LUT4
    generic map(
      INIT => X"1113"
    )
    port map (
      I0 => I_vga_controller_v_count(3),
      I1 => I_vga_controller_v_count(4),
      I2 => I_vga_controller_v_count(1),
      I3 => I_vga_controller_v_count(2),
      O => I_vga_controller_START_VSYNC_cmp_lt0000228_606
    );
  I_vga_controller_v_count_and00000 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => I_vga_controller_v_count(3),
      I1 => I_vga_controller_v_count(4),
      O => I_vga_controller_v_count_and00000_635
    );
  I_vga_controller_v_count_and00005 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_vga_controller_v_count(5),
      I1 => I_vga_controller_v_count(6),
      I2 => I_vga_controller_v_count(7),
      I3 => I_vga_controller_v_count(8),
      O => I_vga_controller_v_count_and00005_636
    );
  I_vga_controller_v_count_and000021 : LUT4
    generic map(
      INIT => X"0C08"
    )
    port map (
      I0 => I_vga_controller_v_count_and00005_636,
      I1 => I_vga_controller_v_count(9),
      I2 => I_vga_controller_v_count_cmp_lt0001,
      I3 => I_vga_controller_v_count_and00000_635,
      O => I_vga_controller_v_count_and0000
    );
  I_imager_im_vgac_re_state_FSM_FFd3_In2 : LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_N47,
      O => I_imager_im_vgac_re_state_FSM_FFd3_In
    );
  I_imager_ADDR_mux0001_10_123 : LUT4
    generic map(
      INIT => X"0880"
    )
    port map (
      I0 => I_imager_RAM_WR_and0001,
      I1 => N116,
      I2 => N45,
      I3 => N44,
      O => I_imager_ADDR_mux0001_10_123_87
    );
  I_imager_RAM_WR_mux00004 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_im_vgac_re_state_FSM_FFd12_501,
      I2 => I_imager_im_vgac_re_state_FSM_FFd8_514,
      I3 => I_imager_im_vgac_re_state_FSM_FFd2_502,
      O => I_imager_RAM_WR_mux00004_343
    );
  I_imager_RAM_WR_mux000032 : LUT4
    generic map(
      INIT => X"FF28"
    )
    port map (
      I0 => I_imager_RAM_WR_and0001,
      I1 => N45,
      I2 => N44,
      I3 => I_imager_RAM_WR_339,
      O => I_imager_RAM_WR_mux000032_342
    );
  I_imager_Result_2_2 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => I_imager_iRowPixel(0),
      I1 => I_imager_iRowPixel(2),
      I2 => I_imager_iRowPixel(1),
      O => I_imager_Result(2)
    );
  I_imager_Result_3_2 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => I_imager_iRowPixel(3),
      I1 => I_imager_iRowPixel(0),
      I2 => I_imager_iRowPixel(1),
      I3 => I_imager_iRowPixel(2),
      O => I_imager_Result(3)
    );
  I_vga_controller_v_count_cmp_lt0001232 : LUT3
    generic map(
      INIT => X"01"
    )
    port map (
      I0 => I_vga_controller_h_count(6),
      I1 => I_vga_controller_h_count(7),
      I2 => I_vga_controller_h_count(5),
      O => I_vga_controller_v_count_cmp_lt0001232_640
    );
  I_imager_iStCharCount_mux0000_0_21 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd4_506,
      I1 => I_imager_im_vgac_re_state_FSM_FFd3_504,
      O => I_imager_N14
    );
  I_imager_iColumn_and00001 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_N30,
      I2 => I_imager_ADDR_cmp_eq0001_55,
      O => I_imager_iColumn_and0000
    );
  I_imager_VGARAM_CE_mux000031 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_im_re_state_FSM_FFd1_484,
      O => I_imager_iAdjXPixel_not0001
    );
  I_imager_ADDR_mux0003_11_1 : LUT4
    generic map(
      INIT => X"5501"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_or0010,
      I2 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      I3 => N119,
      O => I_imager_ADDR_mux0003_11_Q
    );
  I_imager_im_vgac_re_state_cmp_eq00001_SW0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => N40,
      I1 => N39,
      I2 => N38,
      O => N14
    );
  I_imager_im_vgac_re_state_cmp_eq00001 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => N43,
      I1 => N42,
      I2 => N41,
      I3 => N14,
      O => I_imager_RAM_WR_and0001
    );
  I_imager_iStCharCount_mux0000_1_1 : LUT4
    generic map(
      INIT => X"EEE6"
    )
    port map (
      I0 => I_imager_iStCharCount(0),
      I1 => I_imager_iStCharCount(1),
      I2 => I_imager_N5,
      I3 => I_imager_iStCharCount(2),
      O => I_imager_iStCharCount_mux0000_1_1_464
    );
  I_imager_iStCharCount_mux0000_1_2 : LUT4
    generic map(
      INIT => X"EA48"
    )
    port map (
      I0 => I_imager_iStCharCount(1),
      I1 => I_imager_N67,
      I2 => I_imager_iStCharCount(0),
      I3 => I_imager_N5,
      O => I_imager_iStCharCount_mux0000_1_2_465
    );
  I_imager_iStCharCount_mux0000_1_f5 : MUXF5
    port map (
      I0 => I_imager_iStCharCount_mux0000_1_2_465,
      I1 => I_imager_iStCharCount_mux0000_1_1_464,
      S => I_imager_N14,
      O => I_imager_iStCharCount_mux0000(1)
    );
  I_imager_VGARAM_CE_mux000042 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => I_imager_N62,
      I1 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      I2 => I_imager_im_vgac_re_state_cmp_eq0002,
      I3 => I_imager_im_vgac_re_state_FSM_FFd4_506,
      O => I_imager_VGARAM_CE_mux000042_381
    );
  I_imager_VGARAM_CE_mux000066 : LUT4
    generic map(
      INIT => X"82AA"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd9_516,
      I1 => N45,
      I2 => N44,
      I3 => I_imager_RAM_WR_and0001,
      O => I_imager_VGARAM_CE_mux000066_382
    );
  I_imager_CHARRAM_CE_mux000020 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd12_501,
      I1 => I_imager_im_vgac_re_state_FSM_FFd8_514,
      I2 => I_imager_im_vgac_re_state_FSM_FFd2_502,
      I3 => I_imager_im_vgac_re_state_FSM_FFd3_504,
      O => I_imager_CHARRAM_CE_mux000020_197
    );
  I_imager_CHARRAM_CE_mux000051 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => I_imager_CHARRAM_CE_mux000021_198,
      I1 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      I2 => I_imager_im_vgac_re_state_cmp_eq0002,
      I3 => I_imager_CHARRAM_CE_mux000033_199,
      O => I_imager_CHARRAM_CE_mux000051_200
    );
  I_imager_CHARRAM_CE_mux000063 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => I_imager_N47,
      I1 => I_imager_im_vgac_re_state_FSM_FFd9_516,
      I2 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      O => I_imager_CHARRAM_CE_mux000063_201
    );
  I_imager_CHARRAM_CE_mux000084 : LUT4
    generic map(
      INIT => X"5540"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_CHARRAM_CE_mux000063_201,
      I2 => I_imager_CHARRAM_CE_193,
      I3 => I_imager_CHARRAM_CE_mux000051_200,
      O => I_imager_CHARRAM_CE_mux000084_202
    );
  I_imager_ADDR_mux0001_0_1111 : LUT2
    generic map(
      INIT => X"7"
    )
    port map (
      I0 => I_vga_controller_DISPLAY_EN_535,
      I1 => I_imager_draw_fetch_state(0),
      O => I_imager_N38
    );
  I_imager_ADDR_mux0001_0_1120 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_0_114_83,
      I1 => N133,
      O => I_imager_N10
    );
  I_imager_Result_2_31 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => I_imager_iColumn(0),
      I1 => I_imager_iColumn(2),
      I2 => I_imager_iColumn(1),
      O => I_imager_Result_2_3
    );
  I_imager_ADDR_mux0003_10_SW0 : LUT4
    generic map(
      INIT => X"153F"
    )
    port map (
      I0 => I_imager_ADDR_or0010,
      I1 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      I2 => N38,
      I3 => I_imager_iStCharLoc(7),
      O => N22
    );
  I_imager_ADDR_mux0003_9_SW0 : LUT4
    generic map(
      INIT => X"153F"
    )
    port map (
      I0 => I_imager_ADDR_or0010,
      I1 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      I2 => N39,
      I3 => I_imager_iStCharLoc(6),
      O => N24
    );
  I_imager_ADDR_mux0003_8_SW0 : LUT4
    generic map(
      INIT => X"153F"
    )
    port map (
      I0 => I_imager_ADDR_or0010,
      I1 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      I2 => N40,
      I3 => I_imager_iStCharLoc(5),
      O => N26
    );
  I_imager_Result_3_31 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => I_imager_iColumn(3),
      I1 => I_imager_iColumn(0),
      I2 => I_imager_iColumn(1),
      I3 => I_imager_iColumn(2),
      O => I_imager_Result_3_3
    );
  I_imager_ADDR_mux0001_0_21 : LUT4
    generic map(
      INIT => X"8A00"
    )
    port map (
      I0 => I_imager_sDupeRow_519,
      I1 => N30,
      I2 => I_imager_Result(4),
      I3 => N120,
      O => I_imager_N24
    );
  I_imager_ADDR_mux0003_7_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N41,
      I1 => I_imager_N31,
      I2 => I_imager_iStCharLoc(4),
      I3 => N131,
      O => I_imager_ADDR_mux0003_7_Q
    );
  I_imager_ADDR_mux0003_6_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N42,
      I1 => N118,
      I2 => I_imager_iStCharLoc(3),
      I3 => I_imager_N35,
      O => I_imager_ADDR_mux0003_6_Q
    );
  I_imager_iRow_cmp_eq000228 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => I_imager_sDupeRow_add0000(2),
      I1 => I_imager_sDupeRow_add0000(3),
      I2 => I_imager_sDupeRow_add0000(4),
      I3 => I_imager_sDupeRow_add0000(5),
      O => I_imager_iRow_cmp_eq000228_458
    );
  I_imager_Result_4_21 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_imager_iColumn(4),
      I1 => N121,
      O => I_imager_Result_4_2
    );
  I_imager_Result_5_11 : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => I_imager_iColumn(4),
      I1 => I_imager_iColumn(5),
      I2 => I_imager_Madd_sResult_add0003_cy(3),
      O => I_imager_Result_5_1
    );
  I_imager_ADDR_mux0003_4_5 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => N44,
      I1 => I_imager_iStCharLoc(1),
      I2 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      I3 => N123,
      O => I_imager_ADDR_mux0003_4_5_175
    );
  I_imager_ADDR_mux0003_4_38 : LUT4
    generic map(
      INIT => X"DDD8"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_Result_4_2,
      I2 => I_imager_ADDR_mux0003_4_14_174,
      I3 => I_imager_ADDR_mux0003_4_5_175,
      O => I_imager_ADDR_mux0003_4_Q
    );
  I_imager_ADDR_mux0001_0_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_ADDR(0),
      I1 => I_imager_N0,
      O => I_imager_ADDR_mux0001_0_0_80
    );
  I_imager_ADDR_mux0001_0_17 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_0_12_84,
      I1 => I_imager_ADDR_cmp_eq0000_54,
      I2 => N45,
      I3 => I_imager_ADDR_add0000(0),
      O => I_imager_ADDR_mux0001_0_17_85
    );
  I_imager_Result_1_11 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_imager_iRow(1),
      I1 => I_imager_iRow(0),
      O => I_imager_Result_1_1
    );
  I_imager_Result_2_11 : LUT3
    generic map(
      INIT => X"6A"
    )
    port map (
      I0 => I_imager_iRow(2),
      I1 => I_imager_iRow(1),
      I2 => I_imager_iRow(0),
      O => I_imager_Result_2_1
    );
  I_imager_Result_3_11 : LUT4
    generic map(
      INIT => X"6AAA"
    )
    port map (
      I0 => I_imager_iRow(3),
      I1 => I_imager_iRow(2),
      I2 => I_imager_iRow(1),
      I3 => I_imager_iRow(0),
      O => I_imager_Result_3_1
    );
  I_imager_ADDR_mux0001_1_17 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_0_12_84,
      I1 => I_imager_ADDR_cmp_eq0000_54,
      I2 => N44,
      I3 => I_imager_ADDR_add0000(1),
      O => I_imager_ADDR_mux0001_1_17_99
    );
  I_imager_ADDR_mux0001_2_17 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_0_12_84,
      I1 => I_imager_ADDR_cmp_eq0000_54,
      I2 => N43,
      I3 => I_imager_ADDR_add0000(2),
      O => I_imager_ADDR_mux0001_2_17_103
    );
  I_imager_ADDR_mux0001_3_17 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_0_12_84,
      I1 => I_imager_ADDR_cmp_eq0000_54,
      I2 => N42,
      I3 => I_imager_ADDR_add0000(3),
      O => I_imager_ADDR_mux0001_3_17_107
    );
  I_imager_ADDR_mux0001_4_29 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => I_imager_ADDR(4),
      I1 => I_imager_N32,
      I2 => I_imager_ADDR_mux0001_10_123_87,
      I3 => I_imager_N10,
      O => I_imager_ADDR_mux0001_4_29_112
    );
  I_imager_ADDR_mux0001_4_37 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd4_491,
      I1 => I_imager_ADDR_add0002(4),
      O => I_imager_ADDR_mux0001_4_37_113
    );
  I_imager_ADDR_mux0001_4_53 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_0_12_84,
      I1 => N132,
      I2 => N41,
      I3 => I_imager_ADDR_add0000(4),
      O => I_imager_ADDR_mux0001_4_53_114
    );
  I_imager_ADDR_mux0001_4_86 : LUT3
    generic map(
      INIT => X"EC"
    )
    port map (
      I0 => I_imager_N24,
      I1 => I_imager_ADDR_mux0001_4_73_115,
      I2 => I_imager_ADDR_mult0001(4),
      O => I_imager_ADDR_mux0001_4_86_116
    );
  I_imager_ADDR_mux0001_4_125 : LUT4
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0001_4_29_112,
      I2 => I_imager_ADDR_mux0001_4_86_116,
      I3 => I_imager_ADDR_mux0001_4_98_117,
      O => I_imager_ADDR_mux0001_4_125_110
    );
  I_imager_ADDR_mux0001_5_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_ADDR(5),
      I1 => N129,
      O => I_imager_ADDR_mux0001_5_0_118
    );
  I_imager_ADDR_mux0001_5_1 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd4_491,
      I1 => I_imager_ADDR_add0002(5),
      O => I_imager_ADDR_mux0001_5_1_119
    );
  I_imager_ADDR_mux0001_5_17 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => N134,
      I1 => I_imager_ADDR_cmp_eq0000_54,
      I2 => N40,
      I3 => I_imager_ADDR_add0000(5),
      O => I_imager_ADDR_mux0001_5_17_121
    );
  I_imager_ADDR_mux0001_5_50 : LUT3
    generic map(
      INIT => X"EC"
    )
    port map (
      I0 => I_imager_N24,
      I1 => I_imager_ADDR_mux0001_5_37_122,
      I2 => I_imager_ADDR_mult0001(5),
      O => I_imager_ADDR_mux0001_5_50_123
    );
  I_imager_ADDR_mux0001_5_89 : LUT4
    generic map(
      INIT => X"EEEC"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_ADDR_mux0001_5_0_118,
      I2 => I_imager_ADDR_mux0001_5_50_123,
      I3 => I_imager_ADDR_mux0001_5_62_124,
      O => I_imager_ADDR_mux0001_5_89_125
    );
  I_imager_Madd_ADDR_addsub0000_cy_4_11 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_iRow(4),
      I1 => I_imager_Madd_ADDR_addsub0000_cy(3),
      O => I_imager_Madd_ADDR_addsub0000_cy(4)
    );
  I_imager_ADDR_mux0001_6_0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_ADDR(6),
      I1 => I_imager_N0,
      O => I_imager_ADDR_mux0001_6_0_126
    );
  I_imager_ADDR_mux0001_6_17 : LUT4
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_0_12_84,
      I1 => I_imager_ADDR_cmp_eq0000_54,
      I2 => N39,
      I3 => I_imager_ADDR_add0000(6),
      O => I_imager_ADDR_mux0001_6_17_129
    );
  I_imager_ADDR_mux0001_6_37 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_6_1_127,
      I1 => I_imager_ADDR_mux0002_6_mand_162,
      I2 => I_imager_ADDR_mux0001_0_31_86,
      I3 => I_imager_ADDR_mux0001_6_17_129,
      O => I_imager_ADDR_mux0001_6_37_130
    );
  I_imager_Result_4_1 : LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      I0 => I_imager_iRow(4),
      I1 => N125,
      O => I_imager_Result(4)
    );
  I_imager_ADDR_mux0001_7_38 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => I_imager_N65,
      I1 => I_imager_sDupeRow_519,
      I2 => I_imager_ADDR_mux0002_7_mand_164,
      O => I_imager_ADDR_mux0001_7_38_133
    );
  I_imager_ADDR_mux0001_8_5 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => I_imager_ADDR(8),
      I1 => I_imager_N10,
      I2 => N128,
      I3 => I_imager_N32,
      O => I_imager_ADDR_mux0001_8_5_140
    );
  I_imager_ADDR_mux0001_8_18 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => I_imager_N65,
      I1 => I_imager_sDupeRow_519,
      I2 => I_imager_ADDR_mux0002_8_mand_166,
      O => I_imager_ADDR_mux0001_8_18_136
    );
  I_imager_ADDR_mux0001_8_27 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_8_18_136,
      I1 => I_imager_ADDR_mult0001(8),
      I2 => I_imager_N24,
      I3 => I_imager_ADDR_mux0001_8_24_137,
      O => I_imager_ADDR_mux0001_8_27_138
    );
  I_imager_ADDR_mux0002_2_45 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => N126,
      I2 => I_imager_sResult_mult0003(2),
      O => I_imager_ADDR_mux0002(2)
    );
  I_imager_ADDR_mux0001_9_5 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => I_imager_ADDR(9),
      I1 => I_imager_N10,
      I2 => I_imager_N15,
      I3 => I_imager_N32,
      O => I_imager_ADDR_mux0001_9_5_145
    );
  I_imager_ADDR_mux0001_9_18 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => I_imager_N65,
      I1 => I_imager_sDupeRow_519,
      I2 => I_imager_ADDR_mux0002_9_mand_168,
      O => I_imager_ADDR_mux0001_9_18_141
    );
  I_imager_ADDR_mux0001_9_27 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_9_18_141,
      I1 => I_imager_ADDR_mult0001(9),
      I2 => I_imager_N24,
      I3 => I_imager_ADDR_mux0001_9_24_142,
      O => I_imager_ADDR_mux0001_9_27_143
    );
  I_imager_ADDR_mux0002_1_34 : LUT4
    generic map(
      INIT => X"5540"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_N8,
      I2 => I_imager_iStCharCount(1),
      I3 => I_imager_ADDR_mux0002_1_20_151,
      O => I_imager_ADDR_mux0002_1_34_152
    );
  I_imager_ADDR_mux0002_1_43 : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => I_imager_ADDR_mux0002_1_34_152,
      I1 => I_vga_controller_HSYNC_537,
      I2 => I_imager_sResult_mult0003(1),
      O => I_imager_ADDR_mux0002(1)
    );
  I_imager_ADDR_mux0001_10_5 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => I_imager_ADDR(10),
      I1 => I_imager_N10,
      I2 => I_imager_N15,
      I3 => I_imager_N32,
      O => I_imager_ADDR_mux0001_10_5_92
    );
  I_imager_ADDR_mux0001_10_181 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => I_imager_N65,
      I1 => I_imager_sDupeRow_519,
      I2 => I_imager_ADDR_mux0002_10_mand_147,
      O => I_imager_ADDR_mux0001_10_181_88
    );
  I_imager_ADDR_mux0001_10_27 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_10_181_88,
      I1 => I_imager_ADDR_mult0001(10),
      I2 => I_imager_N24,
      I3 => I_imager_ADDR_mux0001_10_24_89,
      O => I_imager_ADDR_mux0001_10_27_90
    );
  I_imager_ADDR_mux0002_0_SW0 : LUT4
    generic map(
      INIT => X"01F1"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      I1 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      I2 => I_imager_iStCharCount(0),
      I3 => N122,
      O => N36
    );
  I_imager_ADDR_mux0002_0_Q : LUT3
    generic map(
      INIT => X"B1"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => N36,
      I2 => I_imager_sResult_mult0003(0),
      O => I_imager_ADDR_mux0002(0)
    );
  I_imager_ADDR_mux0001_11_5 : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => I_imager_ADDR(11),
      I1 => I_imager_N10,
      I2 => I_imager_N15,
      I3 => I_imager_N32,
      O => I_imager_ADDR_mux0001_11_5_97
    );
  I_imager_ADDR_mux0001_11_18 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => I_imager_N65,
      I1 => I_imager_sDupeRow_519,
      I2 => I_imager_ADDR_mux0002_11_mand,
      O => I_imager_ADDR_mux0001_11_18_93
    );
  I_imager_ADDR_mux0001_11_27 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_11_18_93,
      I1 => I_imager_ADDR_mult0001(11),
      I2 => I_imager_N24,
      I3 => I_imager_ADDR_mux0001_11_24_94,
      O => I_imager_ADDR_mux0001_11_27_95
    );
  DATA_7_IOBUF : IOBUF
    port map (
      I => I_imager_DATA_OUT(7),
      T => I_imager_RAM_WR_339,
      O => N38,
      IO => DATA(7)
    );
  DATA_6_IOBUF : IOBUF
    port map (
      I => I_imager_DATA_OUT(6),
      T => I_imager_RAM_WR_339,
      O => N39,
      IO => DATA(6)
    );
  DATA_5_IOBUF : IOBUF
    port map (
      I => I_imager_DATA_OUT(5),
      T => I_imager_RAM_WR_339,
      O => N40,
      IO => DATA(5)
    );
  DATA_4_IOBUF : IOBUF
    port map (
      I => I_imager_DATA_OUT(4),
      T => I_imager_RAM_WR_339,
      O => N41,
      IO => DATA(4)
    );
  DATA_3_IOBUF : IOBUF
    port map (
      I => I_imager_DATA_OUT(3),
      T => I_imager_RAM_WR_339,
      O => N42,
      IO => DATA(3)
    );
  DATA_2_IOBUF : IOBUF
    port map (
      I => I_imager_DATA_OUT(2),
      T => I_imager_RAM_WR_339,
      O => N43,
      IO => DATA(2)
    );
  DATA_1_IOBUF : IOBUF
    port map (
      I => I_imager_DATA_OUT(1),
      T => I_imager_RAM_WR_339,
      O => N44,
      IO => DATA(1)
    );
  DATA_0_IOBUF : IOBUF
    port map (
      I => I_imager_DATA_OUT(0),
      T => I_imager_RAM_WR_339,
      O => N45,
      IO => DATA(0)
    );
  DEBUG_OBUF : OBUF
    port map (
      I => N0,
      O => DEBUG
    );
  RAM_WR_OBUF : OBUF
    port map (
      I => I_imager_RAM_WR_339,
      O => RAM_WR
    );
  VSYNC_OBUF : OBUF
    port map (
      I => I_vga_controller_VSYNC_608,
      O => VSYNC
    );
  DEBUG2_OBUF : OBUF
    port map (
      I => N0,
      O => DEBUG2
    );
  HSYNC_OBUF : OBUF
    port map (
      I => I_vga_controller_HSYNC_537,
      O => HSYNC
    );
  CHARRAM_CE_OBUF : OBUF
    port map (
      I => I_imager_CHARRAM_CE_193,
      O => CHARRAM_CE
    );
  VGARAM_CE_OBUF : OBUF
    port map (
      I => I_imager_VGARAM_CE_376,
      O => VGARAM_CE
    );
  ADDR_11_OBUF : OBUF
    port map (
      I => I_imager_ADDR(11),
      O => ADDR(11)
    );
  ADDR_10_OBUF : OBUF
    port map (
      I => I_imager_ADDR(10),
      O => ADDR(10)
    );
  ADDR_9_OBUF : OBUF
    port map (
      I => I_imager_ADDR(9),
      O => ADDR(9)
    );
  ADDR_8_OBUF : OBUF
    port map (
      I => I_imager_ADDR(8),
      O => ADDR(8)
    );
  ADDR_7_OBUF : OBUF
    port map (
      I => I_imager_ADDR(7),
      O => ADDR(7)
    );
  ADDR_6_OBUF : OBUF
    port map (
      I => I_imager_ADDR(6),
      O => ADDR(6)
    );
  ADDR_5_OBUF : OBUF
    port map (
      I => I_imager_ADDR(5),
      O => ADDR(5)
    );
  ADDR_4_OBUF : OBUF
    port map (
      I => I_imager_ADDR(4),
      O => ADDR(4)
    );
  ADDR_3_OBUF : OBUF
    port map (
      I => I_imager_ADDR(3),
      O => ADDR(3)
    );
  ADDR_2_OBUF : OBUF
    port map (
      I => I_imager_ADDR(2),
      O => ADDR(2)
    );
  ADDR_1_OBUF : OBUF
    port map (
      I => I_imager_ADDR(1),
      O => ADDR(1)
    );
  ADDR_0_OBUF : OBUF
    port map (
      I => I_imager_ADDR(0),
      O => ADDR(0)
    );
  RGB_0_OBUF : OBUF
    port map (
      I => I_imager_RGB(5),
      O => RGB(0)
    );
  RGB_1_OBUF : OBUF
    port map (
      I => I_imager_RGB(5),
      O => RGB(1)
    );
  RGB_2_OBUF : OBUF
    port map (
      I => I_imager_RGB(5),
      O => RGB(2)
    );
  RGB_3_OBUF : OBUF
    port map (
      I => I_imager_RGB(5),
      O => RGB(3)
    );
  RGB_4_OBUF : OBUF
    port map (
      I => I_imager_RGB(5),
      O => RGB(4)
    );
  RGB_5_OBUF : OBUF
    port map (
      I => I_imager_RGB(5),
      O => RGB(5)
    );
  I_pixel_clock_pulse : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK_BUFGP_14,
      D => N1,
      R => I_pixel_clock_pulse1,
      Q => I_pixel_clock_pulse1
    );
  I_imager_VGARAM_CE : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_VGARAM_CE_mux0000131,
      S => I_imager_VGARAM_CE_mux000026,
      Q => I_imager_VGARAM_CE_376
    );
  I_imager_VGARAM_CE_mux00001311 : LUT3
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => I_imager_VGARAM_CE_mux000090_383,
      I1 => I_vga_controller_HSYNC_537,
      I2 => I_imager_VGARAM_CE_mux000042_381,
      O => I_imager_VGARAM_CE_mux0000131
    );
  I_imager_CHARRAM_CE : FDS
    generic map(
      INIT => '1'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_CHARRAM_CE_mux000084_202,
      S => I_imager_CHARRAM_CE_mux000011,
      Q => I_imager_CHARRAM_CE_193
    );
  I_imager_ADDR_11 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_ADDR_mux0001_11_42,
      S => I_imager_ADDR_mux0001_11_5_97,
      Q => I_imager_ADDR(11)
    );
  I_imager_ADDR_10 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_ADDR_mux0001_10_42,
      S => I_imager_ADDR_mux0001_10_5_92,
      Q => I_imager_ADDR(10)
    );
  I_imager_ADDR_9 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_ADDR_mux0001_9_42,
      S => I_imager_ADDR_mux0001_9_5_145,
      Q => I_imager_ADDR(9)
    );
  I_imager_ADDR_8 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_ADDR_mux0001_8_42,
      S => I_imager_ADDR_mux0001_8_5_140,
      Q => I_imager_ADDR(8)
    );
  I_imager_ADDR_7 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_ADDR_mux0001_7_80_135,
      S => I_imager_ADDR_mux0001_7_3_132,
      Q => I_imager_ADDR(7)
    );
  I_imager_ADDR_6 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_ADDR_mux0001_6_101,
      S => I_imager_ADDR_mux0001_6_0_126,
      Q => I_imager_ADDR(6)
    );
  I_imager_ADDR_5 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_ADDR_mux0001_5_100,
      S => I_imager_ADDR_mux0001_5_89_125,
      Q => I_imager_ADDR(5)
    );
  I_imager_ADDR_mux0001_5_1001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_N9,
      I1 => I_imager_ADDR_share0000(5),
      O => I_imager_ADDR_mux0001_5_100
    );
  I_imager_ADDR_4 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_ADDR_mux0001_4_136,
      S => I_imager_ADDR_mux0001_4_125_110,
      Q => I_imager_ADDR(4)
    );
  I_imager_ADDR_mux0001_4_1361 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_N9,
      I1 => I_imager_ADDR_share0000(4),
      O => I_imager_ADDR_mux0001_4_136
    );
  I_imager_ADDR_3 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_ADDR_mux0001_3_100,
      S => I_imager_ADDR_mux0001_3_89_109,
      Q => I_imager_ADDR(3)
    );
  I_imager_ADDR_mux0001_3_1001 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_N9,
      I1 => I_imager_ADDR_share0000(3),
      O => I_imager_ADDR_mux0001_3_100
    );
  I_imager_ADDR_2 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_ADDR_mux0001_2_101,
      S => I_imager_ADDR_mux0001_2_89_105,
      Q => I_imager_ADDR(2)
    );
  I_imager_ADDR_mux0001_2_1011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_N9,
      I1 => I_imager_ADDR_share0000(2),
      O => I_imager_ADDR_mux0001_2_101
    );
  I_imager_ADDR_1 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_ADDR_mux0001_1_101,
      S => I_imager_ADDR_mux0001_1_89_101,
      Q => I_imager_ADDR(1)
    );
  I_imager_ADDR_mux0001_1_1011 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_N9,
      I1 => I_imager_ADDR_share0000(1),
      O => I_imager_ADDR_mux0001_1_101
    );
  I_imager_ADDR_0 : FDS
    generic map(
      INIT => '0'
    )
    port map (
      C => I_pixel_clock_pulse_533,
      D => I_imager_ADDR_mux0001_0_102,
      S => I_imager_ADDR_mux0001_0_0_80,
      Q => I_imager_ADDR(0)
    );
  I_imager_Mcount_iAdjXPixel_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(7),
      O => I_imager_Mcount_iAdjXPixel_cy_7_rt_308
    );
  I_imager_Mcount_iAdjXPixel_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(6),
      O => I_imager_Mcount_iAdjXPixel_cy_6_rt_306
    );
  I_imager_Mcount_iAdjXPixel_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(5),
      O => I_imager_Mcount_iAdjXPixel_cy_5_rt_304
    );
  I_imager_Mcount_iAdjXPixel_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(4),
      O => I_imager_Mcount_iAdjXPixel_cy_4_rt_302
    );
  I_imager_Mcount_iAdjXPixel_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(3),
      O => I_imager_Mcount_iAdjXPixel_cy_3_rt_300
    );
  I_imager_Mcount_iAdjXPixel_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(2),
      O => I_imager_Mcount_iAdjXPixel_cy_2_rt_298
    );
  I_imager_Mcount_iAdjXPixel_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(1),
      O => I_imager_Mcount_iAdjXPixel_cy_1_rt_296
    );
  I_imager_Madd_sDupeRow_add0000_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(7),
      O => I_imager_Madd_sDupeRow_add0000_cy_7_rt_290
    );
  I_imager_Madd_sDupeRow_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(6),
      O => I_imager_Madd_sDupeRow_add0000_cy_6_rt_288
    );
  I_imager_Madd_sDupeRow_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(5),
      O => I_imager_Madd_sDupeRow_add0000_cy_5_rt_286
    );
  I_imager_Madd_sDupeRow_add0000_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(4),
      O => I_imager_Madd_sDupeRow_add0000_cy_4_rt_284
    );
  I_imager_Madd_sDupeRow_add0000_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(3),
      O => I_imager_Madd_sDupeRow_add0000_cy_3_rt_282
    );
  I_imager_Madd_sDupeRow_add0000_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(2),
      O => I_imager_Madd_sDupeRow_add0000_cy_2_rt_280
    );
  I_imager_Madd_sDupeRow_add0000_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(1),
      O => I_imager_Madd_sDupeRow_add0000_cy_1_rt_278
    );
  I_imager_Madd_ADDR_add0002_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N39,
      O => I_imager_Madd_ADDR_add0002_cy_6_rt_243
    );
  I_imager_Madd_ADDR_add0002_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N40,
      O => I_imager_Madd_ADDR_add0002_cy_5_rt_241
    );
  I_imager_Madd_ADDR_add0000_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N39,
      O => I_imager_Madd_ADDR_add0000_cy_6_rt_228
    );
  I_imager_Madd_ADDR_add0000_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N40,
      O => I_imager_Madd_ADDR_add0000_cy_5_rt_226
    );
  I_vga_controller_Mcount_h_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_h_count(8),
      O => I_vga_controller_Mcount_h_count_cy_8_rt_559
    );
  I_vga_controller_Mcount_h_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_h_count(7),
      O => I_vga_controller_Mcount_h_count_cy_7_rt_557
    );
  I_vga_controller_Mcount_h_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_h_count(6),
      O => I_vga_controller_Mcount_h_count_cy_6_rt_555
    );
  I_vga_controller_Mcount_h_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_h_count(5),
      O => I_vga_controller_Mcount_h_count_cy_5_rt_553
    );
  I_vga_controller_Mcount_h_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_h_count(4),
      O => I_vga_controller_Mcount_h_count_cy_4_rt_551
    );
  I_vga_controller_Mcount_h_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_h_count(3),
      O => I_vga_controller_Mcount_h_count_cy_3_rt_549
    );
  I_vga_controller_Mcount_h_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_h_count(2),
      O => I_vga_controller_Mcount_h_count_cy_2_rt_547
    );
  I_vga_controller_Mcount_h_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_h_count(1),
      O => I_vga_controller_Mcount_h_count_cy_1_rt_545
    );
  I_vga_controller_Mcount_v_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_v_count(8),
      O => I_vga_controller_Mcount_v_count_cy_8_rt_578
    );
  I_vga_controller_Mcount_v_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_v_count(7),
      O => I_vga_controller_Mcount_v_count_cy_7_rt_576
    );
  I_vga_controller_Mcount_v_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_v_count(6),
      O => I_vga_controller_Mcount_v_count_cy_6_rt_574
    );
  I_vga_controller_Mcount_v_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_v_count(5),
      O => I_vga_controller_Mcount_v_count_cy_5_rt_572
    );
  I_vga_controller_Mcount_v_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_v_count(4),
      O => I_vga_controller_Mcount_v_count_cy_4_rt_570
    );
  I_vga_controller_Mcount_v_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_v_count(3),
      O => I_vga_controller_Mcount_v_count_cy_3_rt_568
    );
  I_vga_controller_Mcount_v_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_v_count(2),
      O => I_vga_controller_Mcount_v_count_cy_2_rt_566
    );
  I_vga_controller_Mcount_v_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_v_count(1),
      O => I_vga_controller_Mcount_v_count_cy_1_rt_564
    );
  I_imager_Mcount_iAdjXPixel_xor_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(8),
      O => I_imager_Mcount_iAdjXPixel_xor_8_rt_310
    );
  I_imager_Madd_sDupeRow_add0000_xor_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_imager_iAdjXPixel(8),
      O => I_imager_Madd_sDupeRow_add0000_xor_8_rt_292
    );
  I_imager_Madd_ADDR_add0002_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N38,
      O => I_imager_Madd_ADDR_add0002_xor_7_rt_249
    );
  I_imager_Madd_ADDR_add0000_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => N38,
      O => I_imager_Madd_ADDR_add0000_xor_7_rt_234
    );
  I_vga_controller_Mcount_h_count_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_h_count(9),
      O => I_vga_controller_Mcount_h_count_xor_9_rt_561
    );
  I_vga_controller_Mcount_v_count_xor_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => I_vga_controller_v_count(9),
      O => I_vga_controller_Mcount_v_count_xor_9_rt_580
    );
  I_imager_ADDR_mux0001_8_421 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_ADDR_share0000(8),
      I1 => I_imager_N9,
      I2 => I_vga_controller_HSYNC_537,
      I3 => I_imager_ADDR_mux0001_8_27_138,
      O => I_imager_ADDR_mux0001_8_42
    );
  I_imager_ADDR_mux0001_11_421 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_ADDR_share0000(11),
      I1 => I_imager_N9,
      I2 => I_vga_controller_HSYNC_537,
      I3 => I_imager_ADDR_mux0001_11_27_95,
      O => I_imager_ADDR_mux0001_11_42
    );
  I_imager_ADDR_mux0001_9_421 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_ADDR_share0000(9),
      I1 => I_imager_N9,
      I2 => I_vga_controller_HSYNC_537,
      I3 => I_imager_ADDR_mux0001_9_27_143,
      O => I_imager_ADDR_mux0001_9_42
    );
  I_imager_ADDR_mux0001_10_421 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_ADDR_share0000(10),
      I1 => I_imager_N9,
      I2 => I_vga_controller_HSYNC_537,
      I3 => I_imager_ADDR_mux0001_10_27_90,
      O => I_imager_ADDR_mux0001_10_42
    );
  I_imager_Madd_ADDR_share0000_lut_8_Q : LUT4
    generic map(
      INIT => X"5BF1"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => N26,
      I2 => I_imager_ADDR_mux0003_11_Q,
      I3 => I_imager_ADDR_mux0002_8_mand_166,
      O => I_imager_Madd_ADDR_share0000_lut(8)
    );
  I_imager_Madd_ADDR_share0000_lut_9_Q : LUT4
    generic map(
      INIT => X"5BF1"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => N24,
      I2 => I_imager_ADDR_mux0003_11_Q,
      I3 => I_imager_ADDR_mux0002_9_mand_168,
      O => I_imager_Madd_ADDR_share0000_lut(9)
    );
  I_imager_Madd_ADDR_share0000_lut_10_Q : LUT4
    generic map(
      INIT => X"5BF1"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => N22,
      I2 => I_imager_ADDR_mux0003_11_Q,
      I3 => I_imager_ADDR_mux0002_10_mand_147,
      O => I_imager_Madd_ADDR_share0000_lut(10)
    );
  I_imager_ADDR_mux0001_7_3 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => I_imager_ADDR(7),
      I1 => I_imager_N9,
      I2 => I_imager_N0,
      I3 => I_imager_ADDR_share0000(7),
      O => I_imager_ADDR_mux0001_7_3_132
    );
  I_imager_Madd_ADDR_share0000_lut_0_Q : LUT3
    generic map(
      INIT => X"B4"
    )
    port map (
      I0 => I_imager_iColumn(0),
      I1 => I_vga_controller_HSYNC_537,
      I2 => I_imager_ADDR_mux0002(0),
      O => I_imager_Madd_ADDR_share0000_lut(0)
    );
  I_imager_Madd_ADDR_share0000_lut_2_Q : LUT4
    generic map(
      INIT => X"72D8"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_Result_2_3,
      I2 => I_imager_ADDR_mux0002_2_28_155,
      I3 => I_imager_sResult_mult0003(2),
      O => I_imager_Madd_ADDR_share0000_lut(2)
    );
  I_imager_ADDR_mux0002_1_43_SW0 : LUT2
    generic map(
      INIT => X"9"
    )
    port map (
      I0 => I_imager_iColumn(1),
      I1 => I_imager_iColumn(0),
      O => N54
    );
  I_imager_Madd_ADDR_share0000_lut_1_Q : LUT4
    generic map(
      INIT => X"D8D2"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => N54,
      I2 => I_imager_ADDR_mux0002_1_34_152,
      I3 => I_imager_sResult_mult0003(1),
      O => I_imager_Madd_ADDR_share0000_lut(1)
    );
  I_imager_ADDR_mux0001_6_1011 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_ADDR_share0000(6),
      I1 => I_imager_N9,
      I2 => I_vga_controller_HSYNC_537,
      I3 => N56,
      O => I_imager_ADDR_mux0001_6_101
    );
  I_imager_ADDR_mux0001_6_50_SW0 : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_N24,
      I1 => I_imager_ADDR_mult0001(6),
      O => N58
    );
  I_imager_ADDR_mux0001_7_80 : LUT4
    generic map(
      INIT => X"CC80"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd5_492,
      I1 => I_vga_controller_HSYNC_537,
      I2 => I_imager_ADDR_mult0000(7),
      I3 => I_imager_ADDR_mux0001_7_55_134,
      O => I_imager_ADDR_mux0001_7_80_135
    );
  I_imager_iRowPixel_and00001 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I_imager_iRow_cmp_eq0001,
      I1 => I_imager_iRow_cmp_eq0002,
      I2 => I_imager_sDupeRow_519,
      I3 => I_imager_iAdjXPixel_not0001,
      O => I_imager_iRowPixel_and0000
    );
  I_imager_ADDR_mux0001_0_76_SW0_SW0 : LUT4
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_0_17_85,
      I1 => N74,
      I2 => I_imager_N24,
      I3 => I_imager_ADDR_mult0001(0),
      O => N72
    );
  I_imager_ADDR_mux0001_0_1021 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_ADDR_share0000(0),
      I1 => I_imager_N9,
      I2 => I_vga_controller_HSYNC_537,
      I3 => N76,
      O => I_imager_ADDR_mux0001_0_102
    );
  I_imager_CHARRAM_CE_mux000033 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => I_imager_RAM_WR_and0001,
      I1 => I_imager_im_vgac_re_state_FSM_FFd9_516,
      I2 => N45,
      I3 => N44,
      O => I_imager_CHARRAM_CE_mux000033_199
    );
  I_imager_RAM_WR_mux000062_SW0 : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => I_imager_RAM_WR_mux00004_343,
      I1 => I_imager_RAM_WR_mux000032_342,
      I2 => I_imager_im_vgac_re_state_FSM_FFd9_516,
      I3 => I_imager_N62,
      O => N78
    );
  I_imager_RAM_WR_mux000062 : LUT4
    generic map(
      INIT => X"FAF2"
    )
    port map (
      I0 => N117,
      I1 => I_imager_im_vgac_re_state_cmp_eq0002,
      I2 => N78,
      I3 => I_imager_RAM_WR_339,
      O => I_imager_RAM_WR_mux0000
    );
  I_imager_im_vgac_re_state_FSM_FFd11_In28 : LUT4
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd11_498,
      I1 => I_vga_controller_HSYNC_537,
      I2 => I_imager_im_vgac_re_state_FSM_FFd10_496,
      I3 => I_imager_im_vgac_re_state_FSM_FFd11_In22_500,
      O => I_imager_im_vgac_re_state_FSM_FFd11_In
    );
  I_imager_ADDR_mux0001_3_37_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd4_491,
      I1 => I_imager_ADDR_add0002(3),
      I2 => N127,
      I3 => I_imager_ADDR_mux0002_3_mand_156,
      O => N66
    );
  I_imager_ADDR_mux0001_1_37_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd4_491,
      I1 => I_imager_ADDR_add0002(1),
      I2 => I_imager_ADDR_mux0001_0_31_86,
      I3 => I_imager_sResult_mult0003(1),
      O => N68
    );
  I_imager_ADDR_mux0001_2_37_SW0 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd4_491,
      I1 => I_imager_ADDR_add0002(2),
      I2 => I_imager_ADDR_mux0001_0_31_86,
      I3 => I_imager_sResult_mult0003(2),
      O => N70
    );
  I_vga_controller_v_count_cmp_lt0001246 : LUT4
    generic map(
      INIT => X"D5FF"
    )
    port map (
      I0 => I_vga_controller_h_count(9),
      I1 => I_vga_controller_v_count_cmp_lt0001232_640,
      I2 => I_vga_controller_v_count_cmp_lt0001221,
      I3 => I_vga_controller_h_count(8),
      O => I_vga_controller_v_count_cmp_lt0001
    );
  I_imager_CHARRAM_CE_mux000021 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd10_496,
      I1 => I_imager_im_vgac_re_state_FSM_FFd11_498,
      I2 => I_imager_CHARRAM_CE_mux000020_197,
      O => I_imager_CHARRAM_CE_mux000021_198
    );
  I_imager_iStCharLoc_mux0000_0_117_SW0 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd12_501,
      I1 => I_imager_im_vgac_re_state_FSM_FFd2_502,
      I2 => I_imager_im_vgac_re_state_FSM_FFd3_504,
      I3 => I_imager_im_vgac_re_state_FSM_FFd9_516,
      O => N80
    );
  I_imager_iStCharLoc_mux0000_0_117 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_imager_iStCharLoc_mux0000_0_110_476,
      I1 => I_imager_im_vgac_re_state_FSM_FFd10_496,
      I2 => I_imager_im_vgac_re_state_FSM_FFd11_498,
      I3 => N80,
      O => I_imager_N2
    );
  I_imager_VGARAM_CE_mux000090 : LUT4
    generic map(
      INIT => X"AAA8"
    )
    port map (
      I0 => I_imager_VGARAM_CE_376,
      I1 => I_imager_VGARAM_CE_mux000066_382,
      I2 => I_imager_im_vgac_re_state_FSM_FFd2_502,
      I3 => N82,
      O => I_imager_VGARAM_CE_mux000090_383
    );
  I_imager_iRow_cmp_eq000229 : LUT4
    generic map(
      INIT => X"0004"
    )
    port map (
      I0 => I_imager_sDupeRow_add0000(0),
      I1 => I_imager_iRow_cmp_eq000228_458,
      I2 => I_imager_sDupeRow_add0000(1),
      I3 => N84,
      O => I_imager_iRow_cmp_eq0002
    );
  I_imager_ADDR_mux0001_7_26 : LUT4
    generic map(
      INIT => X"8F88"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd4_491,
      I1 => I_imager_ADDR_add0002(7),
      I2 => I_imager_N38,
      I3 => N86,
      O => I_imager_ADDR_mux0001_7_26_131
    );
  I_imager_ADDR_mux0001_1_89_SW0 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd5_492,
      I1 => I_imager_ADDR_mult0000(1),
      I2 => I_imager_ADDR_mux0001_1_50_100,
      O => N88
    );
  I_imager_ADDR_mux0001_1_89 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => I_imager_ADDR(1),
      I1 => I_vga_controller_HSYNC_537,
      I2 => I_imager_N0,
      I3 => N88,
      O => I_imager_ADDR_mux0001_1_89_101
    );
  I_imager_ADDR_mux0001_2_89_SW0 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd5_492,
      I1 => I_imager_ADDR_mult0000(2),
      I2 => I_imager_ADDR_mux0001_2_50_104,
      O => N90
    );
  I_imager_ADDR_mux0001_2_89 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => I_imager_ADDR(2),
      I1 => I_vga_controller_HSYNC_537,
      I2 => I_imager_N0,
      I3 => N90,
      O => I_imager_ADDR_mux0001_2_89_105
    );
  I_imager_ADDR_mux0001_3_89_SW0 : LUT3
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd5_492,
      I1 => I_imager_ADDR_mult0000(3),
      I2 => I_imager_ADDR_mux0001_3_50_108,
      O => N92
    );
  I_imager_ADDR_mux0001_3_89 : LUT4
    generic map(
      INIT => X"ECA0"
    )
    port map (
      I0 => I_imager_ADDR(3),
      I1 => I_vga_controller_HSYNC_537,
      I2 => I_imager_N0,
      I3 => N92,
      O => I_imager_ADDR_mux0001_3_89_109
    );
  I_imager_im_vgac_re_state_FSM_FFd3_In11 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd1_494,
      I1 => I_imager_iStCharCount(2),
      I2 => I_imager_Madd_ADDR_add0003_cy(1),
      I3 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      O => I_imager_N47
    );
  I_imager_im_vgac_re_state_FSM_FFd2_In1 : LUT4
    generic map(
      INIT => X"1050"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_Madd_ADDR_add0003_cy(1),
      I2 => I_imager_im_vgac_re_state_FSM_FFd4_506,
      I3 => I_imager_iStCharCount(2),
      O => I_imager_im_vgac_re_state_FSM_FFd2_In
    );
  I_imager_im_vgac_re_state_FSM_FFd1_In1 : LUT4
    generic map(
      INIT => X"1050"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_Madd_ADDR_add0003_cy(1),
      I2 => I_imager_im_vgac_re_state_FSM_FFd3_504,
      I3 => I_imager_iStCharCount(2),
      O => I_imager_im_vgac_re_state_FSM_FFd1_In
    );
  I_imager_ADDR_mux0001_0_21_SW0 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => I_imager_iRow(0),
      I1 => I_imager_iRow(2),
      I2 => I_imager_iRow(1),
      I3 => I_imager_iRow(3),
      O => N30
    );
  I_imager_ADDR_mux0001_0_1_SW1 : LUT4
    generic map(
      INIT => X"5115"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_RAM_WR_and0001,
      I2 => N45,
      I3 => N44,
      O => N94
    );
  I_imager_iRow_cmp_eq00011 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => I_imager_iRowPixel(0),
      I1 => I_imager_iRowPixel(1),
      I2 => I_imager_iRowPixel(2),
      I3 => I_imager_iRowPixel(3),
      O => I_imager_iRow_cmp_eq0001
    );
  I_vga_controller_START_VSYNC_not00011 : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => I_vga_controller_v_count(9),
      I1 => I_vga_controller_START_VSYNC_cmp_gt0000212_603,
      I2 => I_vga_controller_START_VSYNC_cmp_lt0000212_605,
      I3 => I_vga_controller_START_VSYNC_cmp_lt0000228_606,
      O => I_vga_controller_START_VSYNC_not0001
    );
  I_vga_controller_VSYNC_or00001 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_vga_controller_v_count(9),
      I1 => I_vga_controller_START_VSYNC_cmp_gt0000212_603,
      I2 => I_vga_controller_START_VSYNC_cmp_lt0000212_605,
      I3 => I_vga_controller_START_VSYNC_cmp_lt0000228_606,
      O => I_vga_controller_VSYNC_or0000
    );
  I_imager_draw_fetch_state_0_not00011 : LUT3
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_draw_fetch_state(0),
      I2 => I_imager_im_re_state_FSM_FFd1_484,
      O => I_imager_draw_fetch_state_0_not0001
    );
  I_imager_im_vgac_re_state_FSM_FFd10_In1 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => I_imager_N14,
      I1 => I_imager_Madd_ADDR_add0003_cy(1),
      I2 => I_imager_iStCharCount(2),
      I3 => I_vga_controller_HSYNC_537,
      O => I_imager_im_vgac_re_state_FSM_FFd10_In
    );
  I_imager_ADDR_mux0001_0_114 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => N130,
      I2 => I_imager_draw_fetch_state(0),
      I3 => I_imager_im_re_state_FSM_FFd1_484,
      O => I_imager_ADDR_mux0001_0_114_83
    );
  I_imager_im_vgac_re_state_FSM_FFd5_In1 : LUT4
    generic map(
      INIT => X"5510"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_im_vgac_re_state_cmp_eq0002,
      I2 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      I3 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      O => I_imager_im_vgac_re_state_FSM_FFd5_In
    );
  I_imager_ADDR_cmp_eq0001 : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => I_imager_iColumn(0),
      I1 => I_imager_iColumn(1),
      I2 => I_imager_iColumn(2),
      I3 => N96,
      O => I_imager_ADDR_cmp_eq0001_55
    );
  I_imager_ADDR_mux0003_5_22 : LUT4
    generic map(
      INIT => X"DDD8"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_Result_5_1,
      I2 => I_imager_ADDR_or0009,
      I3 => N100,
      O => I_imager_ADDR_mux0003_5_Q
    );
  I_imager_ADDR_mux0001_0_1117_SW0 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd2_502,
      I1 => I_imager_iStCharCount(2),
      I2 => I_imager_ADDR_mux0002_2_2,
      I3 => N124,
      O => N102
    );
  I_imager_iRow_and000011 : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I_imager_sDupeRow_519,
      I1 => I_imager_im_re_state_FSM_FFd1_484,
      I2 => I_vga_controller_HSYNC_537,
      I3 => I_imager_iRow_cmp_eq0002,
      O => I_imager_iRowPixel_not0001
    );
  I_imager_iAdjXPixel_and00001 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => I_imager_iRow_cmp_eq0002,
      I1 => I_vga_controller_HSYNC_537,
      I2 => I_imager_im_re_state_FSM_FFd1_484,
      O => I_imager_iAdjXPixel_and0000
    );
  I_imager_VGARAM_CE_mux000090_SW0 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      I1 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      I2 => I_imager_iStCharCount(2),
      I3 => I_imager_Madd_ADDR_add0003_cy(1),
      O => N82
    );
  I_vga_controller_h_count_and00001 : LUT4
    generic map(
      INIT => X"20A0"
    )
    port map (
      I0 => I_vga_controller_h_count(8),
      I1 => I_vga_controller_v_count_cmp_lt0001232_640,
      I2 => I_vga_controller_h_count(9),
      I3 => I_vga_controller_v_count_cmp_lt0001221,
      O => I_vga_controller_h_count_and0000
    );
  I_imager_ADDR_cmp_eq0000_SW1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => I_imager_iRow(3),
      I1 => I_imager_iRow(4),
      O => N98
    );
  I_imager_iRow_and0000_SW1 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => I_imager_iRow(2),
      I1 => I_imager_iRow_cmp_eq0001,
      I2 => I_imager_Result(4),
      I3 => I_imager_iRowPixel_not0001,
      O => N106
    );
  I_imager_iRow_and0000 : LUT4
    generic map(
      INIT => X"0020"
    )
    port map (
      I0 => I_imager_iRow(3),
      I1 => I_imager_iRow(1),
      I2 => I_imager_iRow(0),
      I3 => N106,
      O => I_imager_iRow_and0000_455
    );
  I_imager_im_vgac_re_state_cmp_eq00021 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => I_imager_iStCharCount(2),
      I1 => I_imager_iStCharCount(0),
      I2 => I_imager_iStCharCount(1),
      O => I_imager_im_vgac_re_state_cmp_eq0002
    );
  I_imager_iStCharCount_mux0000_0_31 : LUT4
    generic map(
      INIT => X"54FC"
    )
    port map (
      I0 => I_imager_iStCharCount(2),
      I1 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      I2 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      I3 => I_imager_Madd_ADDR_add0003_cy(1),
      O => I_imager_N67
    );
  I_pixel_clock_pulse_BUFG : BUFG
    port map (
      I => I_pixel_clock_pulse1,
      O => I_pixel_clock_pulse_533
    );
  CLK_BUFGP : BUFGP
    port map (
      I => CLK,
      O => CLK_BUFGP_14
    );
  I_imager_Mcount_iAdjXPixel_lut_0_INV_0 : INV
    port map (
      I => I_imager_iAdjXPixel(0),
      O => I_imager_Mcount_iAdjXPixel_lut(0)
    );
  I_imager_Madd_sDupeRow_add0000_lut_0_INV_0 : INV
    port map (
      I => I_imager_iAdjXPixel(0),
      O => I_imager_Madd_sDupeRow_add0000_lut(0)
    );
  I_imager_write_ctrl_INV_0 : INV
    port map (
      I => I_vga_controller_HSYNC_537,
      O => I_imager_HSYNC_inv
    );
  I_vga_controller_Mcount_h_count_lut_0_INV_0 : INV
    port map (
      I => I_vga_controller_h_count(0),
      O => I_vga_controller_Mcount_h_count_lut(0)
    );
  I_vga_controller_Mcount_v_count_lut_0_INV_0 : INV
    port map (
      I => I_vga_controller_v_count(0),
      O => I_vga_controller_Mcount_v_count_lut(0)
    );
  I_imager_sDupeRow_mux00011_INV_0 : INV
    port map (
      I => I_imager_sDupeRow_519,
      O => I_imager_sDupeRow_mux0001
    );
  I_imager_Mcount_iRowPixel_xor_0_11_INV_0 : INV
    port map (
      I => I_imager_iRowPixel(0),
      O => I_imager_Result(0)
    );
  I_imager_Mcount_iColumn_xor_0_11_INV_0 : INV
    port map (
      I => I_imager_iColumn(0),
      O => I_imager_Result_0_3
    );
  I_imager_Mcount_iColumnPixel_xor_0_11_INV_0 : INV
    port map (
      I => I_imager_iColumnPixel(0),
      O => I_imager_Result_0_4
    );
  I_imager_Result_0_11_INV_0 : INV
    port map (
      I => I_imager_iRow(0),
      O => I_imager_Result_0_1
    );
  I_imager_VGARAM_CE_mux000012 : MUXF5
    port map (
      I0 => N108,
      I1 => N109,
      S => I_imager_im_re_state_FSM_FFd2_486,
      O => I_imager_VGARAM_CE_mux000012_377
    );
  I_imager_VGARAM_CE_mux000012_F : LUT3
    generic map(
      INIT => X"EA"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd4_491,
      I1 => I_imager_im_re_state_FSM_FFd3_490,
      I2 => I_imager_VGARAM_CE_376,
      O => N108
    );
  I_imager_VGARAM_CE_mux000012_G : LUT4
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd4_491,
      I1 => I_vga_controller_DISPLAY_EN_535,
      I2 => I_imager_draw_fetch_state(0),
      I3 => I_imager_VGARAM_CE_376,
      O => N109
    );
  I_imager_iStCharCount_mux0000_0_Q : MUXF5
    port map (
      I0 => N110,
      I1 => N111,
      S => I_imager_N5,
      O => I_imager_iStCharCount_mux0000(0)
    );
  I_imager_iStCharCount_mux0000_0_F : LUT4
    generic map(
      INIT => X"DCA8"
    )
    port map (
      I0 => I_imager_iStCharCount(2),
      I1 => I_imager_N14,
      I2 => I_imager_ADDR_mux0002_2_2,
      I3 => I_imager_Madd_ADDR_add0003_cy(1),
      O => N110
    );
  I_imager_iStCharCount_mux0000_0_G : LUT4
    generic map(
      INIT => X"FAF8"
    )
    port map (
      I0 => I_imager_Madd_ADDR_add0003_cy(1),
      I1 => I_imager_ADDR_mux0002_2_2,
      I2 => I_imager_iStCharCount(2),
      I3 => I_imager_N14,
      O => N111
    );
  I_imager_ADDR_mux0001_4_2 : MUXF5
    port map (
      I0 => N112,
      I1 => N113,
      S => I_vga_controller_HSYNC_537,
      O => I_imager_N9
    );
  I_imager_ADDR_mux0001_4_2_F : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      I1 => I_imager_im_vgac_re_state_FSM_FFd8_514,
      I2 => I_imager_N67,
      I3 => I_imager_N14,
      O => N112
    );
  I_imager_ADDR_mux0001_4_2_G : LUT3
    generic map(
      INIT => X"10"
    )
    port map (
      I0 => I_imager_ADDR_cmp_eq0001_55,
      I1 => I_imager_draw_fetch_state(0),
      I2 => I_imager_im_re_state_FSM_FFd1_484,
      O => N113
    );
  I_imager_iStCharCount_mux0000_2_Q : MUXF5
    port map (
      I0 => N114,
      I1 => N115,
      S => I_imager_iStCharCount(0),
      O => I_imager_iStCharCount_mux0000(2)
    );
  I_imager_iStCharCount_mux0000_2_F : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      I1 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      I2 => I_imager_N14,
      O => N114
    );
  I_imager_iStCharCount_mux0000_2_G : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => I_imager_N5,
      I1 => I_imager_N14,
      I2 => I_imager_iStCharCount(1),
      I3 => I_imager_iStCharCount(2),
      O => N115
    );
  I_imager_im_re_state_FSM_FFd2_In1 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd3_490,
      I1 => I_imager_im_re_state_FSM_FFd1_484,
      O => I_imager_im_re_state_FSM_FFd2_In1_488
    );
  I_imager_im_re_state_FSM_FFd2_In2 : LUT4
    generic map(
      INIT => X"FFAE"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd3_490,
      I1 => I_imager_im_re_state_FSM_FFd2_486,
      I2 => I_vga_controller_DISPLAY_EN_535,
      I3 => I_imager_im_re_state_FSM_FFd1_484,
      O => I_imager_im_re_state_FSM_FFd2_In2_489
    );
  I_imager_im_re_state_FSM_FFd2_In_f5 : MUXF5
    port map (
      I0 => I_imager_im_re_state_FSM_FFd2_In2_489,
      I1 => I_imager_im_re_state_FSM_FFd2_In1_488,
      S => I_vga_controller_START_VSYNC_602,
      O => I_imager_im_re_state_FSM_FFd2_In
    );
  I_imager_iCurrentChar_not000111 : LUT4
    generic map(
      INIT => X"F7FF"
    )
    port map (
      I0 => I_imager_iColumnPixel(2),
      I1 => I_imager_iColumnPixel(1),
      I2 => I_imager_iColumnPixel(3),
      I3 => I_imager_iColumnPixel(0),
      O => I_imager_iCurrentChar_not00011
    );
  I_imager_iCurrentChar_not00011_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => I_imager_iCurrentChar_not00011,
      S => I_imager_im_re_state_FSM_FFd1_484,
      O => I_imager_N30
    );
  I_vga_controller_v_count_cmp_lt00012211 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => I_vga_controller_h_count(2),
      I1 => I_vga_controller_h_count(1),
      I2 => I_vga_controller_h_count(0),
      I3 => I_vga_controller_h_count(3),
      O => I_vga_controller_v_count_cmp_lt00012211_639
    );
  I_vga_controller_v_count_cmp_lt0001221_f5 : MUXF5
    port map (
      I0 => N1,
      I1 => I_vga_controller_v_count_cmp_lt00012211_639,
      S => I_vga_controller_h_count(4),
      O => I_vga_controller_v_count_cmp_lt0001221
    );
  I_imager_VGARAM_CE_mux0000261 : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => I_imager_VGARAM_CE_mux000012_377,
      I1 => I_imager_im_re_state_FSM_FFd1_484,
      I2 => I_imager_draw_fetch_state(0),
      I3 => I_imager_VGARAM_CE_376,
      O => I_imager_VGARAM_CE_mux0000261_380
    );
  I_imager_VGARAM_CE_mux000026_f5 : MUXF5
    port map (
      I0 => N0,
      I1 => I_imager_VGARAM_CE_mux0000261_380,
      S => I_vga_controller_HSYNC_537,
      O => I_imager_VGARAM_CE_mux000026
    );
  I_imager_ADDR_mux0003_3_1 : LUT4
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => N45,
      I1 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      I2 => I_imager_iStCharLoc(0),
      I3 => I_imager_ADDR_or0010,
      O => I_imager_ADDR_mux0003_3_1_172
    );
  I_imager_ADDR_mux0003_3_f5 : MUXF5
    port map (
      I0 => I_imager_ADDR_mux0003_3_1_172,
      I1 => I_imager_Result_3_3,
      S => I_vga_controller_HSYNC_537,
      O => I_imager_ADDR_mux0003_3_Q
    );
  I_vga_controller_vStartTrigger_not000111 : LUT4
    generic map(
      INIT => X"FFFE"
    )
    port map (
      I0 => I_vga_controller_vStartTrigger_621,
      I1 => I_vga_controller_START_VSYNC_cmp_lt0000228_606,
      I2 => I_vga_controller_START_VSYNC_cmp_lt0000212_605,
      I3 => I_vga_controller_START_VSYNC_cmp_gt0000212_603,
      O => I_vga_controller_vStartTrigger_not00011
    );
  I_vga_controller_vStartTrigger_not00011_f5 : MUXF5
    port map (
      I0 => I_vga_controller_vStartTrigger_not00011,
      I1 => N1,
      S => I_vga_controller_v_count(9),
      O => I_vga_controller_vStartTrigger_not0001
    );
  I_imager_CHARRAM_CE_mux0000111 : LUT4
    generic map(
      INIT => X"AA8A"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_im_re_state_FSM_FFd5_492,
      I2 => I_imager_draw_fetch_state(0),
      I3 => I_imager_CHARRAM_CE_193,
      O => I_imager_CHARRAM_CE_mux0000111_195
    );
  I_imager_CHARRAM_CE_mux0000112 : LUT4
    generic map(
      INIT => X"A888"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_im_re_state_FSM_FFd5_492,
      I2 => I_imager_CHARRAM_CE_193,
      I3 => I_imager_N59,
      O => I_imager_CHARRAM_CE_mux0000112_196
    );
  I_imager_CHARRAM_CE_mux000011_f5 : MUXF5
    port map (
      I0 => I_imager_CHARRAM_CE_mux0000112_196,
      I1 => I_imager_CHARRAM_CE_mux0000111_195,
      S => I_imager_im_re_state_FSM_FFd1_484,
      O => I_imager_CHARRAM_CE_mux000011
    );
  I_imager_ADDR_mux0001_4_41 : LUT2_D
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_im_vgac_re_state_FSM_FFd9_516,
      LO => N116,
      O => I_imager_N32
    );
  I_imager_ADDR_or00051 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      I1 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      LO => N117,
      O => I_imager_ADDR_mux0002_2_2
    );
  I_imager_ADDR_mux0003_4_11 : LUT2_D
    generic map(
      INIT => X"4"
    )
    port map (
      I0 => I_vga_controller_HSYNC_537,
      I1 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      LO => N118,
      O => I_imager_N31
    );
  I_imager_ADDR_or00091 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd8_514,
      I1 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      LO => N119,
      O => I_imager_ADDR_or0009
    );
  I_imager_ADDR_mux0001_0_2111 : LUT3_D
    generic map(
      INIT => X"20"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd1_484,
      I1 => I_imager_draw_fetch_state(0),
      I2 => I_imager_ADDR_cmp_eq0001_55,
      LO => N120,
      O => I_imager_N65
    );
  I_imager_Madd_sResult_add0003_cy_3_1 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I_imager_iColumn(3),
      I1 => I_imager_iColumn(2),
      I2 => I_imager_iColumn(1),
      I3 => I_imager_iColumn(0),
      LO => N121,
      O => I_imager_Madd_sResult_add0003_cy(3)
    );
  I_imager_ADDR_mux0002_0_11 : LUT4_D
    generic map(
      INIT => X"FFAB"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd4_506,
      I1 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      I2 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      I3 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      LO => N122,
      O => I_imager_N8
    );
  I_imager_ADDR_or00101 : LUT2_D
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd4_506,
      I1 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      LO => N123,
      O => I_imager_ADDR_or0010
    );
  I_imager_iStCharCount_mux0002_2_11 : LUT2_D
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_iStCharCount(0),
      I1 => I_imager_iStCharCount(1),
      LO => N124,
      O => I_imager_Madd_ADDR_add0003_cy(1)
    );
  I_imager_ADDR_mux0001_4_73 : LUT4_L
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_0_31_86,
      I1 => I_imager_ADDR_mux0001_4_53_114,
      I2 => I_imager_ADDR_mux0001_4_37_113,
      I3 => I_imager_ADDR_mux0002_4_mand_158,
      LO => I_imager_ADDR_mux0001_4_73_115
    );
  I_imager_ADDR_mux0001_4_98 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd5_492,
      I1 => I_imager_ADDR_mult0000(4),
      LO => I_imager_ADDR_mux0001_4_98_117
    );
  I_imager_ADDR_mux0001_5_37 : LUT4_L
    generic map(
      INIT => X"FEFC"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_0_31_86,
      I1 => I_imager_ADDR_mux0001_5_17_121,
      I2 => I_imager_ADDR_mux0001_5_1_119,
      I3 => I_imager_ADDR_mux0002_5_mand_160,
      LO => I_imager_ADDR_mux0001_5_37_122
    );
  I_imager_ADDR_mux0001_5_62 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd5_492,
      I1 => I_imager_ADDR_mult0000(5),
      LO => I_imager_ADDR_mux0001_5_62_124
    );
  I_imager_ADDR_mux0001_6_1 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_ADDR_add0002(6),
      I1 => I_imager_im_re_state_FSM_FFd4_491,
      LO => I_imager_ADDR_mux0001_6_1_127
    );
  I_imager_Madd_ADDR_addsub0000_cy_3_1 : LUT4_D
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => I_imager_iRow(3),
      I1 => I_imager_iRow(2),
      I2 => I_imager_iRow(1),
      I3 => I_imager_iRow(0),
      LO => N125,
      O => I_imager_Madd_ADDR_addsub0000_cy(3)
    );
  I_imager_ADDR_mux0001_7_55 : LUT4_L
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_7_26_131,
      I1 => I_imager_N24,
      I2 => I_imager_ADDR_mux0001_7_38_133,
      I3 => I_imager_ADDR_mult0001(7),
      LO => I_imager_ADDR_mux0001_7_55_134
    );
  I_imager_ADDR_mux0001_8_24 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd5_492,
      I1 => I_imager_ADDR_mult0000(8),
      LO => I_imager_ADDR_mux0001_8_24_137
    );
  I_imager_ADDR_mux0002_2_28 : LUT4_D
    generic map(
      INIT => X"EA48"
    )
    port map (
      I0 => I_imager_iStCharCount(2),
      I1 => I_imager_ADDR_mux0002_2_2,
      I2 => I_imager_Madd_ADDR_add0003_cy(1),
      I3 => I_imager_N8,
      LO => N126,
      O => I_imager_ADDR_mux0002_2_28_155
    );
  I_imager_ADDR_mux0001_9_24 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd5_492,
      I1 => I_imager_ADDR_mult0000(9),
      LO => I_imager_ADDR_mux0001_9_24_142
    );
  I_imager_ADDR_mux0002_1_20 : LUT4_L
    generic map(
      INIT => X"3C28"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd6_510,
      I1 => I_imager_iStCharCount(0),
      I2 => I_imager_iStCharCount(1),
      I3 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      LO => I_imager_ADDR_mux0002_1_20_151
    );
  I_imager_ADDR_mux0001_10_24 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd5_492,
      I1 => I_imager_ADDR_mult0000(10),
      LO => I_imager_ADDR_mux0001_10_24_89
    );
  I_imager_ADDR_mux0001_11_24 : LUT2_L
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd5_492,
      I1 => I_imager_ADDR_mult0000(11),
      LO => I_imager_ADDR_mux0001_11_24_94
    );
  I_imager_ADDR_mux0001_6_76_SW0 : LUT4_L
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_6_37_130,
      I1 => I_imager_ADDR_mult0000(6),
      I2 => I_imager_im_re_state_FSM_FFd5_492,
      I3 => N58,
      LO => N56
    );
  I_imager_ADDR_mux0001_0_31 : LUT4_D
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => I_imager_sDupeRow_519,
      I1 => I_imager_draw_fetch_state(0),
      I2 => I_imager_im_re_state_FSM_FFd1_484,
      I3 => I_imager_ADDR_cmp_eq0001_55,
      LO => N127,
      O => I_imager_ADDR_mux0001_0_31_86
    );
  I_imager_ADDR_mux0001_3_50 : LUT4_L
    generic map(
      INIT => X"FEEE"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_3_17_107,
      I1 => N66,
      I2 => I_imager_N24,
      I3 => I_imager_ADDR_mult0001(3),
      LO => I_imager_ADDR_mux0001_3_50_108
    );
  I_imager_ADDR_mux0001_1_50 : LUT4_L
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_1_17_99,
      I1 => I_imager_N24,
      I2 => N68,
      I3 => I_imager_ADDR_mult0001(1),
      LO => I_imager_ADDR_mux0001_1_50_100
    );
  I_imager_ADDR_mux0001_2_50 : LUT4_L
    generic map(
      INIT => X"FEFA"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_2_17_103,
      I1 => I_imager_N24,
      I2 => N70,
      I3 => I_imager_ADDR_mult0001(2),
      LO => I_imager_ADDR_mux0001_2_50_104
    );
  I_imager_ADDR_mux0001_0_76_SW0 : LUT3_L
    generic map(
      INIT => X"F8"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd5_492,
      I1 => I_imager_ADDR_mult0000(0),
      I2 => N72,
      LO => N76
    );
  I_imager_ADDR_mux0001_10_129 : LUT4_D
    generic map(
      INIT => X"FF32"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd12_501,
      I1 => I_vga_controller_HSYNC_537,
      I2 => I_imager_im_vgac_re_state_FSM_FFd10_496,
      I3 => I_imager_ADDR_mux0001_10_123_87,
      LO => N128,
      O => I_imager_N15
    );
  I_imager_ADDR_mux0001_0_37_SW0 : LUT4_L
    generic map(
      INIT => X"F888"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd4_491,
      I1 => I_imager_ADDR_add0002(0),
      I2 => I_imager_ADDR_mux0001_0_31_86,
      I3 => I_imager_sResult_mult0003(0),
      LO => N74
    );
  I_imager_iRow_cmp_eq000229_SW0 : LUT3_L
    generic map(
      INIT => X"DF"
    )
    port map (
      I0 => I_imager_sDupeRow_add0000(6),
      I1 => I_imager_sDupeRow_add0000(7),
      I2 => I_imager_sDupeRow_add0000(8),
      LO => N84
    );
  I_imager_ADDR_mux0001_0_1 : LUT4_D
    generic map(
      INIT => X"FFEA"
    )
    port map (
      I0 => I_imager_ADDR_mux0001_0_114_83,
      I1 => I_imager_im_vgac_re_state_FSM_FFd9_516,
      I2 => N94,
      I3 => I_imager_ADDR_mux0001_0_1117_82,
      LO => N129,
      O => I_imager_N0
    );
  I_imager_ADDR_mux0001_0_1121 : LUT4_D
    generic map(
      INIT => X"FF4C"
    )
    port map (
      I0 => I_vga_controller_DISPLAY_EN_535,
      I1 => I_imager_im_re_state_FSM_FFd2_486,
      I2 => I_imager_draw_fetch_state(0),
      I3 => I_imager_im_re_state_FSM_FFd3_490,
      LO => N130,
      O => I_imager_N59
    );
  I_imager_ADDR_mux0003_4_21 : LUT3_D
    generic map(
      INIT => X"32"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      I1 => I_vga_controller_HSYNC_537,
      I2 => I_imager_im_vgac_re_state_FSM_FFd4_506,
      LO => N131,
      O => I_imager_N35
    );
  I_imager_ADDR_mux0003_4_14 : LUT4_L
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd5_508,
      I1 => I_imager_im_vgac_re_state_FSM_FFd4_506,
      I2 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      I3 => I_imager_ADDR_or0009,
      LO => I_imager_ADDR_mux0003_4_14_174
    );
  I_imager_ADDR_cmp_eq0000 : LUT4_D
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => I_imager_iRow(0),
      I1 => I_imager_iRow(1),
      I2 => I_imager_iRow(2),
      I3 => N98,
      LO => N132,
      O => I_imager_ADDR_cmp_eq0000_54
    );
  I_imager_ADDR_mux0003_5_22_SW0 : LUT4_L
    generic map(
      INIT => X"ECAF"
    )
    port map (
      I0 => N43,
      I1 => I_imager_iStCharLoc(2),
      I2 => I_imager_im_vgac_re_state_FSM_FFd7_512,
      I3 => I_imager_ADDR_or0010,
      LO => N100
    );
  I_imager_ADDR_mux0001_0_1117 : LUT4_D
    generic map(
      INIT => X"3332"
    )
    port map (
      I0 => I_imager_im_vgac_re_state_FSM_FFd1_494,
      I1 => I_vga_controller_HSYNC_537,
      I2 => I_imager_im_vgac_re_state_FSM_FFd11_498,
      I3 => N102,
      LO => N133,
      O => I_imager_ADDR_mux0001_0_1117_82
    );
  I_imager_ADDR_mux0001_7_26_SW0 : LUT4_L
    generic map(
      INIT => X"A280"
    )
    port map (
      I0 => I_imager_im_re_state_FSM_FFd2_486,
      I1 => I_imager_ADDR_cmp_eq0000_54,
      I2 => N38,
      I3 => I_imager_ADDR_add0000(7),
      LO => N86
    );
  I_imager_ADDR_cmp_eq0001_SW0 : LUT3_L
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => I_imager_iColumn(5),
      I1 => I_imager_iColumn(3),
      I2 => I_imager_iColumn(4),
      LO => N96
    );
  I_imager_ADDR_mux0001_0_12 : LUT3_D
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => I_vga_controller_DISPLAY_EN_535,
      I1 => I_imager_draw_fetch_state(0),
      I2 => I_imager_im_re_state_FSM_FFd2_486,
      LO => N134,
      O => I_imager_ADDR_mux0001_0_12_84
    );

end Structure;

