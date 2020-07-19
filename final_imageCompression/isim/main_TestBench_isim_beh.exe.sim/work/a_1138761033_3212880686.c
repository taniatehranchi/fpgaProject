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
static const char *ng0 = "C:/Users/taravat/Desktop/fpga-project/fpgaProject/final_imageCompression/FileReader.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3499444699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );


static void work_a_1138761033_3212880686_p_0(char *t0)
{
    char t17[16];
    unsigned char t1;
    char *t2;
    unsigned char t3;
    char *t4;
    char *t5;
    unsigned char t6;
    unsigned char t7;
    unsigned char t8;
    unsigned char t9;
    unsigned char t10;
    char *t11;
    char *t12;
    unsigned char t13;
    unsigned char t14;
    char *t15;
    char *t16;
    int t18;
    unsigned int t19;
    char *t20;

LAB0:    xsi_set_current_line(46, ng0);
    t2 = (t0 + 992U);
    t3 = xsi_signal_has_event(t2);
    if (t3 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 4512);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(47, ng0);
    t4 = (t0 + 3216U);
    t9 = std_textio_endfile(t4);
    t10 = (!(t9));
    if (t10 == 1)
        goto LAB11;

LAB12:    t8 = (unsigned char)0;

LAB13:    if (t8 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(74, ng0);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, 8);
    t1 = (8U != 8U);
    if (t1 == 1)
        goto LAB30;

LAB31:    t4 = (t0 + 4592);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t2, 8U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(75, ng0);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, 8);
    t1 = (8U != 8U);
    if (t1 == 1)
        goto LAB32;

LAB33:    t4 = (t0 + 4656);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t2, 8U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(76, ng0);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, 8);
    t1 = (8U != 8U);
    if (t1 == 1)
        goto LAB34;

LAB35:    t4 = (t0 + 4720);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t2, 8U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(77, ng0);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, 8);
    t1 = (8U != 8U);
    if (t1 == 1)
        goto LAB36;

LAB37:    t4 = (t0 + 4784);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t2, 8U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(78, ng0);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, 8);
    t1 = (8U != 8U);
    if (t1 == 1)
        goto LAB38;

LAB39:    t4 = (t0 + 4848);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t2, 8U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(79, ng0);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, 8);
    t1 = (8U != 8U);
    if (t1 == 1)
        goto LAB40;

LAB41:    t4 = (t0 + 4912);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t2, 8U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(80, ng0);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, 8);
    t1 = (8U != 8U);
    if (t1 == 1)
        goto LAB42;

LAB43:    t4 = (t0 + 4976);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t2, 8U);
    xsi_driver_first_trans_fast_port(t4);
    xsi_set_current_line(81, ng0);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, 8);
    t1 = (8U != 8U);
    if (t1 == 1)
        goto LAB44;

LAB45:    t4 = (t0 + 5040);
    t5 = (t4 + 56U);
    t11 = *((char **)t5);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    memcpy(t15, t2, 8U);
    xsi_driver_first_trans_fast_port(t4);

LAB9:    goto LAB3;

LAB5:    t4 = (t0 + 1032U);
    t5 = *((char **)t4);
    t6 = *((unsigned char *)t5);
    t7 = (t6 == (unsigned char)3);
    t1 = t7;
    goto LAB7;

LAB8:    xsi_set_current_line(48, ng0);
    t11 = (t0 + 4000);
    t15 = (t0 + 3216U);
    t16 = (t0 + 3392U);
    std_textio_readline(STD_TEXTIO, t11, t15, t16);
    xsi_set_current_line(49, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3392U);
    t5 = (t0 + 2888U);
    t11 = *((char **)t5);
    t5 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2888U);
    t4 = *((char **)t2);
    t18 = *((int *)t4);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 8);
    t5 = (t17 + 12U);
    t19 = *((unsigned int *)t5);
    t19 = (t19 * 1U);
    t1 = (8U != t19);
    if (t1 == 1)
        goto LAB14;

LAB15:    t11 = (t0 + 4592);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 8U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(51, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3216U);
    t5 = (t0 + 3392U);
    std_textio_readline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(52, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3392U);
    t5 = (t0 + 2888U);
    t11 = *((char **)t5);
    t5 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 2888U);
    t4 = *((char **)t2);
    t18 = *((int *)t4);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 8);
    t5 = (t17 + 12U);
    t19 = *((unsigned int *)t5);
    t19 = (t19 * 1U);
    t1 = (8U != t19);
    if (t1 == 1)
        goto LAB16;

LAB17:    t11 = (t0 + 4656);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 8U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(54, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3216U);
    t5 = (t0 + 3392U);
    std_textio_readline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(55, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3392U);
    t5 = (t0 + 2888U);
    t11 = *((char **)t5);
    t5 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(56, ng0);
    t2 = (t0 + 2888U);
    t4 = *((char **)t2);
    t18 = *((int *)t4);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 8);
    t5 = (t17 + 12U);
    t19 = *((unsigned int *)t5);
    t19 = (t19 * 1U);
    t1 = (8U != t19);
    if (t1 == 1)
        goto LAB18;

LAB19:    t11 = (t0 + 4720);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 8U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3216U);
    t5 = (t0 + 3392U);
    std_textio_readline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3392U);
    t5 = (t0 + 2888U);
    t11 = *((char **)t5);
    t5 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 2888U);
    t4 = *((char **)t2);
    t18 = *((int *)t4);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 8);
    t5 = (t17 + 12U);
    t19 = *((unsigned int *)t5);
    t19 = (t19 * 1U);
    t1 = (8U != t19);
    if (t1 == 1)
        goto LAB20;

LAB21:    t11 = (t0 + 4784);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 8U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3216U);
    t5 = (t0 + 3392U);
    std_textio_readline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3392U);
    t5 = (t0 + 2888U);
    t11 = *((char **)t5);
    t5 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 2888U);
    t4 = *((char **)t2);
    t18 = *((int *)t4);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 8);
    t5 = (t17 + 12U);
    t19 = *((unsigned int *)t5);
    t19 = (t19 * 1U);
    t1 = (8U != t19);
    if (t1 == 1)
        goto LAB22;

LAB23:    t11 = (t0 + 4848);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 8U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3216U);
    t5 = (t0 + 3392U);
    std_textio_readline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3392U);
    t5 = (t0 + 2888U);
    t11 = *((char **)t5);
    t5 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 2888U);
    t4 = *((char **)t2);
    t18 = *((int *)t4);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 8);
    t5 = (t17 + 12U);
    t19 = *((unsigned int *)t5);
    t19 = (t19 * 1U);
    t1 = (8U != t19);
    if (t1 == 1)
        goto LAB24;

LAB25:    t11 = (t0 + 4912);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 8U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3216U);
    t5 = (t0 + 3392U);
    std_textio_readline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3392U);
    t5 = (t0 + 2888U);
    t11 = *((char **)t5);
    t5 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 2888U);
    t4 = *((char **)t2);
    t18 = *((int *)t4);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 8);
    t5 = (t17 + 12U);
    t19 = *((unsigned int *)t5);
    t19 = (t19 * 1U);
    t1 = (8U != t19);
    if (t1 == 1)
        goto LAB26;

LAB27:    t11 = (t0 + 4976);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 8U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3216U);
    t5 = (t0 + 3392U);
    std_textio_readline(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 4000);
    t4 = (t0 + 3392U);
    t5 = (t0 + 2888U);
    t11 = *((char **)t5);
    t5 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t4, t5);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 2888U);
    t4 = *((char **)t2);
    t18 = *((int *)t4);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 8);
    t5 = (t17 + 12U);
    t19 = *((unsigned int *)t5);
    t19 = (t19 * 1U);
    t1 = (8U != t19);
    if (t1 == 1)
        goto LAB28;

LAB29:    t11 = (t0 + 5040);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 8U);
    xsi_driver_first_trans_fast_port(t11);
    goto LAB9;

LAB11:    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    t8 = t14;
    goto LAB13;

LAB14:    xsi_size_not_matching(8U, t19, 0);
    goto LAB15;

LAB16:    xsi_size_not_matching(8U, t19, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(8U, t19, 0);
    goto LAB19;

LAB20:    xsi_size_not_matching(8U, t19, 0);
    goto LAB21;

LAB22:    xsi_size_not_matching(8U, t19, 0);
    goto LAB23;

LAB24:    xsi_size_not_matching(8U, t19, 0);
    goto LAB25;

LAB26:    xsi_size_not_matching(8U, t19, 0);
    goto LAB27;

LAB28:    xsi_size_not_matching(8U, t19, 0);
    goto LAB29;

LAB30:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB31;

LAB32:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB33;

LAB34:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB35;

LAB36:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB37;

LAB38:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB39;

LAB40:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB41;

LAB42:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB43;

LAB44:    xsi_size_not_matching(8U, 8U, 0);
    goto LAB45;

}


extern void work_a_1138761033_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1138761033_3212880686_p_0};
	xsi_register_didat("work_a_1138761033_3212880686", "isim/main_TestBench_isim_beh.exe.sim/work/a_1138761033_3212880686.didat");
	xsi_register_executes(pe);
}
