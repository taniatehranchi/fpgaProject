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
static const char *ng0 = "C:/Users/taravat/Desktop/fpga-project/fpgaProject/imageCompression/counter.vhd";
extern char *IEEE_P_0774719531;

unsigned char ieee_p_0774719531_sub_2698824431_2162500114(char *, char *, char *, char *, char *);
char *ieee_p_0774719531_sub_436279890_2162500114(char *, char *, char *, char *, int );


static void work_a_4000226436_3212880686_p_0(char *t0)
{
    char t14[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    unsigned int t15;
    unsigned int t16;
    int t17;
    char *t18;
    char *t19;
    char *t20;

LAB0:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1632U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3592);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(43, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB11;

LAB12:    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t1 = *((unsigned char *)t4);
    t3 = (t1 == (unsigned char)3);
    if (t3 != 0)
        goto LAB13;

LAB14:
LAB9:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t2 = (t0 + 3736);
    t5 = (t2 + 56U);
    t8 = *((char **)t5);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    memcpy(t12, t4, 3U);
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(44, ng0);
    t4 = (t0 + 6046);
    t12 = (t0 + 2288U);
    t13 = *((char **)t12);
    t12 = (t13 + 0);
    memcpy(t12, t4, 3U);
    goto LAB9;

LAB11:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 1032U);
    t5 = *((char **)t2);
    t2 = (t0 + 2288U);
    t8 = *((char **)t2);
    t2 = (t8 + 0);
    memcpy(t2, t5, 3U);
    goto LAB9;

LAB13:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 2288U);
    t5 = *((char **)t2);
    t2 = (t0 + 6012U);
    t8 = ieee_p_0774719531_sub_436279890_2162500114(IEEE_P_0774719531, t14, t5, t2, 1);
    t11 = (t0 + 2288U);
    t12 = *((char **)t11);
    t11 = (t12 + 0);
    t13 = (t14 + 12U);
    t15 = *((unsigned int *)t13);
    t16 = (1U * t15);
    memcpy(t11, t8, t16);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 2288U);
    t4 = *((char **)t2);
    t2 = (t0 + 6012U);
    t5 = (t0 + 6049);
    t11 = (t14 + 0U);
    t12 = (t11 + 0U);
    *((int *)t12) = 0;
    t12 = (t11 + 4U);
    *((int *)t12) = 2;
    t12 = (t11 + 8U);
    *((int *)t12) = 1;
    t17 = (2 - 0);
    t15 = (t17 * 1);
    t15 = (t15 + 1);
    t12 = (t11 + 12U);
    *((unsigned int *)t12) = t15;
    t1 = ieee_p_0774719531_sub_2698824431_2162500114(IEEE_P_0774719531, t4, t2, t5, t14);
    if (t1 != 0)
        goto LAB15;

LAB17:
LAB16:    goto LAB9;

LAB15:    xsi_set_current_line(50, ng0);
    t12 = (t0 + 3672);
    t13 = (t12 + 56U);
    t18 = *((char **)t13);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    *((unsigned char *)t20) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t12);
    goto LAB16;

}


extern void work_a_4000226436_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4000226436_3212880686_p_0};
	xsi_register_didat("work_a_4000226436_3212880686", "isim/test_counter_isim_beh.exe.sim/work/a_4000226436_3212880686.didat");
	xsi_register_executes(pe);
}
