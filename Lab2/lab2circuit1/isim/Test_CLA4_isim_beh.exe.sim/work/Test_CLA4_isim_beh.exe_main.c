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
char *STD_STANDARD;
char *IEEE_P_1242562249;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_1263416347_3212880686_init();
    work_a_4038272074_3212880686_init();
    work_a_2953042589_1181938964_init();
    work_a_0661908848_1181938964_init();
    work_a_1510009640_1181938964_init();
    work_a_2274767533_1181938964_init();
    work_a_0495498285_3212880686_init();
    work_a_0629055575_1181938964_init();
    work_a_1477289487_1181938964_init();
    work_a_2241560458_1181938964_init();
    work_a_4082661208_1181938964_init();
    work_a_1000632578_1181938964_init();
    work_a_0194618706_1181938964_init();
    work_a_3217307613_1181938964_init();
    work_a_1536922588_2372691052_init();


    xsi_register_tops("work_a_1536922588_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");

    return xsi_run_simulation(argc, argv);

}
