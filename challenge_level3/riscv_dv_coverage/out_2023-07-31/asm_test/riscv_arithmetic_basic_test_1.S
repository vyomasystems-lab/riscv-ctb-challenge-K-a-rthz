.include "user_define.h"
.globl _start
.section .text
.option norvc;
_start:           
                  .include "user_init.s"
                  csrr x5, 0xf14
                  li x6, 0
                  beq x5, x6, 0f

0: la x12, h0_start
jalr x0, x12, 0
h0_start:
                  li x30, 0x40000100
                  csrw 0x301, x30
kernel_sp:        
                  la x31, kernel_stack_end

trap_vec_init:    
                  la x30, mtvec_handler
                  ori x30, x30, 0
                  csrw 0x305, x30 # MTVEC

mepc_setup:       
                  la x30, init
                  csrw 0x341, x30

init_machine_mode:
                  li x30, 0x1a00
                  csrw 0x300, x30 # MSTATUS
                  li x30, 0x0
                  csrw 0x304, x30 # MIE
                  mret
init:             
                  li x0, 0x2
                  li x1, 0x0
                  li x2, 0x98802b5f
                  li x3, 0xf8332e98
                  li x4, 0x80000000
                  li x5, 0xb
                  li x6, 0xf2c5efc0
                  li x7, 0x7b7af97c
                  li x8, 0x0
                  li x9, 0x112977e8
                  li x10, 0x0
                  li x11, 0x4
                  li x12, 0xa
                  li x13, 0xfa59fe80
                  li x14, 0x80000000
                  li x15, 0x80000000
                  li x16, 0x33cb27b6
                  li x17, 0x0
                  li x18, 0xc
                  li x19, 0xff72b133
                  li x20, 0xa
                  li x21, 0x80000000
                  li x22, 0xe
                  li x23, 0xf0f7a2bc
                  li x24, 0xf3837758
                  li x25, 0x0
                  li x27, 0x8
                  li x28, 0xd2528633
                  li x29, 0xfa10c83f
                  li x30, 0xff1a05d9
                  la x26, user_stack_end
main:             and         sp, s11, s7
                  auipc       s3, 926037
                  sll         s4, s3, s8
                  sub         t0, s11, a2
                  srai        s6, t0, 12
                  srli        s8, s3, 21
                  add         a3, sp, gp
                  slli        s11, sp, 19
                  sll         s5, t3, zero
                  slt         t4, ra, sp
                  srl         s1, s9, a7
                  and         tp, a0, t1
                  add         t1, t0, t2
                  slli        gp, a3, 23
                  slli        a4, a5, 31
                  ori         t3, s2, 2001
                  ori         sp, zero, -1145
                  auipc       zero, 833341
                  nop
                  slti        s5, a2, 1500
                  sltiu       t4, a7, -1687
                  and         s8, s2, ra
                  add         s0, a7, s8
                  ori         s6, t4, 883
                  xor         t4, t3, s4
                  xori        s4, s2, -1032
                  sltu        t0, a2, s8
                  slti        a0, s0, -1597
                  sltiu       s7, s9, -950
                  nop
                  add         s0, t3, tp
                  srl         s4, s5, s4
                  srl         t1, a6, s4
                  lui         s8, 62450
                  addi        a7, a4, 1183
                  xor         s7, s9, s3
                  andi        zero, s7, 1156
                  sll         ra, s0, ra
                  addi        s2, s6, 1443
                  lui         a5, 967944
                  add         s6, s1, t0
                  sltu        a4, t6, a3
                  sltiu       s6, t6, 774
                  slt         gp, s8, a2
                  auipc       ra, 529860
                  srai        t1, t0, 25
                  xor         s1, a4, s8
                  sll         s7, a4, t4
                  sltu        t3, s9, s10
                  and         t5, s6, a4
                  srli        t3, s0, 5
                  sub         s5, t1, tp
                  slti        zero, a7, -343
                  sltiu       t5, a7, 859
                  srl         zero, s3, a1
                  lui         zero, 463895
                  andi        zero, s4, -1938
                  sll         s9, sp, s4
                  srl         s9, t0, s11
                  andi        tp, t1, -1235
                  or          tp, s7, t3
                  srli        s9, s2, 25
                  srl         t2, sp, sp
                  slli        s11, t6, 13
                  srl         a4, t0, a2
                  nop
                  sltu        a5, s10, a1
                  and         a7, ra, t1
                  lui         s4, 997535
                  sra         s4, a0, a5
                  add         a6, a5, a1
                  andi        gp, s1, -715
                  ori         s7, t4, 1045
                  andi        a6, t6, 1216
                  srai        sp, s8, 27
                  xor         s2, s6, s7
                  add         s0, s2, a1
                  sltiu       s5, t4, 36
                  srli        a5, gp, 0
                  srai        ra, t3, 4
                  sra         s6, s0, gp
                  add         s4, a7, t1
                  or          t4, s6, t6
                  xori        a1, s11, 1024
                  auipc       a0, 50256
                  addi        a3, t0, 1048
                  srli        s9, zero, 27
                  slt         a6, s2, s0
                  sltu        s11, s1, a1
                  slli        zero, a2, 0
                  srl         t4, sp, a3
                  nop
                  slli        gp, t0, 17
                  slti        s2, s1, -531
                  add         zero, a5, s0
                  sltiu       zero, t0, 1132
                  slt         a1, t5, s5
                  addi        a7, t4, -723
                  slli        a6, t0, 21
                  nop
                  srli        s5, tp, 26
                  addi        tp, s8, -1618
                  xor         a4, s8, a3
                  addi        a0, t6, 462
                  srai        t5, s1, 6
                  andi        zero, gp, 1492
                  lui         a3, 616443
                  add         a6, a5, sp
                  sub         t3, s11, a6
                  ori         a6, a4, -207
                  or          t2, t4, s3
                  srai        t4, a6, 10
                  auipc       s11, 1038520
                  sltiu       gp, ra, 653
                  srli        t2, a3, 10
                  addi        s1, t5, 1644
                  sll         t1, s4, t6
                  add         s5, ra, s2
                  lui         t4, 862796
                  andi        a5, a0, -1090
                  srl         t0, s2, s7
                  auipc       zero, 233613
                  or          zero, t2, t5
                  sltiu       a0, a7, 1837
                  addi        a7, s3, -1069
                  nop
                  srai        a7, t0, 7
                  andi        s9, s5, -730
                  sll         a5, s3, s8
                  andi        zero, t0, -101
                  sltiu       s7, s0, 1539
                  sltiu       a5, gp, -292
                  xor         a1, t0, s3
                  xor         zero, s7, s1
                  add         a6, s7, s11
                  and         s1, a4, a3
                  or          zero, s2, a6
                  sll         s3, s9, s2
                  nop
                  and         a6, t6, s11
                  sltu        s4, s9, a7
                  xor         a6, s5, gp
                  slti        t5, a1, -155
                  auipc       zero, 485040
                  srli        a7, a0, 2
                  srli        a5, tp, 22
                  sll         s1, s10, s5
                  auipc       t3, 572332
                  slli        s8, gp, 16
                  srli        s4, s2, 30
                  addi        a7, s0, -736
                  sll         s7, t4, tp
                  sltu        t3, s0, t6
                  slli        tp, zero, 6
                  nop
                  andi        a0, a6, -1454
                  sub         a5, s10, t1
                  ori         s1, a7, 1149
                  lui         s0, 360889
                  slt         s1, a2, t0
                  auipc       a0, 500528
                  add         a7, a6, a0
                  sub         gp, a3, a5
                  srai        zero, zero, 11
                  srl         s8, a1, a4
                  srl         zero, a7, s5
                  ori         a6, a2, -707
                  srl         a3, s5, s0
                  sltu        a7, sp, s6
                  sll         s2, s10, gp
                  sltiu       a3, t3, -919
                  nop
                  sub         s4, s10, a1
                  srl         a6, s10, s9
                  srl         s5, ra, tp
                  sltu        s3, s1, s10
                  srai        t2, s3, 12
                  ori         sp, a0, 1823
                  sll         gp, a7, t6
                  ori         a4, a4, 81
                  and         sp, s5, s4
                  sltu        ra, t5, s8
                  nop
                  slli        t1, a6, 16
                  andi        t2, s0, 1256
                  slti        s4, s2, -1987
                  sltiu       a4, gp, -458
                  lui         s9, 455528
                  or          t2, t2, s5
                  xor         s1, s2, a1
                  or          a0, s8, t0
                  srl         s8, a6, a0
                  and         a0, s8, s10
                  slli        zero, s8, 16
                  sll         a4, t0, a3
                  sll         s5, t2, s0
                  sltiu       a5, a3, 558
                  nop
                  slt         t0, t0, sp
                  ori         t0, s10, 1501
                  nop
                  srai        a0, s1, 30
                  srli        zero, s3, 0
                  srai        t3, t2, 8
                  slli        s5, a6, 23
                  slti        s1, t3, 719
                  ori         t4, t5, 1152
                  srli        t5, t4, 1
                  auipc       t4, 338764
                  sll         a3, t2, sp
                  xori        s1, a7, 1931
                  ori         tp, s4, -95
                  addi        s8, s8, -389
                  srl         a6, s8, tp
                  xori        s6, a5, -2032
                  srl         s6, s4, t3
                  ori         a0, a2, 920
                  and         a5, a4, s5
                  ori         s5, a5, -1602
                  or          t2, t1, a1
                  srl         s4, s2, t2
                  sub         s4, s0, t1
                  sltu        t2, a0, s10
                  slti        t2, s10, -1055
                  slti        s6, ra, -299
                  and         s4, s10, t1
                  ori         zero, a2, 1385
                  andi        t5, gp, -1874
                  ori         s1, s8, 1550
                  srl         gp, s0, s0
                  sra         s6, a2, t4
                  xori        gp, s4, -93
                  ori         a4, s5, 1778
                  li         s7, 0x0 #start riscv_int_numeric_corner_stream_1
                  li         t5, 0x0
                  li         t4, 0x3900720a
                  li         t3, 0x1
                  li         s4, 0x0
                  li         s0, 0x1
                  li         s8, 0x1
                  li         s1, 0x1
                  li         s6, 0x1
                  li         t1, 0x0
                  add         s4, ra, tp
                  nop
                  addi        zero, zero, 1722
                  addi        s5, s4, 720
                  sub         s0, s8, s5
                  lui         s7, 853044
                  add         zero, s3, s9
                  add         gp, zero, s7
                  sub         a6, a2, t1
                  sub         a3, sp, s2
                  addi        t0, sp, -106
                  nop
                  addi        t5, s0, 1597
                  nop
                  nop
                  add         a0, ra, a1
                  lui         sp, 472480
                  sub         a1, t5, t2
                  lui         s1, 315083
                  sub         ra, zero, gp
                  addi        a7, a5, 1088
                  lui         s5, 238382 #end riscv_int_numeric_corner_stream_1
                  andi        sp, s9, -553
                  srai        zero, s8, 27
                  srli        a4, a3, 29
                  slt         ra, s10, s9
                  and         s5, s8, s3
                  addi        t4, s9, -1041
                  or          t0, a1, a0
                  srli        zero, ra, 21
                  slli        s1, t0, 15
                  add         s4, s11, t6
                  andi        s7, t6, -1811
                  srai        s11, a6, 20
                  sra         ra, s6, a1
                  srai        a7, t6, 19
                  ori         s7, s10, 162
                  andi        tp, t2, -363
                  srai        tp, t4, 8
                  slt         sp, a1, a7
                  sll         s1, s0, t2
                  add         a3, t0, a0
                  sra         t4, a5, a4
                  sltiu       zero, tp, 928
                  sltiu       a4, s4, 1753
                  auipc       t3, 383448
                  sra         s1, a2, a2
                  ori         zero, s7, -626
                  nop
                  xori        zero, t0, 1428
                  addi        tp, gp, -205
                  and         gp, ra, s8
                  sll         t5, gp, s11
                  or          t1, a1, s11
                  sub         t1, s9, a6
                  auipc       zero, 188752
                  sll         a0, a2, a2
                  slt         t2, s11, s3
                  and         zero, a4, s5
                  and         s6, s2, a1
                  addi        zero, s11, 603
                  sltiu       a0, a1, 385
                  lui         zero, 427605
                  srai        s3, s6, 27
                  xori        s8, a5, 1227
                  add         tp, t6, sp
                  slt         s7, t1, s2
                  srli        a3, a1, 10
                  srai        zero, a1, 9
                  nop
                  sll         zero, t3, gp
                  sltiu       s2, s10, 1254
                  and         t4, s2, a1
                  srl         a7, s0, s3
                  slli        sp, s8, 19
                  xori        zero, a1, 2021
                  lui         t3, 65071
                  srli        a5, a2, 3
                  andi        zero, t1, 1134
                  srl         zero, t4, sp
                  sltu        s8, s4, t1
                  srli        t4, sp, 14
                  addi        t5, tp, -417
                  ori         s3, t3, 190
                  srl         tp, a7, a7
                  or          t5, a7, s5
                  xori        a0, t2, -943
                  sub         zero, s8, s6
                  slli        s3, t0, 11
                  slt         zero, s8, s0
                  srai        gp, t1, 18
                  sra         a1, t3, tp
                  srai        t0, tp, 26
                  sub         t1, s10, s7
                  lui         tp, 556012
                  andi        zero, a6, -724
                  slli        zero, s9, 16
                  ori         t5, gp, -1626
                  and         t4, t2, t4
                  add         t3, s1, s2
                  slti        zero, t3, -1109
                  addi        a7, s11, 615
                  srai        zero, t5, 8
                  sltu        s9, s1, t0
                  and         s1, a5, zero
                  sltu        a7, s7, s7
                  slti        t3, zero, -173
                  srai        zero, s11, 9
                  sub         s4, zero, a7
                  xor         zero, tp, zero
                  nop
                  add         a7, a6, s8
                  andi        s6, a7, 83
                  sll         t2, s7, a0
                  sltu        sp, a1, tp
                  slli        s2, zero, 26
                  xor         s2, a4, s0
                  and         s6, t6, s3
                  nop
                  ori         a1, t6, -1713
                  sra         ra, a0, t6
                  slt         a0, s8, tp
                  addi        a7, tp, -1594
                  lui         t4, 20691
                  auipc       a6, 391228
                  and         s8, t2, s3
                  xori        gp, s10, -1021
                  ori         s8, t2, -1109
                  sub         a0, tp, s0
                  lui         gp, 33683
                  xori        t2, s6, 1590
                  andi        s1, s6, 1700
                  slti        s1, ra, 1614
                  srl         sp, s9, s4
                  sltu        ra, a0, gp
                  or          s5, zero, a1
                  sra         tp, s11, s3
                  nop
                  add         ra, ra, a7
                  xor         a6, t4, t3
                  slli        s0, sp, 31
                  ori         s4, t6, -1532
                  xori        s11, s4, -1707
                  srli        a1, s6, 5
                  and         s7, s7, s2
                  xori        zero, s9, 1688
                  xor         t2, s2, a2
                  sub         s8, s9, a7
                  sll         zero, a4, zero
                  xori        zero, a0, -311
                  sll         s5, t5, a5
                  srli        s2, s6, 15
                  srai        s9, s1, 30
                  add         t1, a2, s7
                  add         t4, ra, a7
                  slli        s6, s2, 6
                  slt         s6, s10, t2
                  and         zero, a0, a7
                  or          a1, a1, s8
                  xor         t0, s2, sp
                  sltiu       t0, t4, 840
                  ori         t2, s7, -1494
                  slt         s2, s1, t4
                  sll         t1, s10, s8
                  and         t3, a6, gp
                  ori         a5, tp, -932
                  ori         s8, s5, 873
                  lui         zero, 959050
                  srl         ra, s4, tp
                  xor         s9, s8, s9
                  slli        a1, gp, 0
                  srl         t4, s6, s9
                  nop
                  srl         s3, sp, s8
                  sll         zero, t2, ra
                  slti        s4, s3, 362
                  auipc       s7, 354909
                  slli        a5, s11, 29
                  srli        t4, s2, 20
                  add         ra, zero, zero
                  and         s2, a3, s3
                  sltiu       t1, s9, 1415
                  andi        ra, a3, 379
                  sub         s11, a7, gp
                  add         s4, a7, t4
                  add         s3, gp, sp
                  ori         t5, t5, -82
                  or          sp, s10, ra
                  srai        s4, s7, 15
                  lui         a5, 554725
                  add         s11, s11, t0
                  srai        t5, t4, 6
                  nop
                  andi        zero, t3, -209
                  sltiu       gp, s8, 759
                  slli        a5, gp, 24
                  srli        a7, a3, 6
                  slli        s9, s3, 15
                  ori         t3, a6, -364
                  slt         gp, a3, s3
                  andi        sp, a4, 252
                  srl         s9, s6, s7
                  auipc       s2, 973072
                  srai        s7, t3, 10
                  sltu        s0, tp, t1
                  sra         a7, t1, t5
                  srai        s4, tp, 25
                  lui         s3, 999047
                  slt         t2, a6, t5
                  ori         s11, a0, 200
                  srli        s2, s1, 18
                  xor         sp, s11, t1
                  andi        gp, s1, -963
                  nop
                  srai        zero, s5, 10
                  xori        s3, sp, -1484
                  srai        t3, a4, 26
                  add         sp, s2, t0
                  ori         a3, s2, 839
                  sltiu       a3, s11, 1780
                  and         s6, ra, s2
                  sll         a1, a4, s2
                  and         s3, a1, a5
                  xor         zero, sp, t5
                  nop
                  andi        a0, s3, -1332
                  slli        s4, s7, 30
                  slti        s8, a7, -1273
                  sltu        t5, s6, gp
                  andi        s3, a5, 467
                  srli        a6, s6, 9
                  and         a4, sp, s11
                  slti        s4, a1, -352
                  or          s6, a2, zero
                  sltu        s4, a3, ra
                  srl         s6, a4, s4
                  nop
                  xor         t1, s1, t4
                  sub         a6, gp, s8
                  auipc       s7, 285906
                  slt         a7, a6, zero
                  sltu        s9, a6, t1
                  sltu        s3, a6, t6
                  auipc       s3, 985922
                  sltu        s7, s11, s2
                  xori        t1, s5, 72
                  andi        a7, s5, 1074
                  xor         a1, tp, s5
                  sub         a6, s4, a1
                  add         s8, t1, t2
                  sll         zero, t5, sp
                  sltu        a6, t1, s3
                  ori         s2, s2, -150
                  sltu        s11, s11, s10
                  srli        a1, s3, 3
                  add         s2, zero, sp
                  sub         t0, t5, t6
                  sll         a1, s0, s2
                  srai        t4, a6, 4
                  srli        t4, s5, 4
                  srai        s2, s2, 19
                  slli        s0, a2, 17
                  slt         s6, s2, a1
                  sltiu       s3, s11, -226
                  xori        a6, s6, -1636
                  nop
                  lui         s0, 589887
                  auipc       t3, 152818
                  sltiu       s1, sp, 1752
                  slli        a6, a5, 0
                  sltu        t1, t5, ra
                  ori         t3, tp, -185
                  sra         t2, a7, s5
                  slli        sp, a6, 2
                  sra         s8, s1, t3
                  and         s9, s9, s2
                  slti        s3, t1, -2047
                  slli        a3, s8, 17
                  slli        a6, t5, 0
                  addi        t5, t3, 1846
                  slti        a1, s8, 1262
                  xor         a6, s11, a6
                  srli        t3, a6, 31
                  xor         gp, s10, t0
                  srai        zero, gp, 7
                  xor         sp, s6, t0
                  add         sp, s10, s5
                  slti        s7, s11, -95
                  slti        a3, s6, 906
                  or          a5, a2, s10
                  slli        s7, a0, 4
                  auipc       s6, 239611
                  li         t4, 0x0 #start riscv_int_numeric_corner_stream_0
                  li         a3, 0x0
                  li         s9, 0x0
                  li         s5, 0x1
                  li         s1, 0x4d92bd53
                  li         ra, 0x406d9b73
                  li         s6, 0x0
                  li         a4, 0x0
                  li         t3, 0x3105bb82
                  li         t5, 0x0
                  addi        s0, t1, -435
                  lui         s6, 525305
                  addi        ra, t0, -734
                  nop
                  sub         s9, s0, gp
                  addi        s9, s4, 1064
                  lui         t2, 379973
                  add         t4, s0, a2
                  sub         s2, s7, s10
                  sub         t4, t5, a2
                  add         a4, s7, t5
                  nop
                  nop
                  sub         s11, s5, s10
                  lui         a7, 502705
                  addi        ra, s11, 1148
                  lui         s4, 850269
                  add         s0, sp, a0
                  add         sp, s2, s10
                  lui         s4, 171594
                  sub         s6, t1, a7
                  nop
                  add         s5, a6, t2
                  lui         s4, 594726
                  add         zero, gp, s7
                  sub         a1, a0, s6
                  sub         gp, a7, a0
                  addi        a3, s11, -2031
                  add         a4, a2, s5 #end riscv_int_numeric_corner_stream_0
                  sll         ra, tp, t0
                  sra         s0, s7, a1
                  xori        tp, zero, -605
                  slt         zero, t2, s0
                  srai        t0, a2, 5
                  srl         s2, a0, gp
                  xor         a7, zero, zero
                  xor         s5, ra, s7
                  ori         t3, a3, 1950
                  xor         t4, tp, t6
                  xori        s9, a3, 1962
                  srli        s7, a1, 27
                  sll         s5, s3, s7
                  and         s8, t5, a3
                  andi        s7, s1, -1965
                  xor         t1, s6, s8
                  sltiu       zero, a3, 750
                  addi        s1, t1, 724
                  sltu        t3, s10, a6
                  add         a1, t5, t4
                  slli        s3, s3, 27
                  addi        a3, s7, 948
                  sltu        s4, gp, t4
                  sub         s11, tp, s4
                  xori        s7, a0, -542
                  srli        t2, s2, 13
                  andi        a0, s11, -1528
                  srli        t5, t3, 11
                  auipc       s5, 864534
                  ori         zero, zero, -918
                  sra         zero, s7, s6
                  slti        s3, tp, -2
                  lui         ra, 956942
                  lui         a0, 134274
                  sra         gp, a7, ra
                  or          t2, s11, s3
                  srl         tp, s5, s3
                  andi        s1, t5, 516
                  sltu        zero, s1, sp
                  xor         a7, a6, s4
                  lui         t5, 53636
                  srli        sp, ra, 25
                  or          t0, ra, s10
                  lui         zero, 715327
                  xori        tp, s9, -1911
                  srli        t3, t3, 27
                  xori        t5, t6, 1819
                  sltu        ra, s7, s7
                  and         t3, s8, s8
                  lui         s8, 836932
                  slli        t4, t3, 23
                  srai        a1, s11, 13
                  sltu        sp, a4, a3
                  sll         sp, a0, t1
                  xor         s6, a6, t5
                  sra         a7, ra, s6
                  sub         a3, a1, t5
                  sltiu       t3, s1, 1832
                  srli        s11, s4, 22
                  ori         zero, a1, -1944
                  nop
                  lui         s3, 96908
                  srai        zero, s2, 3
                  sub         t5, t6, t4
                  and         t2, t5, s10
                  and         zero, a1, s7
                  sll         zero, t0, t2
                  srli        t4, s0, 10
                  slli        a7, a2, 28
                  auipc       sp, 136237
                  andi        s0, s4, 250
                  xori        a4, s3, -5
                  lui         s3, 214267
                  andi        t5, s10, 1144
                  or          t2, a1, a1
                  lui         s0, 303515
                  addi        t3, s7, -1672
                  sltiu       s1, a0, 852
                  andi        s0, t1, 52
                  slti        s3, t1, -1830
                  and         zero, zero, a1
                  sltiu       t5, s11, -1733
                  and         t0, s1, s6
                  or          t5, a6, s7
                  addi        a6, t6, 1797
                  or          s3, a7, t3
                  slli        s4, t6, 13
                  sltu        t1, a6, s6
                  and         s11, s11, a6
                  add         t2, s3, gp
                  lui         a0, 170981
                  addi        s8, a6, 1253
                  srl         a5, t1, s11
                  add         s5, a6, a1
                  slti        gp, s8, 1874
                  sub         s1, s9, s4
                  slt         zero, s1, s6
                  srai        s0, s8, 12
                  lui         s2, 54176
                  andi        s7, gp, 284
                  srl         s5, zero, t0
                  ori         a4, ra, -153
                  li         t5, 0x1 #start riscv_int_numeric_corner_stream_2
                  li         t4, 0x0
                  li         t1, 0x0
                  li         t3, 0x0
                  li         s0, 0x0
                  li         a0, 0x0
                  li         tp, 0x1
                  li         a3, 0x26202242
                  li         s8, 0x0
                  li         a6, 0x0
                  nop
                  add         s6, a6, s4
                  lui         t3, 187522
                  add         s1, s2, s4
                  sub         zero, a6, s8
                  lui         sp, 766930
                  sub         t5, t0, a4
                  nop
                  nop
                  add         a1, s5, s9
                  sub         a4, s1, ra
                  addi        s11, t6, 869
                  addi        s8, t6, 1846
                  nop
                  lui         ra, 615488
                  nop
                  add         s2, s9, s1
                  addi        a7, a1, 246
                  add         a4, a1, gp
                  addi        t1, t4, 1723
                  addi        s9, s8, 605 #end riscv_int_numeric_corner_stream_2
                  sub         a7, s1, zero
                  sll         t3, s8, a3
                  xori        s7, s0, 454
                  sltu        t1, s8, a4
                  and         tp, s0, t5
                  and         a7, s5, a0
                  srai        s11, a6, 26
                  slli        sp, t1, 26
                  or          zero, a5, s11
                  sra         ra, t3, t5
                  andi        t4, t5, -1763
                  or          s5, s5, s2
                  srl         s5, a7, s5
                  slt         t4, s6, gp
                  sra         s8, a4, sp
                  sltiu       a7, a4, -1252
                  slli        s4, sp, 23
                  srai        a1, a3, 8
                  and         s5, a1, zero
                  sltu        sp, s3, t6
                  ori         s4, s5, 1875
                  srli        zero, a2, 12
                  sll         t1, s6, a6
                  or          s0, a5, s7
                  auipc       s0, 170275
                  srl         zero, a5, s4
                  auipc       zero, 54424
                  sra         a4, zero, t4
                  sub         a1, s4, t1
                  sra         a3, s5, t2
                  add         s2, s4, t6
                  xor         s0, gp, s9
                  slt         s0, s4, s4
                  xori        t3, gp, 2039
                  addi        zero, s7, -1822
                  xori        s7, a7, -1921
                  sltu        s8, sp, s10
                  xori        s11, s5, 0
                  ori         t4, gp, -128
                  ori         zero, t6, -1156
                  sltiu       a1, a1, 1887
                  srli        t3, s6, 23
                  lui         zero, 40611
                  slti        s2, t5, -996
                  nop
                  sltu        t5, t4, s3
                  xor         gp, a4, s11
                  sltu        s1, s1, t2
                  andi        s2, t5, 1047
                  ori         t5, ra, 1075
                  xor         t0, a4, a4
                  sltu        tp, s0, s2
                  addi        s6, s9, -1962
                  nop
                  auipc       zero, 290195
                  slti        zero, t2, 437
                  xor         sp, zero, a5
                  andi        a3, t1, 1651
                  srai        t5, a6, 8
                  sub         gp, s0, a2
                  srl         zero, sp, a3
                  andi        s9, s6, 1773
                  sub         s4, s4, s11
                  srl         s8, a5, a2
                  ori         s1, a5, 318
                  auipc       a0, 670720
                  sltiu       a4, a3, -1083
                  slli        zero, s8, 1
                  sltu        s11, zero, a1
                  srli        a3, s11, 12
                  srai        a6, s11, 24
                  andi        gp, s0, -1863
                  slti        s1, s4, -340
                  addi        a6, a0, 1641
                  nop
                  sra         tp, s4, s11
                  slli        s8, zero, 22
                  srl         t3, s1, a4
                  slli        s5, t6, 16
                  xor         t0, t4, sp
                  sll         s0, t6, ra
                  slt         s1, t6, a0
                  add         t5, a6, t5
                  and         s1, a3, a3
                  ori         s1, s5, 1314
                  add         t3, s3, s4
                  sub         s11, tp, sp
                  srli        s11, s3, 23
                  lui         a5, 213086
                  lui         gp, 374814
                  addi        a7, s11, 1578
                  or          t1, s9, a7
                  lui         ra, 69992
                  srl         a3, a4, s11
                  srl         s6, s0, s2
                  ori         zero, zero, -1538
                  srli        s2, t1, 30
                  andi        a1, ra, 1019
                  srai        t1, t5, 14
                  or          t3, s11, a4
                  addi        s2, t5, -1850
                  xor         s1, s4, s0
                  srai        s1, sp, 1
                  lui         zero, 698087
                  and         a3, t6, a2
                  andi        s1, s1, 1118
                  ori         t0, s11, -923
                  nop
                  or          ra, s8, zero
                  sub         s6, a7, tp
                  srli        tp, t5, 27
                  xor         s2, s6, a4
                  xori        zero, gp, -361
                  sub         s8, a6, a5
                  xor         t5, t2, t1
                  sll         s6, s3, a0
                  andi        s7, s1, 1427
                  xor         s4, s4, a4
                  ori         ra, a1, -1174
                  srli        s11, s9, 15
                  nop
                  sra         s8, a1, a4
                  addi        s11, gp, -1338
                  srli        a3, t2, 26
                  sltiu       s8, s3, 598
                  sra         t5, zero, a7
                  xor         zero, gp, s5
                  andi        zero, t5, -1422
                  addi        s4, a1, -373
                  sra         s11, tp, s6
                  slti        s9, sp, -1490
                  srai        zero, s0, 11
                  srl         s9, a0, t3
                  add         a1, t6, t5
                  auipc       s8, 742962
                  srli        t5, a7, 11
                  ori         t3, s11, -862
                  auipc       t2, 258503
                  lui         sp, 343525
                  addi        zero, s10, 23
                  auipc       a0, 732101
                  slti        s0, s2, -981
                  sltiu       zero, t0, -1632
                  srli        s11, s3, 3
                  add         zero, t4, zero
                  auipc       t3, 549664
                  andi        s11, tp, 1456
                  sltu        t5, s8, t1
                  sra         s7, a6, a1
                  sll         t4, t2, a1
                  andi        t0, s1, -658
                  and         zero, a1, t0
                  or          s2, s2, s7
                  slt         t3, t5, sp
                  add         a7, a1, a5
                  xori        a5, a1, -4
                  and         s4, a1, t5
                  or          a5, s1, a1
                  srai        a0, a7, 28
                  andi        s0, gp, -1362
                  xori        tp, sp, 1458
                  ori         sp, s8, 1696
                  and         sp, s11, s0
                  addi        t0, s1, 1100
                  auipc       t5, 406388
                  addi        zero, a6, 1851
                  lui         a1, 429702
                  nop
                  sll         zero, s2, s6
                  slti        t2, t4, 626
                  la x12, test_done
                  jalr x0, x12, 0
test_done:        
                  li gp, 1
                  ecall
write_tohost:     
                  sw gp, tohost, t5

_exit:            
                  j write_tohost

instr_end:        
                  nop

.section .data
.align 6; .global tohost; tohost: .dword 0;
.align 6; .global fromhost; fromhost: .dword 0;
.section .user_stack,"aw",@progbits;
.align 2
user_stack_start:
.rept 4999
.4byte 0x0
.endr
user_stack_end:
.4byte 0x0
.align 2
kernel_instr_start:
.text
.align 2
mtvec_handler:    
                  csrrw x26, 0x340, x26
                  add x26, x31, zero
                  1: addi x26, x26, -124
                  sw x1, 4(x26)
                  sw x2, 8(x26)
                  sw x3, 12(x26)
                  sw x4, 16(x26)
                  sw x5, 20(x26)
                  sw x6, 24(x26)
                  sw x7, 28(x26)
                  sw x8, 32(x26)
                  sw x9, 36(x26)
                  sw x10, 40(x26)
                  sw x11, 44(x26)
                  sw x12, 48(x26)
                  sw x13, 52(x26)
                  sw x14, 56(x26)
                  sw x15, 60(x26)
                  sw x16, 64(x26)
                  sw x17, 68(x26)
                  sw x18, 72(x26)
                  sw x19, 76(x26)
                  sw x20, 80(x26)
                  sw x21, 84(x26)
                  sw x22, 88(x26)
                  sw x23, 92(x26)
                  sw x24, 96(x26)
                  sw x25, 100(x26)
                  sw x26, 104(x26)
                  sw x27, 108(x26)
                  sw x28, 112(x26)
                  sw x29, 116(x26)
                  sw x30, 120(x26)
                  sw x31, 124(x26)
                  csrr x30, 0x300 # MSTATUS
                  csrr x30, 0x342 # MCAUSE
                  srli x30, x30, 31
                  bne x30, x0, mmode_intr_handler

mmode_exception_handler:
                  csrr x30, 0x341 # MEPC
                  csrr x30, 0x342 # MCAUSE
                  li x14, 0xb # ECALL_MMODE
                  beq x30, x14, ecall_handler
                  li x14, 0x2 # ILLEGAL_INSTRUCTION
                  beq x30, x14, illegal_instr_handler
                  csrr x14, 0x343 # MTVAL
                  1: la x12, test_done
                  jalr x1, x12, 0

ecall_handler:    
                  la x30, _start
                  sw x0, 0(x30)
                  sw x1, 4(x30)
                  sw x2, 8(x30)
                  sw x3, 12(x30)
                  sw x4, 16(x30)
                  sw x5, 20(x30)
                  sw x6, 24(x30)
                  sw x7, 28(x30)
                  sw x8, 32(x30)
                  sw x9, 36(x30)
                  sw x10, 40(x30)
                  sw x11, 44(x30)
                  sw x12, 48(x30)
                  sw x13, 52(x30)
                  sw x14, 56(x30)
                  sw x15, 60(x30)
                  sw x16, 64(x30)
                  sw x17, 68(x30)
                  sw x18, 72(x30)
                  sw x19, 76(x30)
                  sw x20, 80(x30)
                  sw x21, 84(x30)
                  sw x22, 88(x30)
                  sw x23, 92(x30)
                  sw x24, 96(x30)
                  sw x25, 100(x30)
                  sw x26, 104(x30)
                  sw x27, 108(x30)
                  sw x28, 112(x30)
                  sw x29, 116(x30)
                  sw x30, 120(x30)
                  sw x31, 124(x30)
                  la x12, write_tohost
                  jalr x0, x12, 0

illegal_instr_handler:
                  csrr  x30, 0x341
                  addi  x30, x30, 4
                  csrw  0x341, x30
                  lw x1, 4(x26)
                  lw x2, 8(x26)
                  lw x3, 12(x26)
                  lw x4, 16(x26)
                  lw x5, 20(x26)
                  lw x6, 24(x26)
                  lw x7, 28(x26)
                  lw x8, 32(x26)
                  lw x9, 36(x26)
                  lw x10, 40(x26)
                  lw x11, 44(x26)
                  lw x12, 48(x26)
                  lw x13, 52(x26)
                  lw x14, 56(x26)
                  lw x15, 60(x26)
                  lw x16, 64(x26)
                  lw x17, 68(x26)
                  lw x18, 72(x26)
                  lw x19, 76(x26)
                  lw x20, 80(x26)
                  lw x21, 84(x26)
                  lw x22, 88(x26)
                  lw x23, 92(x26)
                  lw x24, 96(x26)
                  lw x25, 100(x26)
                  lw x26, 104(x26)
                  lw x27, 108(x26)
                  lw x28, 112(x26)
                  lw x29, 116(x26)
                  lw x30, 120(x26)
                  lw x31, 124(x26)
                  addi x26, x26, 124
                  add x31, x26, zero
                  csrrw x26, 0x340, x26
                  mret

pt_fault_handler: 

.align 2
mmode_intr_handler:
                  csrr  x30, 0x300 # MSTATUS;
                  csrr  x30, 0x304 # MIE;
                  csrr  x30, 0x344 # MIP;
                  csrrc x30, 0x344, x30 # MIP;
                  lw x1, 4(x26)
                  lw x2, 8(x26)
                  lw x3, 12(x26)
                  lw x4, 16(x26)
                  lw x5, 20(x26)
                  lw x6, 24(x26)
                  lw x7, 28(x26)
                  lw x8, 32(x26)
                  lw x9, 36(x26)
                  lw x10, 40(x26)
                  lw x11, 44(x26)
                  lw x12, 48(x26)
                  lw x13, 52(x26)
                  lw x14, 56(x26)
                  lw x15, 60(x26)
                  lw x16, 64(x26)
                  lw x17, 68(x26)
                  lw x18, 72(x26)
                  lw x19, 76(x26)
                  lw x20, 80(x26)
                  lw x21, 84(x26)
                  lw x22, 88(x26)
                  lw x23, 92(x26)
                  lw x24, 96(x26)
                  lw x25, 100(x26)
                  lw x26, 104(x26)
                  lw x27, 108(x26)
                  lw x28, 112(x26)
                  lw x29, 116(x26)
                  lw x30, 120(x26)
                  lw x31, 124(x26)
                  addi x26, x26, 124
                  add x31, x26, zero
                  csrrw x26, 0x340, x26
                  mret;

kernel_instr_end: nop
.align 2
kernel_data_start:
.section .kernel_stack,"aw",@progbits;
.align 2
kernel_stack_start:
.rept 4999
.4byte 0x0
.endr
kernel_stack_end:
.4byte 0x0
