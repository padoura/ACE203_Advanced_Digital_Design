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
static const char *ng0 = "D:/Dropbox/ece/Spring_2017/Advanced Digital Design/Lab/Lab3/Lab3Stack/Lab3Top_Test.vhd";
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );


static void work_a_1712871943_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int64 t10;
    int64 t11;

LAB0:    t1 = (t0 + 3752U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(92, ng0);

LAB4:    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (!(t4));
    if (t5 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(98, ng0);

LAB18:    *((char **)t1) = &&LAB19;

LAB1:    return;
LAB5:    xsi_set_current_line(93, ng0);
    t2 = (t0 + 4384);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(94, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t10 = *((int64 *)t3);
    t11 = (t10 / 2);
    t2 = (t0 + 3560);
    xsi_process_wait(t2, t11);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:;
LAB8:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 4384);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t10 = *((int64 *)t3);
    t11 = (t10 / 2);
    t2 = (t0 + 3560);
    xsi_process_wait(t2, t11);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB4;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    goto LAB2;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

}

static void work_a_1712871943_2372691052_p_1(char *t0)
{
    char t13[16];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    char *t8;
    char *t9;
    int64 t10;
    int t11;
    int t12;
    char *t14;
    char *t15;
    char *t16;
    int t17;

LAB0:    t1 = (t0 + 4000U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(106, ng0);
    t2 = (t0 + 4448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(107, ng0);
    t7 = (100 * 1000LL);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t7);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(108, ng0);
    t2 = (t0 + 4448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(109, ng0);
    t7 = (1 * 1000LL);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t7);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(110, ng0);
    t2 = (t0 + 4512);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 7849);
    t4 = (t0 + 4576);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t10 = (t7 * 4);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t10);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(113, ng0);
    t2 = (t0 + 4512);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(114, ng0);
    t2 = (t0 + 4640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t10 = (t7 * 4);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t10);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 7857);
    t4 = (t0 + 4576);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 7865);
    *((int *)t2) = 0;
    t3 = (t0 + 7869);
    *((int *)t3) = 32;
    t11 = 0;
    t12 = 32;

LAB20:    if (t11 <= t12)
        goto LAB21;

LAB23:    xsi_set_current_line(127, ng0);
    t2 = (t0 + 4448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(128, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t10 = (t7 * 2);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t10);

LAB35:    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB21:    xsi_set_current_line(120, ng0);
    t4 = (t0 + 1832U);
    t5 = *((char **)t4);
    t4 = (t0 + 7728U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t13, t5, t4, 1);
    t8 = (t0 + 4576);
    t9 = (t8 + 56U);
    t14 = *((char **)t9);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t6, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 4512);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(122, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t10 = (t7 * 2);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t10);

LAB26:    *((char **)t1) = &&LAB27;
    goto LAB1;

LAB22:    t2 = (t0 + 7865);
    t11 = *((int *)t2);
    t3 = (t0 + 7869);
    t12 = *((int *)t3);
    if (t11 == t12)
        goto LAB23;

LAB32:    t17 = (t11 + 1);
    t11 = t17;
    t4 = (t0 + 7865);
    *((int *)t4) = t11;
    goto LAB20;

LAB24:    xsi_set_current_line(123, ng0);
    t2 = (t0 + 4512);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(124, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t10 = (t7 * 2);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t10);

LAB30:    *((char **)t1) = &&LAB31;
    goto LAB1;

LAB25:    goto LAB24;

LAB27:    goto LAB25;

LAB28:    goto LAB22;

LAB29:    goto LAB28;

LAB31:    goto LAB29;

LAB33:    xsi_set_current_line(129, ng0);
    t2 = (t0 + 4448);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t10 = (t7 * 2);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t10);

LAB39:    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB34:    goto LAB33;

LAB36:    goto LAB34;

LAB37:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 7873);
    t4 = (t0 + 4576);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 8U);
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(133, ng0);
    t2 = (t0 + 7881);
    *((int *)t2) = 0;
    t3 = (t0 + 7885);
    *((int *)t3) = 30;
    t11 = 0;
    t12 = 30;

LAB41:    if (t11 <= t12)
        goto LAB42;

LAB44:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 7889);
    *((int *)t2) = 0;
    t3 = (t0 + 7893);
    *((int *)t3) = 31;
    t11 = 0;
    t12 = 31;

LAB54:    if (t11 <= t12)
        goto LAB55;

LAB57:    xsi_set_current_line(149, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t10 = (t7 * 10);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t10);

LAB69:    *((char **)t1) = &&LAB70;
    goto LAB1;

LAB38:    goto LAB37;

LAB40:    goto LAB38;

LAB42:    xsi_set_current_line(134, ng0);
    t4 = (t0 + 1832U);
    t5 = *((char **)t4);
    t4 = (t0 + 7728U);
    t6 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t13, t5, t4, 1);
    t8 = (t0 + 4576);
    t9 = (t8 + 56U);
    t14 = *((char **)t9);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    memcpy(t16, t6, 8U);
    xsi_driver_first_trans_fast(t8);
    xsi_set_current_line(135, ng0);
    t2 = (t0 + 4512);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(136, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t10 = (t7 * 2);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t10);

LAB47:    *((char **)t1) = &&LAB48;
    goto LAB1;

LAB43:    t2 = (t0 + 7881);
    t11 = *((int *)t2);
    t3 = (t0 + 7885);
    t12 = *((int *)t3);
    if (t11 == t12)
        goto LAB44;

LAB53:    t17 = (t11 + 1);
    t11 = t17;
    t4 = (t0 + 7881);
    *((int *)t4) = t11;
    goto LAB41;

LAB45:    xsi_set_current_line(137, ng0);
    t2 = (t0 + 4512);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(138, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t10 = (t7 * 2);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t10);

LAB51:    *((char **)t1) = &&LAB52;
    goto LAB1;

LAB46:    goto LAB45;

LAB48:    goto LAB46;

LAB49:    goto LAB43;

LAB50:    goto LAB49;

LAB52:    goto LAB50;

LAB55:    xsi_set_current_line(142, ng0);
    t4 = (t0 + 4640);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    t8 = (t6 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t4);
    xsi_set_current_line(143, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t10 = (t7 * 2);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t10);

LAB60:    *((char **)t1) = &&LAB61;
    goto LAB1;

LAB56:    t2 = (t0 + 7889);
    t11 = *((int *)t2);
    t3 = (t0 + 7893);
    t12 = *((int *)t3);
    if (t11 == t12)
        goto LAB57;

LAB66:    t17 = (t11 + 1);
    t11 = t17;
    t4 = (t0 + 7889);
    *((int *)t4) = t11;
    goto LAB54;

LAB58:    xsi_set_current_line(144, ng0);
    t2 = (t0 + 4640);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(145, ng0);
    t2 = (t0 + 2768U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t10 = (t7 * 2);
    t2 = (t0 + 3808);
    xsi_process_wait(t2, t10);

LAB64:    *((char **)t1) = &&LAB65;
    goto LAB1;

LAB59:    goto LAB58;

LAB61:    goto LAB59;

LAB62:    goto LAB56;

LAB63:    goto LAB62;

LAB65:    goto LAB63;

LAB67:    xsi_set_current_line(151, ng0);
    t2 = (t0 + 4704);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(155, ng0);

LAB73:    *((char **)t1) = &&LAB74;
    goto LAB1;

LAB68:    goto LAB67;

LAB70:    goto LAB68;

LAB71:    goto LAB2;

LAB72:    goto LAB71;

LAB74:    goto LAB72;

}


extern void work_a_1712871943_2372691052_init()
{
	static char *pe[] = {(void *)work_a_1712871943_2372691052_p_0,(void *)work_a_1712871943_2372691052_p_1};
	xsi_register_didat("work_a_1712871943_2372691052", "isim/Lab3Top_Test_isim_beh.exe.sim/work/a_1712871943_2372691052.didat");
	xsi_register_executes(pe);
}
