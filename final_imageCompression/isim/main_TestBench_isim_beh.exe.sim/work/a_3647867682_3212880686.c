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
static const char *ng0 = "C:/Users/taravat/Desktop/fpga-project/fpgaProject/final_imageCompression/RLC.vhd";
extern char *IEEE_P_3620187407;
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_3647867682_3212880686_p_0(char *t0)
{
    char t20[16];
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    unsigned char t11;
    unsigned char t12;
    unsigned char t13;
    unsigned char t14;
    int t15;
    int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    int t21;
    unsigned int t22;
    int t23;
    int t24;
    int t25;
    char *t26;

LAB0:    xsi_set_current_line(25, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t4 = xsi_signal_has_event(t1);
    if (t4 == 1)
        goto LAB7;

LAB8:    t3 = (unsigned char)0;

LAB9:    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3712);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(26, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t5 = t1;
    memset(t5, (unsigned char)2, 32U);
    t6 = (t0 + 3792);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(27, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 3856);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    xsi_set_current_line(28, ng0);
    t1 = xsi_get_transient_memory(6U);
    memset(t1, 0, 6U);
    t2 = t1;
    memset(t2, (unsigned char)2, 6U);
    t5 = (t0 + 2288U);
    t6 = *((char **)t5);
    t5 = (t6 + 0);
    memcpy(t5, t1, 6U);
    goto LAB3;

LAB5:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 1832U);
    t6 = *((char **)t2);
    t13 = *((unsigned char *)t6);
    t14 = (t13 == (unsigned char)3);
    if (t14 != 0)
        goto LAB10;

LAB12:
LAB11:    goto LAB3;

LAB7:    t2 = (t0 + 1512U);
    t5 = *((char **)t2);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    t3 = t12;
    goto LAB9;

LAB10:    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3920);
    t7 = (t2 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    *((unsigned char *)t10) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(32, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2288U);
    t5 = *((char **)t1);
    t1 = (t0 + 6404U);
    t15 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t16 = (t15 - 0);
    t17 = (t16 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t15);
    t18 = (32U * t17);
    t19 = (0 + t18);
    t6 = (t2 + t19);
    t7 = (t20 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 31;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t21 = (0 - 31);
    t22 = (t21 * -1);
    t22 = (t22 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t22;
    t23 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t6, t20);
    t3 = (t23 == 0);
    if (t3 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(36, ng0);
    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t15 = *((int *)t2);
    t1 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t20, t15, 32);
    t5 = (t20 + 12U);
    t17 = *((unsigned int *)t5);
    t17 = (t17 * 1U);
    t3 = (32U != t17);
    if (t3 == 1)
        goto LAB16;

LAB17:    t6 = (t0 + 3792);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t10 = *((char **)t9);
    memcpy(t10, t1, 32U);
    xsi_driver_first_trans_fast_port(t6);
    xsi_set_current_line(37, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t1 = (t0 + 2288U);
    t5 = *((char **)t1);
    t1 = (t0 + 6404U);
    t15 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t1);
    t16 = (t15 - 0);
    t17 = (t16 * 1);
    xsi_vhdl_check_range_of_index(0, 63, 1, t15);
    t18 = (32U * t17);
    t19 = (0 + t18);
    t6 = (t2 + t19);
    t7 = (t0 + 3856);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t26 = *((char **)t10);
    memcpy(t26, t6, 32U);
    xsi_driver_first_trans_fast_port(t7);
    xsi_set_current_line(38, ng0);
    t1 = (t0 + 2408U);
    t2 = *((char **)t1);
    t1 = (t2 + 0);
    *((int *)t1) = 0;

LAB14:    xsi_set_current_line(40, ng0);
    t1 = (t0 + 2288U);
    t2 = *((char **)t1);
    t1 = (t0 + 6404U);
    t5 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t20, t2, t1, (unsigned char)3);
    t6 = (t0 + 2288U);
    t7 = *((char **)t6);
    t6 = (t7 + 0);
    t8 = (t20 + 12U);
    t17 = *((unsigned int *)t8);
    t18 = (1U * t17);
    memcpy(t6, t5, t18);
    goto LAB11;

LAB13:    xsi_set_current_line(33, ng0);
    t8 = (t0 + 2408U);
    t9 = *((char **)t8);
    t24 = *((int *)t9);
    t25 = (t24 + 1);
    t8 = (t0 + 2408U);
    t10 = *((char **)t8);
    t8 = (t10 + 0);
    *((int *)t8) = t25;
    xsi_set_current_line(34, ng0);
    t1 = xsi_get_transient_memory(32U);
    memset(t1, 0, 32U);
    t2 = t1;
    memset(t2, (unsigned char)2, 32U);
    t5 = (t0 + 3856);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 32U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB14;

LAB16:    xsi_size_not_matching(32U, t17, 0);
    goto LAB17;

}


extern void work_a_3647867682_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3647867682_3212880686_p_0};
	xsi_register_didat("work_a_3647867682_3212880686", "isim/main_TestBench_isim_beh.exe.sim/work/a_3647867682_3212880686.didat");
	xsi_register_executes(pe);
}
