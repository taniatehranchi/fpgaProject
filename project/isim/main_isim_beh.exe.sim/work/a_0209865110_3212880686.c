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
static const char *ng0 = "G:/FPGAProject/project/FileReader.vhd";
extern char *STD_TEXTIO;
extern char *IEEE_P_3499444699;
extern char *IEEE_P_2592010699;

char *ieee_p_3499444699_sub_2213602152_3536714472(char *, char *, int , int );


static void work_a_0209865110_3212880686_p_0(char *t0)
{
    char t17[16];
    char t22[16];
    unsigned char t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    unsigned char t6;
    unsigned char t7;
    char *t8;
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
    char *t21;

LAB0:    xsi_set_current_line(54, ng0);
    t2 = (t0 + 1032U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (t4 == (unsigned char)3);
    if (t5 == 1)
        goto LAB5;

LAB6:    t1 = (unsigned char)0;

LAB7:    if (t1 != 0)
        goto LAB2;

LAB4:
LAB3:    t2 = (t0 + 6456);
    *((int *)t2) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(55, ng0);
    t8 = (t0 + 4656U);
    t9 = std_textio_endfile(t8);
    t10 = (!(t9));
    if (t10 == 1)
        goto LAB11;

LAB12:    t7 = (unsigned char)0;

LAB13:    if (t7 != 0)
        goto LAB8;

LAB10:    xsi_set_current_line(84, ng0);
    t18 = (9 - 1);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, t18);
    t8 = ((IEEE_P_2592010699) + 4024);
    t3 = xsi_base_array_concat(t3, t22, t8, (char)99, (unsigned char)2, (char)97, t2, t17, (char)101);
    t19 = (1U + 8U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB30;

LAB31:    t11 = (t0 + 6536);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t3, 9U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(85, ng0);
    t18 = (9 - 1);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, t18);
    t8 = ((IEEE_P_2592010699) + 4024);
    t3 = xsi_base_array_concat(t3, t22, t8, (char)99, (unsigned char)2, (char)97, t2, t17, (char)101);
    t19 = (1U + 8U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB32;

LAB33:    t11 = (t0 + 6600);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t3, 9U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(86, ng0);
    t18 = (9 - 1);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, t18);
    t8 = ((IEEE_P_2592010699) + 4024);
    t3 = xsi_base_array_concat(t3, t22, t8, (char)99, (unsigned char)2, (char)97, t2, t17, (char)101);
    t19 = (1U + 8U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB34;

LAB35:    t11 = (t0 + 6664);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t3, 9U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(87, ng0);
    t18 = (9 - 1);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, t18);
    t8 = ((IEEE_P_2592010699) + 4024);
    t3 = xsi_base_array_concat(t3, t22, t8, (char)99, (unsigned char)2, (char)97, t2, t17, (char)101);
    t19 = (1U + 8U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB36;

LAB37:    t11 = (t0 + 6728);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t3, 9U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(88, ng0);
    t18 = (9 - 1);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, t18);
    t8 = ((IEEE_P_2592010699) + 4024);
    t3 = xsi_base_array_concat(t3, t22, t8, (char)99, (unsigned char)2, (char)97, t2, t17, (char)101);
    t19 = (1U + 8U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB38;

LAB39:    t11 = (t0 + 6792);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t3, 9U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(89, ng0);
    t18 = (9 - 1);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, t18);
    t8 = ((IEEE_P_2592010699) + 4024);
    t3 = xsi_base_array_concat(t3, t22, t8, (char)99, (unsigned char)2, (char)97, t2, t17, (char)101);
    t19 = (1U + 8U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB40;

LAB41:    t11 = (t0 + 6856);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t3, 9U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(90, ng0);
    t18 = (9 - 1);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, t18);
    t8 = ((IEEE_P_2592010699) + 4024);
    t3 = xsi_base_array_concat(t3, t22, t8, (char)99, (unsigned char)2, (char)97, t2, t17, (char)101);
    t19 = (1U + 8U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB42;

LAB43:    t11 = (t0 + 6920);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t3, 9U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(91, ng0);
    t18 = (9 - 1);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, 0, t18);
    t8 = ((IEEE_P_2592010699) + 4024);
    t3 = xsi_base_array_concat(t3, t22, t8, (char)99, (unsigned char)2, (char)97, t2, t17, (char)101);
    t19 = (1U + 8U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB44;

LAB45:    t11 = (t0 + 6984);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t3, 9U);
    xsi_driver_first_trans_fast_port(t11);
    xsi_set_current_line(92, ng0);
    t2 = (t0 + 7112);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB9:    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2952U);
    t3 = *((char **)t2);
    t1 = *((unsigned char *)t3);
    t2 = (t0 + 7176);
    t8 = (t2 + 56U);
    t11 = *((char **)t8);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    *((unsigned char *)t15) = t1;
    xsi_driver_first_trans_fast_port(t2);
    goto LAB3;

LAB5:    t2 = (t0 + 992U);
    t6 = xsi_signal_has_event(t2);
    t1 = t6;
    goto LAB7;

LAB8:    xsi_set_current_line(56, ng0);
    t11 = (t0 + 5944);
    t15 = (t0 + 4656U);
    t16 = (t0 + 4832U);
    std_textio_readline(STD_TEXTIO, t11, t15, t16);
    xsi_set_current_line(57, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 4832U);
    t8 = (t0 + 3488U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(58, ng0);
    t2 = (t0 + 3488U);
    t3 = *((char **)t2);
    t18 = *((int *)t3);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 9);
    t8 = (t17 + 12U);
    t19 = *((unsigned int *)t8);
    t19 = (t19 * 1U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB14;

LAB15:    t11 = (t0 + 6536);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 9U);
    xsi_driver_first_trans_delta(t11, 0U, 9U, 0LL);
    t21 = (t0 + 6536);
    xsi_driver_intertial_reject(t21, 0LL, 0LL);
    xsi_set_current_line(59, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 4656U);
    t8 = (t0 + 4904U);
    std_textio_readline(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(60, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 4904U);
    t8 = (t0 + 3608U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(61, ng0);
    t2 = (t0 + 3608U);
    t3 = *((char **)t2);
    t18 = *((int *)t3);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 9);
    t8 = (t17 + 12U);
    t19 = *((unsigned int *)t8);
    t19 = (t19 * 1U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB16;

LAB17:    t11 = (t0 + 6600);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 9U);
    xsi_driver_first_trans_delta(t11, 0U, 9U, 0LL);
    t21 = (t0 + 6600);
    xsi_driver_intertial_reject(t21, 0LL, 0LL);
    xsi_set_current_line(62, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 4656U);
    t8 = (t0 + 4976U);
    std_textio_readline(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(63, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 4976U);
    t8 = (t0 + 3728U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3728U);
    t3 = *((char **)t2);
    t18 = *((int *)t3);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 9);
    t8 = (t17 + 12U);
    t19 = *((unsigned int *)t8);
    t19 = (t19 * 1U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB18;

LAB19:    t11 = (t0 + 6664);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 9U);
    xsi_driver_first_trans_delta(t11, 0U, 9U, 0LL);
    t21 = (t0 + 6664);
    xsi_driver_intertial_reject(t21, 0LL, 0LL);
    xsi_set_current_line(65, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 4656U);
    t8 = (t0 + 5048U);
    std_textio_readline(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(66, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 5048U);
    t8 = (t0 + 3848U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3848U);
    t3 = *((char **)t2);
    t18 = *((int *)t3);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 9);
    t8 = (t17 + 12U);
    t19 = *((unsigned int *)t8);
    t19 = (t19 * 1U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB20;

LAB21:    t11 = (t0 + 6728);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 9U);
    xsi_driver_first_trans_delta(t11, 0U, 9U, 0LL);
    t21 = (t0 + 6728);
    xsi_driver_intertial_reject(t21, 0LL, 0LL);
    xsi_set_current_line(68, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 4656U);
    t8 = (t0 + 5120U);
    std_textio_readline(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(69, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 5120U);
    t8 = (t0 + 3968U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(70, ng0);
    t2 = (t0 + 3968U);
    t3 = *((char **)t2);
    t18 = *((int *)t3);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 9);
    t8 = (t17 + 12U);
    t19 = *((unsigned int *)t8);
    t19 = (t19 * 1U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB22;

LAB23:    t11 = (t0 + 6792);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 9U);
    xsi_driver_first_trans_delta(t11, 0U, 9U, 0LL);
    t21 = (t0 + 6792);
    xsi_driver_intertial_reject(t21, 0LL, 0LL);
    xsi_set_current_line(71, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 4656U);
    t8 = (t0 + 5192U);
    std_textio_readline(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(72, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 5192U);
    t8 = (t0 + 4088U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(73, ng0);
    t2 = (t0 + 4088U);
    t3 = *((char **)t2);
    t18 = *((int *)t3);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 9);
    t8 = (t17 + 12U);
    t19 = *((unsigned int *)t8);
    t19 = (t19 * 1U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB24;

LAB25:    t11 = (t0 + 6856);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 9U);
    xsi_driver_first_trans_delta(t11, 0U, 9U, 0LL);
    t21 = (t0 + 6856);
    xsi_driver_intertial_reject(t21, 0LL, 0LL);
    xsi_set_current_line(74, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 4656U);
    t8 = (t0 + 5264U);
    std_textio_readline(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 5264U);
    t8 = (t0 + 4208U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4208U);
    t3 = *((char **)t2);
    t18 = *((int *)t3);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 9);
    t8 = (t17 + 12U);
    t19 = *((unsigned int *)t8);
    t19 = (t19 * 1U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB26;

LAB27:    t11 = (t0 + 6920);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 9U);
    xsi_driver_first_trans_delta(t11, 0U, 9U, 0LL);
    t21 = (t0 + 6920);
    xsi_driver_intertial_reject(t21, 0LL, 0LL);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 4656U);
    t8 = (t0 + 5336U);
    std_textio_readline(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(78, ng0);
    t2 = (t0 + 5944);
    t3 = (t0 + 5336U);
    t8 = (t0 + 4328U);
    t11 = *((char **)t8);
    t8 = (t11 + 0);
    std_textio_read10(STD_TEXTIO, t2, t3, t8);
    xsi_set_current_line(79, ng0);
    t2 = (t0 + 4328U);
    t3 = *((char **)t2);
    t18 = *((int *)t3);
    t2 = ieee_p_3499444699_sub_2213602152_3536714472(IEEE_P_3499444699, t17, t18, 9);
    t8 = (t17 + 12U);
    t19 = *((unsigned int *)t8);
    t19 = (t19 * 1U);
    t1 = (9U != t19);
    if (t1 == 1)
        goto LAB28;

LAB29:    t11 = (t0 + 6984);
    t12 = (t11 + 56U);
    t15 = *((char **)t12);
    t16 = (t15 + 56U);
    t20 = *((char **)t16);
    memcpy(t20, t2, 9U);
    xsi_driver_first_trans_delta(t11, 0U, 9U, 0LL);
    t21 = (t0 + 6984);
    xsi_driver_intertial_reject(t21, 0LL, 0LL);
    xsi_set_current_line(80, ng0);
    t2 = (t0 + 7048);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t2);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 7112);
    t3 = (t2 + 56U);
    t8 = *((char **)t3);
    t11 = (t8 + 56U);
    t12 = *((char **)t11);
    *((unsigned char *)t12) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    goto LAB9;

LAB11:    t11 = (t0 + 1192U);
    t12 = *((char **)t11);
    t13 = *((unsigned char *)t12);
    t14 = (t13 == (unsigned char)2);
    t7 = t14;
    goto LAB13;

LAB14:    xsi_size_not_matching(9U, t19, 0);
    goto LAB15;

LAB16:    xsi_size_not_matching(9U, t19, 0);
    goto LAB17;

LAB18:    xsi_size_not_matching(9U, t19, 0);
    goto LAB19;

LAB20:    xsi_size_not_matching(9U, t19, 0);
    goto LAB21;

LAB22:    xsi_size_not_matching(9U, t19, 0);
    goto LAB23;

LAB24:    xsi_size_not_matching(9U, t19, 0);
    goto LAB25;

LAB26:    xsi_size_not_matching(9U, t19, 0);
    goto LAB27;

LAB28:    xsi_size_not_matching(9U, t19, 0);
    goto LAB29;

LAB30:    xsi_size_not_matching(9U, t19, 0);
    goto LAB31;

LAB32:    xsi_size_not_matching(9U, t19, 0);
    goto LAB33;

LAB34:    xsi_size_not_matching(9U, t19, 0);
    goto LAB35;

LAB36:    xsi_size_not_matching(9U, t19, 0);
    goto LAB37;

LAB38:    xsi_size_not_matching(9U, t19, 0);
    goto LAB39;

LAB40:    xsi_size_not_matching(9U, t19, 0);
    goto LAB41;

LAB42:    xsi_size_not_matching(9U, t19, 0);
    goto LAB43;

LAB44:    xsi_size_not_matching(9U, t19, 0);
    goto LAB45;

}


extern void work_a_0209865110_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0209865110_3212880686_p_0};
	xsi_register_didat("work_a_0209865110_3212880686", "isim/main_isim_beh.exe.sim/work/a_0209865110_3212880686.didat");
	xsi_register_executes(pe);
}
