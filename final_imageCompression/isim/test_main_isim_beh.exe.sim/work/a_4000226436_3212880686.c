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
static const char *ng0 = "C:/Users/taravat/Desktop/fpga-project/fpgaProject/final_imageCompression/Counter.vhd";
extern char *IEEE_P_3620187407;

char *ieee_p_3620187407_sub_436279890_3965413181(char *, char *, char *, char *, int );


static void work_a_4000226436_3212880686_p_0(char *t0)
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
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    unsigned int t17;
    unsigned int t18;

LAB0:    xsi_set_current_line(18, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 2952);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(19, ng0);
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

LAB8:    xsi_set_current_line(20, ng0);
    t4 = (t0 + 1648U);
    t11 = *((char **)t4);
    t4 = (t0 + 3032);
    t12 = (t4 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t11, 3U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(21, ng0);
    t2 = (t0 + 1648U);
    t4 = *((char **)t2);
    t2 = (t0 + 4988U);
    t5 = ieee_p_3620187407_sub_436279890_3965413181(IEEE_P_3620187407, t16, t4, t2, 1);
    t8 = (t0 + 1648U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    t12 = (t16 + 12U);
    t17 = *((unsigned int *)t12);
    t18 = (1U * t17);
    memcpy(t8, t5, t18);
    goto LAB9;

}


extern void work_a_4000226436_3212880686_init()
{
	static char *pe[] = {(void *)work_a_4000226436_3212880686_p_0};
	xsi_register_didat("work_a_4000226436_3212880686", "isim/test_main_isim_beh.exe.sim/work/a_4000226436_3212880686.didat");
	xsi_register_executes(pe);
}
