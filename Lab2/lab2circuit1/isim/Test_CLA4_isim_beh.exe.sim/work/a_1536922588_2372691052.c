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
static const char *ng0 = "D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab2/lab2circuit1/Test_CLA4.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );


static void work_a_1536922588_2372691052_p_0(char *t0)
{
    char t7[16];
    char *t1;
    char *t2;
    int64 t3;
    char *t4;
    int t5;
    int t6;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    int t16;
    int t17;
    char *t18;
    int t19;

LAB0:    t1 = (t0 + 2832U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(78, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t3);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(79, ng0);
    t2 = (t0 + 5510);
    *((int *)t2) = 0;
    t4 = (t0 + 5514);
    *((int *)t4) = 15;
    t5 = 0;
    t6 = 15;

LAB8:    if (t5 <= t6)
        goto LAB9;

LAB11:    xsi_set_current_line(86, ng0);

LAB24:    *((char **)t1) = &&LAB25;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB9:    xsi_set_current_line(80, ng0);
    t8 = (t0 + 1032U);
    t9 = *((char **)t8);
    t8 = (t0 + 5440U);
    t10 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t7, t9, t8, 1);
    t11 = (t0 + 3216);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t10, 4U);
    xsi_driver_first_trans_fast(t11);
    xsi_set_current_line(81, ng0);
    t2 = (t0 + 5510);
    t4 = (t0 + 5518);
    *((int *)t4) = 0;
    t8 = (t0 + 5522);
    *((int *)t8) = *((int *)t2);
    t16 = 0;
    t17 = *((int *)t2);

LAB12:    if (t16 <= t17)
        goto LAB13;

LAB15:
LAB10:    t2 = (t0 + 5510);
    t5 = *((int *)t2);
    t4 = (t0 + 5514);
    t6 = *((int *)t4);
    if (t5 == t6)
        goto LAB11;

LAB21:    t16 = (t5 + 1);
    t5 = t16;
    t8 = (t0 + 5510);
    *((int *)t8) = t5;
    goto LAB8;

LAB13:    xsi_set_current_line(82, ng0);
    t9 = (t0 + 1192U);
    t10 = *((char **)t9);
    t9 = (t0 + 5456U);
    t11 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t7, t10, t9, 1);
    t12 = (t0 + 3280);
    t13 = (t12 + 56U);
    t14 = *((char **)t13);
    t15 = (t14 + 56U);
    t18 = *((char **)t15);
    memcpy(t18, t11, 4U);
    xsi_driver_first_trans_fast(t12);
    xsi_set_current_line(83, ng0);
    t3 = (50 * 1000LL);
    t2 = (t0 + 2640);
    xsi_process_wait(t2, t3);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB14:    t2 = (t0 + 5518);
    t16 = *((int *)t2);
    t4 = (t0 + 5522);
    t17 = *((int *)t4);
    if (t16 == t17)
        goto LAB15;

LAB20:    t19 = (t16 + 1);
    t16 = t19;
    t8 = (t0 + 5518);
    *((int *)t8) = t16;
    goto LAB12;

LAB16:    goto LAB14;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB22:    goto LAB2;

LAB23:    goto LAB22;

LAB25:    goto LAB23;

}


extern void work_a_1536922588_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1536922588_2372691052_p_0};
	xsi_register_didat("work_a_1536922588_2372691052", "isim/Test_CLA4_isim_beh.exe.sim/work/a_1536922588_2372691052.didat");
	xsi_register_executes(pe);
}
