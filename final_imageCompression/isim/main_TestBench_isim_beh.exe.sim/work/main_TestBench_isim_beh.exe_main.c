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

#include "xsi.h"

struct XSI_INFO xsi_info;

char *IEEE_P_2592010699;
char *IEEE_P_0774719531;
char *STD_STANDARD;
char *WORK_P_0972559976;
char *IEEE_P_3620187407;
char *STD_TEXTIO;
char *IEEE_P_3499444699;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    work_p_0972559976_init();
    ieee_p_1242562249_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    ieee_p_0774719531_init();
    std_textio_init();
    work_a_1208337864_3212880686_init();
    work_a_4000226436_3212880686_init();
    work_a_1138761033_3212880686_init();
    work_a_2793894303_3212880686_init();
    work_a_4058131554_3212880686_init();
    work_a_3860345734_3212880686_init();
    work_a_3471957744_3212880686_init();
    work_a_3647867682_3212880686_init();
    work_a_2330757300_3212880686_init();
    work_a_1774854872_1181938964_init();
    work_a_0068301332_2372691052_init();


    xsi_register_tops("work_a_0068301332_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    IEEE_P_0774719531 = xsi_get_engine_memory("ieee_p_0774719531");
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    WORK_P_0972559976 = xsi_get_engine_memory("work_p_0972559976");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
