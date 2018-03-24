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
char *IEEE_P_3499444699;
char *IEEE_P_3620187407;
char *STD_TEXTIO;
char *IEEE_P_3564397177;


int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    ieee_p_2592010699_init();
    ieee_p_1242562249_init();
    work_a_0290344353_3212880686_init();
    work_a_3279062471_1181938964_init();
    work_a_1336350718_1181938964_init();
    work_a_2269251769_3212880686_init();
    work_a_3808945121_3212880686_init();
    work_a_0856469235_3212880686_init();
    work_a_4038272074_3212880686_init();
    work_a_1510009640_1181938964_init();
    work_a_3233436371_1181938964_init();
    work_a_0253033858_1181938964_init();
    work_a_1180019410_1181938964_init();
    work_a_1196695394_3212880686_init();
    work_a_4117826039_1181938964_init();
    work_a_3882730847_1181938964_init();
    work_a_3684138907_1181938964_init();
    ieee_p_3499444699_init();
    ieee_p_3620187407_init();
    work_a_1753280202_3212880686_init();
    work_a_0118220962_3212880686_init();
    work_a_0568513796_1181938964_init();
    work_a_1223618268_3212880686_init();
    std_textio_init();
    ieee_p_3564397177_init();
    xilinxcorelib_a_3527928050_2959432447_init();
    xilinxcorelib_a_2515230659_1709443946_init();
    xilinxcorelib_a_1715819615_0543512595_init();
    xilinxcorelib_a_2907303268_3212880686_init();
    work_a_1953192566_3942814601_init();
    work_a_0499809158_1181938964_init();
    work_a_0587811254_3212880686_init();
    work_a_1712871943_2372691052_init();


    xsi_register_tops("work_a_1712871943_2372691052");

    IEEE_P_2592010699 = xsi_get_engine_memory("ieee_p_2592010699");
    xsi_register_ieee_std_logic_1164(IEEE_P_2592010699);
    STD_STANDARD = xsi_get_engine_memory("std_standard");
    IEEE_P_1242562249 = xsi_get_engine_memory("ieee_p_1242562249");
    IEEE_P_3499444699 = xsi_get_engine_memory("ieee_p_3499444699");
    IEEE_P_3620187407 = xsi_get_engine_memory("ieee_p_3620187407");
    STD_TEXTIO = xsi_get_engine_memory("std_textio");
    IEEE_P_3564397177 = xsi_get_engine_memory("ieee_p_3564397177");

    return xsi_run_simulation(argc, argv);

}
