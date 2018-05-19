/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Users/Craig Vella/Documents/ISEProjects/Dani-I-VGA/vga_controller.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );


static void work_a_3767279020_3212880686_p_0(char *t0)
{
    unsigned char t1;
    unsigned char t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    unsigned char t7;
    unsigned char t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    int t14;
    int t15;
    unsigned char t16;
    char *t17;
    int t18;
    int t19;
    int t20;
    unsigned char t21;
    unsigned char t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;

LAB0:    xsi_set_current_line(64, ng0);
    t3 = (t0 + 992U);
    t4 = xsi_signal_has_event(t3);
    if (t4 == 1)
        goto LAB8;

LAB9:    t2 = (unsigned char)0;

LAB10:    if (t2 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t3 = (t0 + 5432);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(67, ng0);
    t5 = (t0 + 3888U);
    t13 = *((char **)t5);
    t14 = *((int *)t13);
    t15 = (640 + 16);
    t16 = (t14 < t15);
    if (t16 == 1)
        goto LAB14;

LAB15:    t5 = (t0 + 3888U);
    t17 = *((char **)t5);
    t18 = *((int *)t17);
    t19 = (640 + 16);
    t20 = (t19 + 96);
    t21 = (t18 > t20);
    t12 = t21;

LAB16:    if (t12 != 0)
        goto LAB11;

LAB13:    xsi_set_current_line(70, ng0);
    t3 = (t0 + 5512);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);

LAB12:    xsi_set_current_line(74, ng0);
    t3 = (t0 + 4008U);
    t5 = *((char **)t3);
    t14 = *((int *)t5);
    t15 = (480 + 10);
    t2 = (t14 < t15);
    if (t2 == 1)
        goto LAB20;

LAB21:    t3 = (t0 + 4008U);
    t6 = *((char **)t3);
    t18 = *((int *)t6);
    t19 = (480 + 10);
    t20 = (t19 + 2);
    t4 = (t18 > t20);
    t1 = t4;

LAB22:    if (t1 != 0)
        goto LAB17;

LAB19:    xsi_set_current_line(78, ng0);
    t3 = (t0 + 5576);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(79, ng0);
    t3 = (t0 + 4128U);
    t5 = *((char **)t3);
    t1 = *((unsigned char *)t5);
    t2 = (t1 == (unsigned char)3);
    if (t2 != 0)
        goto LAB23;

LAB25:    xsi_set_current_line(83, ng0);
    t3 = (t0 + 5640);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);

LAB24:
LAB18:    xsi_set_current_line(88, ng0);
    t3 = (t0 + 3888U);
    t5 = *((char **)t3);
    t14 = *((int *)t5);
    t1 = (t14 < 640);
    if (t1 != 0)
        goto LAB26;

LAB28:
LAB27:    xsi_set_current_line(91, ng0);
    t3 = (t0 + 4008U);
    t5 = *((char **)t3);
    t14 = *((int *)t5);
    t1 = (t14 < 480);
    if (t1 != 0)
        goto LAB29;

LAB31:
LAB30:    xsi_set_current_line(96, ng0);
    t3 = (t0 + 3888U);
    t5 = *((char **)t3);
    t14 = *((int *)t5);
    t2 = (t14 < 640);
    if (t2 == 1)
        goto LAB35;

LAB36:    t1 = (unsigned char)0;

LAB37:    if (t1 != 0)
        goto LAB32;

LAB34:    xsi_set_current_line(99, ng0);
    t3 = (t0 + 5832);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t3);

LAB33:    xsi_set_current_line(103, ng0);
    t3 = (t0 + 3888U);
    t5 = *((char **)t3);
    t14 = *((int *)t5);
    t3 = (t0 + 3648U);
    t6 = *((char **)t3);
    t15 = *((int *)t6);
    t18 = (t15 - 1);
    t1 = (t14 < t18);
    if (t1 != 0)
        goto LAB38;

LAB40:    xsi_set_current_line(106, ng0);
    t3 = (t0 + 3888U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    *((int *)t3) = 0;
    xsi_set_current_line(107, ng0);
    t3 = (t0 + 4008U);
    t5 = *((char **)t3);
    t14 = *((int *)t5);
    t3 = (t0 + 3768U);
    t6 = *((char **)t3);
    t15 = *((int *)t6);
    t18 = (t15 - 1);
    t1 = (t14 < t18);
    if (t1 != 0)
        goto LAB41;

LAB43:    xsi_set_current_line(110, ng0);
    t3 = (t0 + 4008U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    *((int *)t3) = 0;

LAB42:
LAB39:    goto LAB3;

LAB5:    t5 = (t0 + 1192U);
    t9 = *((char **)t5);
    t10 = *((unsigned char *)t9);
    t11 = (t10 == (unsigned char)3);
    t1 = t11;
    goto LAB7;

LAB8:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t7 = *((unsigned char *)t6);
    t8 = (t7 == (unsigned char)3);
    t2 = t8;
    goto LAB10;

LAB11:    xsi_set_current_line(68, ng0);
    t22 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, (unsigned char)2);
    t5 = (t0 + 5512);
    t23 = (t5 + 56U);
    t24 = *((char **)t23);
    t25 = (t24 + 56U);
    t26 = *((char **)t25);
    *((unsigned char *)t26) = t22;
    xsi_driver_first_trans_fast_port(t5);
    goto LAB12;

LAB14:    t12 = (unsigned char)1;
    goto LAB16;

LAB17:    xsi_set_current_line(75, ng0);
    t7 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, (unsigned char)2);
    t3 = (t0 + 5576);
    t9 = (t3 + 56U);
    t13 = *((char **)t9);
    t17 = (t13 + 56U);
    t23 = *((char **)t17);
    *((unsigned char *)t23) = t7;
    xsi_driver_first_trans_fast_port(t3);
    xsi_set_current_line(76, ng0);
    t3 = (t0 + 4128U);
    t5 = *((char **)t3);
    t3 = (t5 + 0);
    *((unsigned char *)t3) = (unsigned char)3;
    goto LAB18;

LAB20:    t1 = (unsigned char)1;
    goto LAB22;

LAB23:    xsi_set_current_line(80, ng0);
    t3 = (t0 + 4128U);
    t6 = *((char **)t3);
    t3 = (t6 + 0);
    *((unsigned char *)t3) = (unsigned char)2;
    xsi_set_current_line(81, ng0);
    t3 = (t0 + 5640);
    t5 = (t3 + 56U);
    t6 = *((char **)t5);
    t9 = (t6 + 56U);
    t13 = *((char **)t9);
    *((unsigned char *)t13) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB24;

LAB26:    xsi_set_current_line(89, ng0);
    t3 = (t0 + 3888U);
    t6 = *((char **)t3);
    t15 = *((int *)t6);
    t3 = (t0 + 5704);
    t9 = (t3 + 56U);
    t13 = *((char **)t9);
    t17 = (t13 + 56U);
    t23 = *((char **)t17);
    *((int *)t23) = t15;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB27;

LAB29:    xsi_set_current_line(92, ng0);
    t3 = (t0 + 4008U);
    t6 = *((char **)t3);
    t15 = *((int *)t6);
    t3 = (t0 + 5768);
    t9 = (t3 + 56U);
    t13 = *((char **)t9);
    t17 = (t13 + 56U);
    t23 = *((char **)t17);
    *((int *)t23) = t15;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB30;

LAB32:    xsi_set_current_line(97, ng0);
    t3 = (t0 + 5832);
    t9 = (t3 + 56U);
    t13 = *((char **)t9);
    t17 = (t13 + 56U);
    t23 = *((char **)t17);
    *((unsigned char *)t23) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t3);
    goto LAB33;

LAB35:    t3 = (t0 + 4008U);
    t6 = *((char **)t3);
    t15 = *((int *)t6);
    t4 = (t15 < 480);
    t1 = t4;
    goto LAB37;

LAB38:    xsi_set_current_line(104, ng0);
    t3 = (t0 + 3888U);
    t9 = *((char **)t3);
    t19 = *((int *)t9);
    t20 = (t19 + 1);
    t3 = (t0 + 3888U);
    t13 = *((char **)t3);
    t3 = (t13 + 0);
    *((int *)t3) = t20;
    goto LAB39;

LAB41:    xsi_set_current_line(108, ng0);
    t3 = (t0 + 4008U);
    t9 = *((char **)t3);
    t19 = *((int *)t9);
    t20 = (t19 + 1);
    t3 = (t0 + 4008U);
    t13 = *((char **)t3);
    t3 = (t13 + 0);
    *((int *)t3) = t20;
    goto LAB42;

}


extern void work_a_3767279020_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3767279020_3212880686_p_0};
	xsi_register_didat("work_a_3767279020_3212880686", "isim/Dani_I_VGA_TopModel_isim_beh.exe.sim/work/a_3767279020_3212880686.didat");
	xsi_register_executes(pe);
}
