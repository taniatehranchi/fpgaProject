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
static const char *ng0 = "C:/Users/taravat/Desktop/fpga-project/fpgaProject/final_imageCompression/FileWriter.vhd";
extern char *IEEE_P_0774719531;
extern char *STD_TEXTIO;

int ieee_p_0774719531_sub_378705076_2162500114(char *, char *, char *);
unsigned char ieee_p_0774719531_sub_3890342512_2162500114(char *, char *, char *, int );


static void work_a_2330757300_3212880686_p_0(char *t0)
{
    char t16[16];
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
    unsigned char t12;
    char *t13;
    char *t14;
    char *t17;
    char *t18;
    int t19;
    unsigned int t20;

LAB0:    xsi_set_current_line(49, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 3168);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(50, ng0);
    t4 = (t0 + 1192U);
    t8 = *((char **)t4);
    t9 = *((unsigned char *)t8);
    t10 = (t9 == (unsigned char)3);
    if (t10 != 0)
        goto LAB8;

LAB10:
LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(51, ng0);
    t4 = (t0 + 1512U);
    t11 = *((char **)t4);
    t4 = (t0 + 5400U);
    t12 = ieee_p_0774719531_sub_3890342512_2162500114(IEEE_P_0774719531, t11, t4, 0);
    if (t12 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB9;

LAB11:    xsi_set_current_line(52, ng0);
    t13 = (t0 + 2016U);
    t14 = (t0 + 5568);
    t17 = (t16 + 0U);
    t18 = (t17 + 0U);
    *((int *)t18) = 1;
    t18 = (t17 + 4U);
    *((int *)t18) = 10;
    t18 = (t17 + 8U);
    *((int *)t18) = 1;
    t19 = (10 - 1);
    t20 = (t19 * 1);
    t20 = (t20 + 1);
    t18 = (t17 + 12U);
    *((unsigned int *)t18) = t20;
    std_textio_file_open1(t13, t14, t16, (unsigned char)2);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2656);
    t4 = (t0 + 2192U);
    t5 = (t0 + 1352U);
    t8 = *((char **)t5);
    t5 = (t0 + 5384U);
    t19 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t8, t5);
    std_textio_write5(STD_TEXTIO, t2, t4, t19, (unsigned char)0, 0);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 2656);
    t4 = (t0 + 2016U);
    t5 = (t0 + 2192U);
    std_textio_writeline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 2656);
    t4 = (t0 + 2192U);
    t5 = (t0 + 1512U);
    t8 = *((char **)t5);
    t5 = (t0 + 5400U);
    t19 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t8, t5);
    std_textio_write5(STD_TEXTIO, t2, t4, t19, (unsigned char)0, 0);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2656);
    t4 = (t0 + 2016U);
    t5 = (t0 + 2192U);
    std_textio_writeline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 2016U);
    std_textio_file_close(t2);
    goto LAB12;

}


extern void work_a_2330757300_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2330757300_3212880686_p_0};
	xsi_register_didat("work_a_2330757300_3212880686", "isim/main_TestBench_isim_beh.exe.sim/work/a_2330757300_3212880686.didat");
	xsi_register_executes(pe);
}
