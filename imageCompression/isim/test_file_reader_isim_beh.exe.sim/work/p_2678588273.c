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



char *work_p_2678588273_sub_3105984972_708566852(char *t1, char *t2, char *t3)
{
    char t4[128];
    char t5[40];
    char t6[32];
    char t13[16];
    char t16[16];
    char t21[32];
    char *t0;
    char *t7;
    char *t8;
    int t9;
    unsigned int t10;
    char *t11;
    int t12;
    char *t14;
    int t15;
    char *t17;
    int t18;
    char *t19;
    char *t20;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    unsigned char t28;
    char *t29;
    char *t30;
    unsigned char t31;
    char *t32;
    int t33;
    int t34;
    int t35;
    int t36;
    char *t37;
    char *t38;
    int t39;
    unsigned int t40;
    unsigned int t41;
    int t42;
    int t43;
    unsigned int t44;
    unsigned int t45;
    int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    unsigned int t50;
    char *t51;
    int t52;
    int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    char *t57;
    int t58;
    int t59;
    int t60;
    char *t61;
    char *t62;
    int t63;
    unsigned int t64;
    unsigned int t65;
    unsigned int t66;

LAB0:    t7 = (t6 + 0U);
    t8 = (t7 + 0U);
    *((int *)t8) = 7;
    t8 = (t7 + 4U);
    *((int *)t8) = 0;
    t8 = (t7 + 8U);
    *((int *)t8) = -1;
    t9 = (0 - 7);
    t10 = (t9 * -1);
    t10 = (t10 + 1);
    t8 = (t7 + 12U);
    *((unsigned int *)t8) = t10;
    t8 = (t6 + 16U);
    t11 = (t8 + 0U);
    *((int *)t11) = 7;
    t11 = (t8 + 4U);
    *((int *)t11) = 0;
    t11 = (t8 + 8U);
    *((int *)t11) = -1;
    t12 = (0 - 7);
    t10 = (t12 * -1);
    t10 = (t10 + 1);
    t11 = (t8 + 12U);
    *((unsigned int *)t11) = t10;
    t11 = (t13 + 0U);
    t14 = (t11 + 0U);
    *((int *)t14) = 7;
    t14 = (t11 + 4U);
    *((int *)t14) = 0;
    t14 = (t11 + 8U);
    *((int *)t14) = -1;
    t15 = (0 - 7);
    t10 = (t15 * -1);
    t10 = (t10 + 1);
    t14 = (t11 + 12U);
    *((unsigned int *)t14) = t10;
    t14 = (t16 + 0U);
    t17 = (t14 + 0U);
    *((int *)t17) = 7;
    t17 = (t14 + 4U);
    *((int *)t17) = 0;
    t17 = (t14 + 8U);
    *((int *)t17) = -1;
    t18 = (0 - 7);
    t10 = (t18 * -1);
    t10 = (t10 + 1);
    t17 = (t14 + 12U);
    *((unsigned int *)t17) = t10;
    t17 = (t4 + 4U);
    t19 = (t1 + 3048);
    t20 = (t17 + 88U);
    *((char **)t20) = t19;
    t22 = (t17 + 56U);
    *((char **)t22) = t21;
    xsi_type_set_default_value(t19, t21, 0);
    t23 = (t17 + 64U);
    t24 = (t19 + 80U);
    t25 = *((char **)t24);
    *((char **)t23) = t25;
    t26 = (t17 + 80U);
    *((unsigned int *)t26) = 32U;
    t27 = (t5 + 4U);
    t28 = (t2 != 0);
    if (t28 == 1)
        goto LAB3;

LAB2:    t29 = (t5 + 12U);
    *((char **)t29) = t6;
    t30 = (t5 + 20U);
    t31 = (t3 != 0);
    if (t31 == 1)
        goto LAB5;

LAB4:    t32 = (t5 + 28U);
    *((char **)t32) = t13;
    t33 = 0;
    t34 = 7;

LAB6:    if (t33 <= t34)
        goto LAB7;

LAB9:    t7 = (t17 + 56U);
    t8 = *((char **)t7);
    t28 = (32U != 32U);
    if (t28 == 1)
        goto LAB16;

LAB17:    t0 = xsi_get_transient_memory(32U);
    memcpy(t0, t8, 32U);

LAB1:    return t0;
LAB3:    *((char **)t27) = t2;
    goto LAB2;

LAB5:    *((char **)t30) = t3;
    goto LAB4;

LAB7:    t35 = 0;
    t36 = 7;

LAB10:    if (t35 <= t36)
        goto LAB11;

LAB13:
LAB8:    if (t33 == t34)
        goto LAB9;

LAB15:    t9 = (t33 + 1);
    t33 = t9;
    goto LAB6;

LAB11:    t37 = (t17 + 56U);
    t38 = *((char **)t37);
    t39 = (t33 - 7);
    t10 = (t39 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t33);
    t40 = (4U * t10);
    t41 = (0 + t40);
    t37 = (t38 + t41);
    t42 = *((int *)t37);
    t43 = (t33 - 7);
    t44 = (t43 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t33);
    t45 = (t44 * 8U);
    t46 = (t35 - 7);
    t47 = (t46 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t35);
    t48 = (t45 + t47);
    t49 = (4U * t48);
    t50 = (0 + t49);
    t51 = (t2 + t50);
    t52 = *((int *)t51);
    t53 = (t35 - 7);
    t54 = (t53 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t35);
    t55 = (4U * t54);
    t56 = (0 + t55);
    t57 = (t3 + t56);
    t58 = *((int *)t57);
    t59 = (t52 * t58);
    t60 = (t42 + t59);
    t61 = (t17 + 56U);
    t62 = *((char **)t61);
    t63 = (t33 - 7);
    t64 = (t63 * -1);
    xsi_vhdl_check_range_of_index(7, 0, -1, t33);
    t65 = (4U * t64);
    t66 = (0 + t65);
    t61 = (t62 + t66);
    *((int *)t61) = t60;

LAB12:    if (t35 == t36)
        goto LAB13;

LAB14:    t9 = (t35 + 1);
    t35 = t9;
    goto LAB10;

LAB16:    xsi_size_not_matching(32U, 32U, 0);
    goto LAB17;

LAB18:;
}


extern void work_p_2678588273_init()
{
	static char *se[] = {(void *)work_p_2678588273_sub_3105984972_708566852};
	xsi_register_didat("work_p_2678588273", "isim/test_file_reader_isim_beh.exe.sim/work/p_2678588273.didat");
	xsi_register_subprogram_executes(se);
}
