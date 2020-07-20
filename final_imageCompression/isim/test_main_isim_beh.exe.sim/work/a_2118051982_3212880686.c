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
static const char *ng0 = "C:/Users/taravat/Desktop/fpga-project/fpgaProject/final_imageCompression/Writer.vhd";
extern char *IEEE_P_0774719531;
extern char *STD_TEXTIO;

int ieee_p_0774719531_sub_378705076_2162500114(char *, char *, char *);
unsigned char ieee_p_0774719531_sub_3890342512_2162500114(char *, char *, char *, int );


static void work_a_2118051982_3212880686_p_0(char *t0)
{
    char t17[16];
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
    char *t12;
    unsigned char t13;
    char *t14;
    char *t15;
    char *t18;
    char *t19;
    int t20;
    unsigned int t21;

LAB0:    xsi_set_current_line(21, ng0);
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
LAB3:    t3 = (t0 + 3168);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(22, ng0);
    t5 = (t0 + 1512U);
    t12 = *((char **)t5);
    t5 = (t0 + 5348U);
    t13 = ieee_p_0774719531_sub_3890342512_2162500114(IEEE_P_0774719531, t12, t5, 0);
    if (t13 != 0)
        goto LAB11;

LAB13:
LAB12:    goto LAB3;

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

LAB11:    xsi_set_current_line(23, ng0);
    t14 = (t0 + 2016U);
    t15 = (t0 + 5516);
    t18 = (t17 + 0U);
    t19 = (t18 + 0U);
    *((int *)t19) = 1;
    t19 = (t18 + 4U);
    *((int *)t19) = 10;
    t19 = (t18 + 8U);
    *((int *)t19) = 1;
    t20 = (10 - 1);
    t21 = (t20 * 1);
    t21 = (t21 + 1);
    t19 = (t18 + 12U);
    *((unsigned int *)t19) = t21;
    std_textio_file_open1(t14, t15, t17, (unsigned char)2);
    xsi_set_current_line(24, ng0);
    t3 = (t0 + 2656);
    t5 = (t0 + 2192U);
    t6 = (t0 + 1352U);
    t9 = *((char **)t6);
    t6 = (t0 + 5332U);
    t20 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t9, t6);
    std_textio_write5(STD_TEXTIO, t3, t5, t20, (unsigned char)0, 0);
    xsi_set_current_line(25, ng0);
    t3 = (t0 + 2656);
    t5 = (t0 + 2016U);
    t6 = (t0 + 2192U);
    std_textio_writeline(STD_TEXTIO, t3, t5, t6);
    xsi_set_current_line(26, ng0);
    t3 = (t0 + 2656);
    t5 = (t0 + 2192U);
    t6 = (t0 + 1512U);
    t9 = *((char **)t6);
    t6 = (t0 + 5348U);
    t20 = ieee_p_0774719531_sub_378705076_2162500114(IEEE_P_0774719531, t9, t6);
    std_textio_write5(STD_TEXTIO, t3, t5, t20, (unsigned char)0, 0);
    xsi_set_current_line(27, ng0);
    t3 = (t0 + 2656);
    t5 = (t0 + 2016U);
    t6 = (t0 + 2192U);
    std_textio_writeline(STD_TEXTIO, t3, t5, t6);
    xsi_set_current_line(28, ng0);
    t3 = (t0 + 2016U);
    std_textio_file_close(t3);
    goto LAB12;

}


extern void work_a_2118051982_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2118051982_3212880686_p_0};
	xsi_register_didat("work_a_2118051982_3212880686", "isim/test_main_isim_beh.exe.sim/work/a_2118051982_3212880686.didat");
	xsi_register_executes(pe);
}
