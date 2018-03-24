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
static const char *ng0 = "D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab4/lab4new/FSMMode1.vhd";
extern char *IEEE_P_2592010699;

unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_1532115119_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned char t11;
    unsigned char t12;
    char *t13;
    char *t14;
    int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned char t19;
    unsigned char t20;
    char *t21;
    char *t22;
    char *t23;
    char *t24;
    char *t25;
    static char *nl0[] = {&&LAB4, &&LAB5, &&LAB3};

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t1 = (char *)((nl0) + t3);
    goto **((char **)t1);

LAB2:    t1 = (t0 + 3808);
    *((int *)t1) = 1;

LAB1:    return;
LAB3:    xsi_set_current_line(50, ng0);
    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t7 = (0 - 2);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t5 = (t6 + t10);
    t11 = *((unsigned char *)t5);
    t12 = (t11 == (unsigned char)3);
    if (t12 == 1)
        goto LAB10;

LAB11:    t4 = (unsigned char)0;

LAB12:    if (t4 != 0)
        goto LAB7;

LAB9:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = (1 - 2);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t4 = *((unsigned char *)t1);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB15;

LAB16:    t3 = (unsigned char)0;

LAB17:    if (t3 != 0)
        goto LAB13;

LAB14:    xsi_set_current_line(54, ng0);
    t1 = (t0 + 3920);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);

LAB8:    goto LAB2;

LAB4:    xsi_set_current_line(58, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = (1 - 2);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t4 = *((unsigned char *)t1);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB21;

LAB22:    t3 = (unsigned char)0;

LAB23:    if (t3 != 0)
        goto LAB18;

LAB20:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = (2 - 2);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB24;

LAB25:    xsi_set_current_line(62, ng0);
    t1 = (t0 + 3920);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    *((unsigned char *)t13) = (unsigned char)0;
    xsi_driver_first_trans_fast(t1);

LAB19:    goto LAB2;

LAB5:    xsi_set_current_line(65, ng0);
    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = (0 - 2);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t4 = *((unsigned char *)t1);
    t11 = (t4 == (unsigned char)3);
    if (t11 == 1)
        goto LAB29;

LAB30:    t3 = (unsigned char)0;

LAB31:    if (t3 != 0)
        goto LAB26;

LAB28:    t1 = (t0 + 1032U);
    t2 = *((char **)t1);
    t7 = (2 - 2);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (0 + t9);
    t1 = (t2 + t10);
    t3 = *((unsigned char *)t1);
    t4 = (t3 == (unsigned char)2);
    if (t4 != 0)
        goto LAB32;

LAB33:    xsi_set_current_line(69, ng0);
    t1 = (t0 + 3920);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    *((unsigned char *)t13) = (unsigned char)1;
    xsi_driver_first_trans_fast(t1);

LAB27:    goto LAB2;

LAB6:    xsi_set_current_line(71, ng0);
    t1 = (t0 + 3920);
    t2 = (t1 + 56U);
    t5 = *((char **)t2);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    *((unsigned char *)t13) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB2;

LAB7:    xsi_set_current_line(51, ng0);
    t21 = (t0 + 3920);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    t24 = (t23 + 56U);
    t25 = *((char **)t24);
    *((unsigned char *)t25) = (unsigned char)0;
    xsi_driver_first_trans_fast(t21);
    goto LAB8;

LAB10:    t13 = (t0 + 1032U);
    t14 = *((char **)t13);
    t15 = (2 - 2);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t13 = (t14 + t18);
    t19 = *((unsigned char *)t13);
    t20 = (t19 == (unsigned char)3);
    t4 = t20;
    goto LAB12;

LAB13:    xsi_set_current_line(53, ng0);
    t13 = (t0 + 3920);
    t14 = (t13 + 56U);
    t21 = *((char **)t14);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)1;
    xsi_driver_first_trans_fast(t13);
    goto LAB8;

LAB15:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t15 = (2 - 2);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t5 = (t6 + t18);
    t12 = *((unsigned char *)t5);
    t19 = (t12 == (unsigned char)3);
    t3 = t19;
    goto LAB17;

LAB18:    xsi_set_current_line(59, ng0);
    t13 = (t0 + 3920);
    t14 = (t13 + 56U);
    t21 = *((char **)t14);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)1;
    xsi_driver_first_trans_fast(t13);
    goto LAB19;

LAB21:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t15 = (2 - 2);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t5 = (t6 + t18);
    t12 = *((unsigned char *)t5);
    t19 = (t12 == (unsigned char)3);
    t3 = t19;
    goto LAB23;

LAB24:    xsi_set_current_line(61, ng0);
    t5 = (t0 + 3920);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    t14 = (t13 + 56U);
    t21 = *((char **)t14);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast(t5);
    goto LAB19;

LAB26:    xsi_set_current_line(66, ng0);
    t13 = (t0 + 3920);
    t14 = (t13 + 56U);
    t21 = *((char **)t14);
    t22 = (t21 + 56U);
    t23 = *((char **)t22);
    *((unsigned char *)t23) = (unsigned char)0;
    xsi_driver_first_trans_fast(t13);
    goto LAB27;

LAB29:    t5 = (t0 + 1032U);
    t6 = *((char **)t5);
    t15 = (2 - 2);
    t16 = (t15 * -1);
    t17 = (1U * t16);
    t18 = (0 + t17);
    t5 = (t6 + t18);
    t12 = *((unsigned char *)t5);
    t19 = (t12 == (unsigned char)3);
    t3 = t19;
    goto LAB31;

LAB32:    xsi_set_current_line(68, ng0);
    t5 = (t0 + 3920);
    t6 = (t5 + 56U);
    t13 = *((char **)t6);
    t14 = (t13 + 56U);
    t21 = *((char **)t14);
    *((unsigned char *)t21) = (unsigned char)2;
    xsi_driver_first_trans_fast(t5);
    goto LAB27;

}

static void work_a_1532115119_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    static char *nl0[] = {&&LAB6, &&LAB7, &&LAB5};

LAB0:    t1 = (t0 + 3240U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(75, ng0);
    t2 = (t0 + 1672U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t2 = (char *)((nl0) + t4);
    goto **((char **)t2);

LAB4:    xsi_set_current_line(75, ng0);

LAB11:    t2 = (t0 + 3824);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB12;

LAB1:    return;
LAB5:    xsi_set_current_line(76, ng0);
    t5 = (t0 + 6499);
    t7 = (t0 + 3984);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t5, 2U);
    xsi_driver_first_trans_fast_port(t7);
    goto LAB4;

LAB6:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 6501);
    t5 = (t0 + 3984);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB7:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 6503);
    t5 = (t0 + 3984);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB8:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 6505);
    t5 = (t0 + 3984);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 2U);
    xsi_driver_first_trans_fast_port(t5);
    goto LAB4;

LAB9:    t3 = (t0 + 3824);
    *((int *)t3) = 0;
    goto LAB2;

LAB10:    goto LAB9;

LAB12:    goto LAB10;

}

static void work_a_1532115119_3212880686_p_2(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;

LAB0:    xsi_set_current_line(84, ng0);
    t1 = (t0 + 1352U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1152U);
    t3 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t3 != 0)
        goto LAB5;

LAB6:
LAB3:    t1 = (t0 + 3840);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(85, ng0);
    t1 = (t0 + 4048);
    t5 = (t1 + 56U);
    t6 = *((char **)t5);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)2;
    xsi_driver_first_trans_fast(t1);
    goto LAB3;

LAB5:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t4 = *((unsigned char *)t5);
    t2 = (t0 + 4048);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = t4;
    xsi_driver_first_trans_fast(t2);
    goto LAB3;

}


extern void work_a_1532115119_3212880686_init()
{
	static char *pe[] = {(void *)work_a_1532115119_3212880686_p_0,(void *)work_a_1532115119_3212880686_p_1,(void *)work_a_1532115119_3212880686_p_2};
	xsi_register_didat("work_a_1532115119_3212880686", "isim/Lab4_Test_isim_beh.exe.sim/work/a_1532115119_3212880686.didat");
	xsi_register_executes(pe);
}
