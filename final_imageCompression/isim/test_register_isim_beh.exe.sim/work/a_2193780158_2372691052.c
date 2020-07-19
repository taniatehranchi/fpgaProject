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
static const char *ng0 = "C:/Users/taravat/Desktop/fpga-project/fpgaProject/final_imageCompression/test_register.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_3620187407;

unsigned char ieee_p_2592010699_sub_1690584930_503743352(char *, unsigned char );
char *ieee_p_3620187407_sub_767668596_3965413181(char *, char *, char *, char *, char *, char *);


static void work_a_2193780158_2372691052_p_0(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;

LAB0:    xsi_set_current_line(90, ng0);

LAB3:    t1 = (50 * 1000LL);
    t2 = (t0 + 2312U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = ieee_p_2592010699_sub_1690584930_503743352(IEEE_P_2592010699, t4);
    t2 = (t0 + 6104);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t5;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t10 = (t0 + 6104);
    xsi_driver_intertial_reject(t10, t1, t1);

LAB2:    t11 = (t0 + 6008);
    *((int *)t11) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2193780158_2372691052_p_1(char *t0)
{
    int64 t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(91, ng0);

LAB3:    t1 = (10 * 1000LL);
    t2 = (t0 + 6168);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_delta(t2, 0U, 1, t1);
    t7 = (t0 + 6168);
    xsi_driver_intertial_reject(t7, t1, t1);

LAB2:
LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_2193780158_2372691052_p_2(char *t0)
{
    char t8[16];
    char t12[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    char *t9;
    char *t10;
    char *t11;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    char *t17;
    unsigned int t18;
    unsigned char t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2272U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6024);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(95, ng0);
    t4 = (t0 + 1032U);
    t9 = *((char **)t4);
    t4 = (t0 + 10740U);
    t10 = (t0 + 11532);
    t13 = (t12 + 0U);
    t14 = (t13 + 0U);
    *((int *)t14) = 0;
    t14 = (t13 + 4U);
    *((int *)t14) = 7;
    t14 = (t13 + 8U);
    *((int *)t14) = 1;
    t15 = (7 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t14 = (t13 + 12U);
    *((unsigned int *)t14) = t16;
    t14 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t8, t9, t4, t10, t12);
    t17 = (t8 + 12U);
    t16 = *((unsigned int *)t17);
    t18 = (1U * t16);
    t19 = (32U != t18);
    if (t19 == 1)
        goto LAB8;

LAB9:    t20 = (t0 + 6232);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t14, 32U);
    xsi_driver_first_trans_fast(t20);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 1192U);
    t4 = *((char **)t2);
    t2 = (t0 + 10756U);
    t5 = (t0 + 11540);
    t10 = (t12 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t15 = (7 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t16;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t8, t4, t2, t5, t12);
    t13 = (t8 + 12U);
    t16 = *((unsigned int *)t13);
    t18 = (1U * t16);
    t1 = (32U != t18);
    if (t1 == 1)
        goto LAB10;

LAB11:    t14 = (t0 + 6296);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 32U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 1352U);
    t4 = *((char **)t2);
    t2 = (t0 + 10772U);
    t5 = (t0 + 11548);
    t10 = (t12 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t15 = (7 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t16;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t8, t4, t2, t5, t12);
    t13 = (t8 + 12U);
    t16 = *((unsigned int *)t13);
    t18 = (1U * t16);
    t1 = (32U != t18);
    if (t1 == 1)
        goto LAB12;

LAB13:    t14 = (t0 + 6360);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 32U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 1512U);
    t4 = *((char **)t2);
    t2 = (t0 + 10788U);
    t5 = (t0 + 11556);
    t10 = (t12 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t15 = (7 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t16;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t8, t4, t2, t5, t12);
    t13 = (t8 + 12U);
    t16 = *((unsigned int *)t13);
    t18 = (1U * t16);
    t1 = (32U != t18);
    if (t1 == 1)
        goto LAB14;

LAB15:    t14 = (t0 + 6424);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 32U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 1672U);
    t4 = *((char **)t2);
    t2 = (t0 + 10804U);
    t5 = (t0 + 11564);
    t10 = (t12 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t15 = (7 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t16;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t8, t4, t2, t5, t12);
    t13 = (t8 + 12U);
    t16 = *((unsigned int *)t13);
    t18 = (1U * t16);
    t1 = (32U != t18);
    if (t1 == 1)
        goto LAB16;

LAB17:    t14 = (t0 + 6488);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 32U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 1832U);
    t4 = *((char **)t2);
    t2 = (t0 + 10820U);
    t5 = (t0 + 11572);
    t10 = (t12 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t15 = (7 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t16;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t8, t4, t2, t5, t12);
    t13 = (t8 + 12U);
    t16 = *((unsigned int *)t13);
    t18 = (1U * t16);
    t1 = (32U != t18);
    if (t1 == 1)
        goto LAB18;

LAB19:    t14 = (t0 + 6552);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 32U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(101, ng0);
    t2 = (t0 + 1992U);
    t4 = *((char **)t2);
    t2 = (t0 + 10836U);
    t5 = (t0 + 11580);
    t10 = (t12 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t15 = (7 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t16;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t8, t4, t2, t5, t12);
    t13 = (t8 + 12U);
    t16 = *((unsigned int *)t13);
    t18 = (1U * t16);
    t1 = (32U != t18);
    if (t1 == 1)
        goto LAB20;

LAB21:    t14 = (t0 + 6616);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 32U);
    xsi_driver_first_trans_fast(t14);
    xsi_set_current_line(102, ng0);
    t2 = (t0 + 2152U);
    t4 = *((char **)t2);
    t2 = (t0 + 10852U);
    t5 = (t0 + 11588);
    t10 = (t12 + 0U);
    t11 = (t10 + 0U);
    *((int *)t11) = 0;
    t11 = (t10 + 4U);
    *((int *)t11) = 7;
    t11 = (t10 + 8U);
    *((int *)t11) = 1;
    t15 = (7 - 0);
    t16 = (t15 * 1);
    t16 = (t16 + 1);
    t11 = (t10 + 12U);
    *((unsigned int *)t11) = t16;
    t11 = ieee_p_3620187407_sub_767668596_3965413181(IEEE_P_3620187407, t8, t4, t2, t5, t12);
    t13 = (t8 + 12U);
    t16 = *((unsigned int *)t13);
    t18 = (1U * t16);
    t1 = (32U != t18);
    if (t1 == 1)
        goto LAB22;

LAB23:    t14 = (t0 + 6680);
    t17 = (t14 + 56U);
    t20 = *((char **)t17);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t11, 32U);
    xsi_driver_first_trans_fast(t14);
    goto LAB3;

LAB5:    t4 = (t0 + 2312U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_size_not_matching(32U, t18, 0);
    goto LAB9;

LAB10:    xsi_size_not_matching(32U, t18, 0);
    goto LAB11;

LAB12:    xsi_size_not_matching(32U, t18, 0);
    goto LAB13;

LAB14:    xsi_size_not_matching(32U, t18, 0);
    goto LAB15;

LAB16:    xsi_size_not_matching(32U, t18, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(32U, t18, 0);
    goto LAB19;

LAB20:    xsi_size_not_matching(32U, t18, 0);
    goto LAB21;

LAB22:    xsi_size_not_matching(32U, t18, 0);
    goto LAB23;

}


extern void work_a_2193780158_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2193780158_2372691052_p_0,(void *)work_a_2193780158_2372691052_p_1,(void *)work_a_2193780158_2372691052_p_2};
	xsi_register_didat("work_a_2193780158_2372691052", "isim/test_register_isim_beh.exe.sim/work/a_2193780158_2372691052.didat");
	xsi_register_executes(pe);
}
