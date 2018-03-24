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

/* This file is designed for use with ISim build 0xc3576ebc */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab3/Lab3Stack/Counter125K.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3808945121_3212880686_p_0(char *t0)
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
    unsigned char t10;
    unsigned char t11;
    unsigned int t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    char *t19;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1832U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB5;

LAB6:    xsi_set_current_line(60, ng0);
    t1 = (t0 + 3880);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB3:    t1 = (t0 + 3720);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1512U);
    t5 = *((char **)t1);
    t1 = (t0 + 3816);
    t6 = (t1 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t5, 17U);
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(50, ng0);
    t1 = (t0 + 992U);
    t10 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t10 != 0)
        goto LAB7;

LAB9:
LAB8:    goto LAB3;

LAB7:    xsi_set_current_line(51, ng0);
    t5 = (t0 + 1992U);
    t6 = *((char **)t5);
    t5 = (t0 + 6325);
    t11 = 1;
    if (17U == 17U)
        goto LAB13;

LAB14:    t11 = 0;

LAB15:    if (t11 != 0)
        goto LAB10;

LAB12:    xsi_set_current_line(55, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 6264U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t20, t2, t1, 1);
    t6 = (t0 + 3816);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    t9 = (t8 + 56U);
    t13 = *((char **)t9);
    memcpy(t13, t5, 17U);
    xsi_driver_first_trans_fast(t6);
    xsi_set_current_line(56, ng0);
    t1 = (t0 + 3880);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast_port(t1);

LAB11:    goto LAB8;

LAB10:    xsi_set_current_line(52, ng0);
    t13 = xsi_get_transient_memory(17U);
    memset(t13, 0, 17U);
    t14 = t13;
    memset(t14, (unsigned char)2, 17U);
    t15 = (t0 + 3816);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    t18 = (t17 + 56U);
    t19 = *((char **)t18);
    memcpy(t19, t13, 17U);
    xsi_driver_first_trans_fast(t15);
    xsi_set_current_line(53, ng0);
    t1 = (t0 + 3880);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast_port(t1);
    goto LAB11;

LAB13:    t12 = 0;

LAB16:    if (t12 < 17U)
        goto LAB17;
    else
        goto LAB15;

LAB17:    t8 = (t6 + t12);
    t9 = (t5 + t12);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB14;

LAB18:    t12 = (t12 + 1);
    goto LAB16;

}

static void work_a_3808945121_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;

LAB0:    xsi_set_current_line(66, ng0);
    t1 = (t0 + 1992U);
    t2 = *((char **)t1);
    t1 = (t0 + 3944);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 17U);
    xsi_driver_first_trans_fast_port(t1);
    t1 = (t0 + 3736);
    *((int *)t1) = 1;

LAB1:    return;
}


extern void work_a_3808945121_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3808945121_3212880686_p_0,(void *)work_a_3808945121_3212880686_p_1};
	xsi_register_didat("work_a_3808945121_3212880686", "isim/Lab3Top_Test_isim_beh.exe.sim/work/a_3808945121_3212880686.didat");
	xsi_register_executes(pe);
}
