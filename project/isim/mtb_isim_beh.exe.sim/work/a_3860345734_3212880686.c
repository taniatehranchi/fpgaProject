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
static const char *ng0 = "G:/FPGAProject/project/Quantization.vhd";
extern char *IEEE_P_3499444699;
extern char *IEEE_P_3620187407;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );
int ieee_p_3620187407_sub_514432868_3965413181(char *, char *, char *);
char *ieee_p_3620187407_sub_674691591_3965413181(char *, char *, char *, char *, unsigned char );


static void work_a_3860345734_3212880686_p_0(char *t0)
{
    char t12[16];
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
    char *t13;
    int t14;
    char *t15;
    char *t16;
    int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    int t21;
    int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    char *t27;
    int t28;
    int t29;
    char *t30;
    char *t31;
    unsigned int t32;
    unsigned char t33;
    char *t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(60, ng0);
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
LAB3:    t3 = (t0 + 5552);
    *((int *)t3) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(61, ng0);
    t5 = (t0 + 1352U);
    t13 = *((char **)t5);
    t5 = (t0 + 8996U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t13, t5);
    t15 = (t0 + 3912U);
    t16 = *((char **)t15);
    t17 = (0 - 0);
    t18 = (t17 * 1);
    t19 = (4U * t18);
    t15 = (t0 + 4072U);
    t20 = *((char **)t15);
    t15 = (t0 + 9284U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t20, t15);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t21);
    t24 = (32U * t23);
    t25 = (0 + t24);
    t26 = (t25 + t19);
    t27 = (t16 + t26);
    t28 = *((int *)t27);
    t29 = (t14 / t28);
    t30 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t12, t29, 32);
    t31 = (t12 + 12U);
    t32 = *((unsigned int *)t31);
    t32 = (t32 * 1U);
    t33 = (32U != t32);
    if (t33 == 1)
        goto LAB11;

LAB12:    t34 = (t0 + 5632);
    t35 = (t34 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    memcpy(t38, t30, 32U);
    xsi_driver_first_trans_fast_port(t34);
    xsi_set_current_line(62, ng0);
    t3 = (t0 + 1512U);
    t5 = *((char **)t3);
    t3 = (t0 + 9012U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t3);
    t6 = (t0 + 3912U);
    t9 = *((char **)t6);
    t17 = (1 - 0);
    t18 = (t17 * 1);
    t19 = (4U * t18);
    t6 = (t0 + 4072U);
    t13 = *((char **)t6);
    t6 = (t0 + 9284U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t13, t6);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t21);
    t24 = (32U * t23);
    t25 = (0 + t24);
    t26 = (t25 + t19);
    t15 = (t9 + t26);
    t28 = *((int *)t15);
    t29 = (t14 / t28);
    t16 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t12, t29, 32);
    t20 = (t12 + 12U);
    t32 = *((unsigned int *)t20);
    t32 = (t32 * 1U);
    t1 = (32U != t32);
    if (t1 == 1)
        goto LAB13;

LAB14:    t27 = (t0 + 5696);
    t30 = (t27 + 56U);
    t31 = *((char **)t30);
    t34 = (t31 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t16, 32U);
    xsi_driver_first_trans_fast_port(t27);
    xsi_set_current_line(63, ng0);
    t3 = (t0 + 1672U);
    t5 = *((char **)t3);
    t3 = (t0 + 9028U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t3);
    t6 = (t0 + 3912U);
    t9 = *((char **)t6);
    t17 = (2 - 0);
    t18 = (t17 * 1);
    t19 = (4U * t18);
    t6 = (t0 + 4072U);
    t13 = *((char **)t6);
    t6 = (t0 + 9284U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t13, t6);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t21);
    t24 = (32U * t23);
    t25 = (0 + t24);
    t26 = (t25 + t19);
    t15 = (t9 + t26);
    t28 = *((int *)t15);
    t29 = (t14 / t28);
    t16 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t12, t29, 32);
    t20 = (t12 + 12U);
    t32 = *((unsigned int *)t20);
    t32 = (t32 * 1U);
    t1 = (32U != t32);
    if (t1 == 1)
        goto LAB15;

LAB16:    t27 = (t0 + 5760);
    t30 = (t27 + 56U);
    t31 = *((char **)t30);
    t34 = (t31 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t16, 32U);
    xsi_driver_first_trans_fast_port(t27);
    xsi_set_current_line(64, ng0);
    t3 = (t0 + 1832U);
    t5 = *((char **)t3);
    t3 = (t0 + 9044U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t3);
    t6 = (t0 + 3912U);
    t9 = *((char **)t6);
    t17 = (3 - 0);
    t18 = (t17 * 1);
    t19 = (4U * t18);
    t6 = (t0 + 4072U);
    t13 = *((char **)t6);
    t6 = (t0 + 9284U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t13, t6);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t21);
    t24 = (32U * t23);
    t25 = (0 + t24);
    t26 = (t25 + t19);
    t15 = (t9 + t26);
    t28 = *((int *)t15);
    t29 = (t14 / t28);
    t16 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t12, t29, 32);
    t20 = (t12 + 12U);
    t32 = *((unsigned int *)t20);
    t32 = (t32 * 1U);
    t1 = (32U != t32);
    if (t1 == 1)
        goto LAB17;

LAB18:    t27 = (t0 + 5824);
    t30 = (t27 + 56U);
    t31 = *((char **)t30);
    t34 = (t31 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t16, 32U);
    xsi_driver_first_trans_fast_port(t27);
    xsi_set_current_line(65, ng0);
    t3 = (t0 + 1992U);
    t5 = *((char **)t3);
    t3 = (t0 + 9060U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t3);
    t6 = (t0 + 3912U);
    t9 = *((char **)t6);
    t17 = (4 - 0);
    t18 = (t17 * 1);
    t19 = (4U * t18);
    t6 = (t0 + 4072U);
    t13 = *((char **)t6);
    t6 = (t0 + 9284U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t13, t6);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t21);
    t24 = (32U * t23);
    t25 = (0 + t24);
    t26 = (t25 + t19);
    t15 = (t9 + t26);
    t28 = *((int *)t15);
    t29 = (t14 / t28);
    t16 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t12, t29, 32);
    t20 = (t12 + 12U);
    t32 = *((unsigned int *)t20);
    t32 = (t32 * 1U);
    t1 = (32U != t32);
    if (t1 == 1)
        goto LAB19;

LAB20:    t27 = (t0 + 5888);
    t30 = (t27 + 56U);
    t31 = *((char **)t30);
    t34 = (t31 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t16, 32U);
    xsi_driver_first_trans_fast_port(t27);
    xsi_set_current_line(66, ng0);
    t3 = (t0 + 2152U);
    t5 = *((char **)t3);
    t3 = (t0 + 9076U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t3);
    t6 = (t0 + 3912U);
    t9 = *((char **)t6);
    t17 = (5 - 0);
    t18 = (t17 * 1);
    t19 = (4U * t18);
    t6 = (t0 + 4072U);
    t13 = *((char **)t6);
    t6 = (t0 + 9284U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t13, t6);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t21);
    t24 = (32U * t23);
    t25 = (0 + t24);
    t26 = (t25 + t19);
    t15 = (t9 + t26);
    t28 = *((int *)t15);
    t29 = (t14 / t28);
    t16 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t12, t29, 32);
    t20 = (t12 + 12U);
    t32 = *((unsigned int *)t20);
    t32 = (t32 * 1U);
    t1 = (32U != t32);
    if (t1 == 1)
        goto LAB21;

LAB22:    t27 = (t0 + 5952);
    t30 = (t27 + 56U);
    t31 = *((char **)t30);
    t34 = (t31 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t16, 32U);
    xsi_driver_first_trans_fast_port(t27);
    xsi_set_current_line(67, ng0);
    t3 = (t0 + 2312U);
    t5 = *((char **)t3);
    t3 = (t0 + 9092U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t3);
    t6 = (t0 + 3912U);
    t9 = *((char **)t6);
    t17 = (6 - 0);
    t18 = (t17 * 1);
    t19 = (4U * t18);
    t6 = (t0 + 4072U);
    t13 = *((char **)t6);
    t6 = (t0 + 9284U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t13, t6);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t21);
    t24 = (32U * t23);
    t25 = (0 + t24);
    t26 = (t25 + t19);
    t15 = (t9 + t26);
    t28 = *((int *)t15);
    t29 = (t14 / t28);
    t16 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t12, t29, 32);
    t20 = (t12 + 12U);
    t32 = *((unsigned int *)t20);
    t32 = (t32 * 1U);
    t1 = (32U != t32);
    if (t1 == 1)
        goto LAB23;

LAB24:    t27 = (t0 + 6016);
    t30 = (t27 + 56U);
    t31 = *((char **)t30);
    t34 = (t31 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t16, 32U);
    xsi_driver_first_trans_fast_port(t27);
    xsi_set_current_line(68, ng0);
    t3 = (t0 + 2472U);
    t5 = *((char **)t3);
    t3 = (t0 + 9108U);
    t14 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t5, t3);
    t6 = (t0 + 3912U);
    t9 = *((char **)t6);
    t17 = (7 - 0);
    t18 = (t17 * 1);
    t19 = (4U * t18);
    t6 = (t0 + 4072U);
    t13 = *((char **)t6);
    t6 = (t0 + 9284U);
    t21 = ieee_p_3620187407_sub_514432868_3965413181(IEEE_P_3620187407, t13, t6);
    t22 = (t21 - 0);
    t23 = (t22 * 1);
    xsi_vhdl_check_range_of_index(0, 7, 1, t21);
    t24 = (32U * t23);
    t25 = (0 + t24);
    t26 = (t25 + t19);
    t15 = (t9 + t26);
    t28 = *((int *)t15);
    t29 = (t14 / t28);
    t16 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t12, t29, 32);
    t20 = (t12 + 12U);
    t32 = *((unsigned int *)t20);
    t32 = (t32 * 1U);
    t1 = (32U != t32);
    if (t1 == 1)
        goto LAB25;

LAB26:    t27 = (t0 + 6080);
    t30 = (t27 + 56U);
    t31 = *((char **)t30);
    t34 = (t31 + 56U);
    t35 = *((char **)t34);
    memcpy(t35, t16, 32U);
    xsi_driver_first_trans_fast_port(t27);
    xsi_set_current_line(69, ng0);
    t3 = (t0 + 4072U);
    t5 = *((char **)t3);
    t3 = (t0 + 9284U);
    t6 = ieee_p_3620187407_sub_674691591_3965413181(IEEE_P_3620187407, t12, t5, t3, (unsigned char)3);
    t9 = (t12 + 12U);
    t18 = *((unsigned int *)t9);
    t19 = (1U * t18);
    t1 = (3U != t19);
    if (t1 == 1)
        goto LAB27;

LAB28:    t13 = (t0 + 6144);
    t15 = (t13 + 56U);
    t16 = *((char **)t15);
    t20 = (t16 + 56U);
    t27 = *((char **)t20);
    memcpy(t27, t6, 3U);
    xsi_driver_first_trans_fast(t13);
    goto LAB3;

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

LAB11:    xsi_size_not_matching(32U, t32, 0);
    goto LAB12;

LAB13:    xsi_size_not_matching(32U, t32, 0);
    goto LAB14;

LAB15:    xsi_size_not_matching(32U, t32, 0);
    goto LAB16;

LAB17:    xsi_size_not_matching(32U, t32, 0);
    goto LAB18;

LAB19:    xsi_size_not_matching(32U, t32, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(32U, t32, 0);
    goto LAB22;

LAB23:    xsi_size_not_matching(32U, t32, 0);
    goto LAB24;

LAB25:    xsi_size_not_matching(32U, t32, 0);
    goto LAB26;

LAB27:    xsi_size_not_matching(3U, t19, 0);
    goto LAB28;

}


extern void work_a_3860345734_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3860345734_3212880686_p_0};
	xsi_register_didat("work_a_3860345734_3212880686", "isim/mtb_isim_beh.exe.sim/work/a_3860345734_3212880686.didat");
	xsi_register_executes(pe);
}
