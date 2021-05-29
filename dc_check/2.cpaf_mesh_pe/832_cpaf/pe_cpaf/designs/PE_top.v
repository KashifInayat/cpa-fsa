/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP2-1
// Date      : Mon Jan 25 13:00:35 2021
/////////////////////////////////////////////////////////////


module r4_mb8 ( mx, my, CLK, RST, sum, carry );
  input [7:0] mx;
  input [7:0] my;
  output [15:0] sum;
  output [15:0] carry;
  input CLK, RST;
  wire   carry_1, \b_e0/w1 , \b_selector[0].bs/N2 , net3582, net3592, net3600,
         net3605, net3607, net3608, net3613, net3616, net3620, net3621,
         net3625, net3626, net3628, net3635, net3637, net3642, net3645,
         net3648, net3668, net3669, net3671, net3693, net3695, net3701,
         net3705, net3706, net3707, net3708, net3709, net3716, net3723,
         net3730, net3735, net3742, net3753, net3776, net3777, net3783,
         net3785, net3799, net3802, net3803, net3813, net3818, net3829,
         net3859, net3863, net3864, net3865, net3868, net3933, net3943,
         net3828, net3787, net3782, net3734, net3703, net3623, net3733,
         net3732, net3815, net3811, net3806, net3805, net3704, net3808,
         net3804, net3595, net3594, net3786, n2, n3, n4, n5, n6, n7, n8, n9,
         n10, n11, n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23,
         n24, n25, n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37,
         n38, n39, n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51,
         n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65,
         n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n78, n79,
         n80, n81, n82, n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93,
         n94, n95, n96, n97, n98, n99, n100, n101, n102, n103, n104, n105,
         n106, n107, n108, n109, n110, n111, n112, n113, n114, n115, n116,
         n117, n118, n119, n120, n121, n122, n123, n124, n125, n126, n127,
         n128, n129, n130, n131, n132, n133, n134, n135, n136, n137, n138,
         n139, n140, n141, n142, n143, n144, n145, n146, n147, n148, n149,
         n150, n151, n152, n153, n154, n155, n156, n157, n158, n159, n160,
         n161, n162, n163, n164, n165, n166, n167, n168, n169, n170, n171;
  wire   [3:0] n;
  assign carry[1] = carry_1;
  assign n[3] = mx[7];
  assign n[2] = mx[5];
  assign n[1] = mx[3];
  assign n[0] = mx[1];
  assign \b_e0/w1  = mx[0];
  assign sum[0] = \b_selector[0].bs/N2 ;
  assign carry[0] = 1'b0;
  assign carry[2] = 1'b0;

  XOR3X1_HVT U3 ( .A1(net3628), .A2(n166), .A3(n165), .Y(sum[12]) );
  XOR3X1_HVT U4 ( .A1(n67), .A2(n66), .A3(n65), .Y(n148) );
  XOR2X1_HVT U5 ( .A1(net3811), .A2(net3592), .Y(n3) );
  XOR2X1_HVT U6 ( .A1(net3813), .A2(net3592), .Y(n13) );
  XOR3X1_HVT U7 ( .A1(n69), .A2(n28), .A3(n68), .Y(n74) );
  XOR3X1_HVT U8 ( .A1(net3742), .A2(n28), .A3(n88), .Y(n91) );
  XOR2X1_HVT U9 ( .A1(net3703), .A2(net3671), .Y(n7) );
  XOR2X1_HVT U10 ( .A1(net3777), .A2(n5), .Y(net3776) );
  INVX1_HVT U11 ( .A(net3671), .Y(n5) );
  INVX1_HVT U12 ( .A(net3786), .Y(n11) );
  OR2X2_HVT U13 ( .A1(n[0]), .A2(mx[2]), .Y(net3786) );
  OR2X2_HVT U14 ( .A1(n39), .A2(n45), .Y(net3753) );
  AO21X1_HVT U15 ( .A1(n154), .A2(net3671), .A3(n38), .Y(net3943) );
  NBUFFX2_HVT U16 ( .A(n[1]), .Y(n2) );
  XOR3X2_HVT U17 ( .A1(net3594), .A2(net3595), .A3(n3), .Y(sum[10]) );
  INVX1_HVT U18 ( .A(n30), .Y(n27) );
  OR2X2_HVT U19 ( .A1(net3669), .A2(n23), .Y(net3628) );
  INVX1_HVT U20 ( .A(n[1]), .Y(n12) );
  NBUFFX2_HVT U21 ( .A(net3802), .Y(n4) );
  OR2X1_HVT U22 ( .A1(my[1]), .A2(my[0]), .Y(n82) );
  XOR2X1_HVT U23 ( .A1(n100), .A2(n113), .Y(n85) );
  XOR2X1_HVT U24 ( .A1(n[3]), .A2(n[2]), .Y(net3592) );
  INVX2_HVT U25 ( .A(mx[6]), .Y(n30) );
  INVX0_HVT U26 ( .A(my[7]), .Y(net3787) );
  INVX0_HVT U27 ( .A(n130), .Y(n18) );
  NAND3X0_HVT U28 ( .A1(n5), .A2(net3582), .A3(n154), .Y(n156) );
  INVX0_HVT U29 ( .A(n17), .Y(n16) );
  INVX0_HVT U30 ( .A(net3669), .Y(net3864) );
  NOR2X0_HVT U31 ( .A1(net3671), .A2(sum[4]), .Y(carry[5]) );
  OA22X1_HVT U32 ( .A1(net3607), .A2(net3787), .A3(net3608), .A4(net3753), .Y(
        n158) );
  INVX0_HVT U33 ( .A(n124), .Y(n61) );
  INVX0_HVT U34 ( .A(net3753), .Y(net3863) );
  INVX0_HVT U35 ( .A(net3709), .Y(net3708) );
  NAND2X0_HVT U36 ( .A1(n99), .A2(net3582), .Y(n130) );
  INVX0_HVT U37 ( .A(n28), .Y(n163) );
  AND2X1_HVT U38 ( .A1(n[3]), .A2(n80), .Y(n81) );
  AO21X1_HVT U39 ( .A1(net3582), .A2(net3786), .A3(n6), .Y(net3783) );
  NBUFFX2_HVT U40 ( .A(net3933), .Y(net3868) );
  OR2X1_HVT U41 ( .A1(net3828), .A2(net3829), .Y(net3782) );
  AO21X1_HVT U42 ( .A1(my[1]), .A2(n32), .A3(net3671), .Y(n97) );
  XNOR2X2_HVT U43 ( .A1(net3716), .A2(n2), .Y(n28) );
  INVX0_HVT U44 ( .A(my[5]), .Y(net3623) );
  INVX0_HVT U45 ( .A(mx[6]), .Y(n94) );
  INVX1_HVT U46 ( .A(my[0]), .Y(n160) );
  NBUFFX2_HVT U47 ( .A(n[1]), .Y(n6) );
  OA21X1_HVT U48 ( .A1(net3828), .A2(net3829), .A3(n6), .Y(n17) );
  AND3X1_HVT U49 ( .A1(my[7]), .A2(\b_e0/w1 ), .A3(net3716), .Y(net3829) );
  INVX2_HVT U50 ( .A(n[0]), .Y(net3716) );
  AND2X1_HVT U51 ( .A1(net3787), .A2(net3933), .Y(net3828) );
  FADDX1_HVT U52 ( .A(net3782), .B(net3808), .CI(n7), .CO(net3594) );
  XOR2X2_HVT U53 ( .A1(n9), .A2(net3742), .Y(n107) );
  XOR2X1_HVT U54 ( .A1(n64), .A2(n9), .Y(n65) );
  XOR3X2_HVT U55 ( .A1(n8), .A2(n113), .A3(n112), .Y(n120) );
  INVX0_HVT U56 ( .A(n9), .Y(n8) );
  XNOR2X2_HVT U57 ( .A1(n161), .A2(net3671), .Y(n9) );
  XOR3X2_HVT U58 ( .A1(n130), .A2(n9), .A3(n129), .Y(n134) );
  XOR2X2_HVT U59 ( .A1(n10), .A2(net3592), .Y(n60) );
  XOR2X1_HVT U60 ( .A1(n10), .A2(net3671), .Y(n122) );
  OA22X1_HVT U61 ( .A1(net3787), .A2(net3625), .A3(net3608), .A4(net3626), .Y(
        n10) );
  NAND2X0_HVT U62 ( .A1(net3786), .A2(n2), .Y(net3732) );
  OA21X1_HVT U63 ( .A1(n12), .A2(n11), .A3(net3733), .Y(net3799) );
  AO21X1_HVT U64 ( .A1(mx[2]), .A2(n[0]), .A3(n[1]), .Y(net3733) );
  XOR3X2_HVT U65 ( .A1(n14), .A2(n13), .A3(net3811), .Y(net3806) );
  OA21X1_HVT U66 ( .A1(net3637), .A2(net3799), .A3(net3582), .Y(net3813) );
  XNOR2X2_HVT U67 ( .A1(net3716), .A2(mx[2]), .Y(net3637) );
  XOR2X2_HVT U68 ( .A1(net3705), .A2(net3777), .Y(n14) );
  OA22X1_HVT U69 ( .A1(net3608), .A2(net3625), .A3(net3623), .A4(net3943), .Y(
        net3777) );
  NAND2X0_HVT U70 ( .A1(n16), .A2(n15), .Y(net3705) );
  OR3X1_HVT U71 ( .A1(n6), .A2(net3828), .A3(net3829), .Y(n15) );
  XNOR2X2_HVT U72 ( .A1(n133), .A2(n131), .Y(sum[8]) );
  XOR3X2_HVT U73 ( .A1(n129), .A2(n18), .A3(n34), .Y(n133) );
  AO22X1_HVT U74 ( .A1(net3695), .A2(n19), .A3(net3693), .A4(net3782), .Y(
        net3642) );
  XOR3X2_HVT U75 ( .A1(n130), .A2(n28), .A3(n104), .Y(n19) );
  OR2X1_HVT U76 ( .A1(\b_e0/w1 ), .A2(net3868), .Y(n99) );
  XOR2X2_HVT U77 ( .A1(n112), .A2(n28), .Y(n35) );
  XOR2X2_HVT U78 ( .A1(n29), .A2(n101), .Y(n112) );
  AO21X1_HVT U79 ( .A1(net3600), .A2(my[6]), .A3(n77), .Y(n101) );
  AND2X1_HVT U80 ( .A1(net3803), .A2(net3933), .Y(net3600) );
  AND2X1_HVT U81 ( .A1(n21), .A2(n20), .Y(n29) );
  NAND3X0_HVT U82 ( .A1(net3733), .A2(net3732), .A3(my[4]), .Y(n20) );
  NAND2X0_HVT U83 ( .A1(net3637), .A2(my[5]), .Y(n21) );
  NAND2X0_HVT U84 ( .A1(net3783), .A2(n59), .Y(n22) );
  OA21X1_HVT U85 ( .A1(n[3]), .A2(net3708), .A3(n136), .Y(n138) );
  INVX4_HVT U86 ( .A(n[2]), .Y(net3671) );
  OA21X1_HVT U87 ( .A1(mx[4]), .A2(n[1]), .A3(n[2]), .Y(n38) );
  INVX0_HVT U88 ( .A(my[3]), .Y(net3735) );
  INVX1_HVT U89 ( .A(net3716), .Y(net3933) );
  INVX0_HVT U90 ( .A(my[1]), .Y(n78) );
  INVX0_HVT U91 ( .A(my[2]), .Y(n143) );
  INVX0_HVT U92 ( .A(n48), .Y(n64) );
  INVX0_HVT U93 ( .A(n49), .Y(n53) );
  INVX0_HVT U94 ( .A(net3782), .Y(net3620) );
  INVX0_HVT U95 ( .A(my[6]), .Y(net3608) );
  INVX1_HVT U96 ( .A(n[3]), .Y(net3605) );
  INVX0_HVT U97 ( .A(net3818), .Y(net3815) );
  INVX0_HVT U98 ( .A(my[4]), .Y(net3734) );
  INVX0_HVT U99 ( .A(\b_e0/w1 ), .Y(net3803) );
  INVX0_HVT U100 ( .A(net3600), .Y(net3635) );
  INVX0_HVT U101 ( .A(n94), .Y(n32) );
  XNOR2X1_HVT U102 ( .A1(n29), .A2(n12), .Y(n102) );
  XOR2X1_HVT U103 ( .A1(n67), .A2(n12), .Y(n56) );
  INVX0_HVT U104 ( .A(n79), .Y(n46) );
  XOR2X1_HVT U105 ( .A1(n88), .A2(n12), .Y(n89) );
  NAND2X0_HVT U106 ( .A1(n25), .A2(n23), .Y(net3811) );
  XOR2X1_HVT U107 ( .A1(n158), .A2(net3605), .Y(n169) );
  XOR2X1_HVT U108 ( .A1(net3613), .A2(net3605), .Y(n155) );
  NBUFFX2_HVT U109 ( .A(my[7]), .Y(net3582) );
  INVX0_HVT U110 ( .A(\b_selector[0].bs/N2 ), .Y(n105) );
  INVX0_HVT U111 ( .A(net3628), .Y(net3616) );
  INVX0_HVT U112 ( .A(n166), .Y(n153) );
  XOR3X1_HVT U113 ( .A1(n164), .A2(n163), .A3(n162), .Y(sum[3]) );
  XOR2X1_HVT U114 ( .A1(n74), .A2(n63), .Y(sum[4]) );
  INVX0_HVT U115 ( .A(n72), .Y(n63) );
  XOR2X1_HVT U116 ( .A1(n148), .A2(n147), .Y(sum[5]) );
  XOR3X1_HVT U117 ( .A1(n169), .A2(n168), .A3(n167), .Y(sum[13]) );
  INVX0_HVT U118 ( .A(carry[15]), .Y(sum[14]) );
  NAND2X0_HVT U119 ( .A1(net3933), .A2(mx[2]), .Y(net3785) );
  AO22X1_HVT U120 ( .A1(net3804), .A2(net3805), .A3(net3806), .A4(net3594), 
        .Y(carry[11]) );
  XOR2X2_HVT U121 ( .A1(net3704), .A2(n6), .Y(net3808) );
  XOR3X2_HVT U122 ( .A1(net3777), .A2(net3813), .A3(net3705), .Y(net3595) );
  XNOR2X2_HVT U123 ( .A1(net3595), .A2(net3671), .Y(net3804) );
  XNOR2X2_HVT U124 ( .A1(net3621), .A2(net3782), .Y(net3668) );
  XOR3X2_HVT U125 ( .A1(net3703), .A2(net3704), .A3(net3705), .Y(net3645) );
  AO22X1_HVT U126 ( .A1(my[7]), .A2(net3637), .A3(net3799), .A4(my[6]), .Y(
        net3704) );
  NAND2X0_HVT U127 ( .A1(net3811), .A2(n[3]), .Y(n24) );
  NAND2X0_HVT U128 ( .A1(n26), .A2(net3815), .Y(n25) );
  OA21X1_HVT U129 ( .A1(n[3]), .A2(net3815), .A3(n24), .Y(net3805) );
  INVX0_HVT U130 ( .A(net3707), .Y(n26) );
  AO21X1_HVT U131 ( .A1(net3818), .A2(net3707), .A3(net3864), .Y(net3865) );
  NAND2X0_HVT U132 ( .A1(net3707), .A2(net3818), .Y(n23) );
  AO21X1_HVT U133 ( .A1(net3708), .A2(net3706), .A3(net3707), .Y(net3648) );
  NAND3X0_HVT U134 ( .A1(net3732), .A2(my[5]), .A3(net3733), .Y(net3730) );
  OA22X1_HVT U135 ( .A1(net3623), .A2(net3625), .A3(net3734), .A4(net3626), 
        .Y(net3703) );
  OA22X1_HVT U136 ( .A1(net3625), .A2(net3734), .A3(net3735), .A4(net3626), 
        .Y(net3701) );
  OA22X1_HVT U137 ( .A1(net3735), .A2(net3753), .A3(net3734), .A4(net3607), 
        .Y(net3818) );
  OA22X1_HVT U138 ( .A1(net3803), .A2(net3608), .A3(net3623), .A4(net3635), 
        .Y(net3742) );
  OA22X1_HVT U139 ( .A1(net3608), .A2(net3607), .A3(net3623), .A4(net3753), 
        .Y(net3613) );
  INVX0_HVT U140 ( .A(net3829), .Y(net3859) );
  XOR2X1_HVT U141 ( .A1(n88), .A2(n86), .Y(n108) );
  OA22X1_HVT U142 ( .A1(n[3]), .A2(net3669), .A3(net3668), .A4(n122), .Y(n123)
         );
  XNOR2X1_HVT U143 ( .A1(n104), .A2(n6), .Y(net3693) );
  OA22X1_HVT U144 ( .A1(net3625), .A2(net3735), .A3(n143), .A4(net3626), .Y(
        n113) );
  OA22X1_HVT U145 ( .A1(n78), .A2(net3625), .A3(n160), .A4(net3943), .Y(n66)
         );
  OA22X1_HVT U146 ( .A1(n143), .A2(net3625), .A3(n78), .A4(net3943), .Y(n86)
         );
  OR2X1_HVT U147 ( .A1(net3607), .A2(n160), .Y(n79) );
  INVX2_HVT U148 ( .A(net3802), .Y(net3607) );
  XNOR2X1_HVT U149 ( .A1(net3716), .A2(n[1]), .Y(n161) );
  XNOR2X2_HVT U150 ( .A1(n[2]), .A2(n30), .Y(net3802) );
  AND3X1_HVT U151 ( .A1(n31), .A2(n[3]), .A3(n80), .Y(n41) );
  NAND2X0_HVT U152 ( .A1(my[0]), .A2(n94), .Y(n80) );
  NAND2X0_HVT U153 ( .A1(net3671), .A2(my[1]), .Y(n31) );
  XNOR2X2_HVT U154 ( .A1(net3701), .A2(n104), .Y(n129) );
  AND2X1_HVT U155 ( .A1(n93), .A2(net3730), .Y(n104) );
  OR3X1_HVT U156 ( .A1(my[2]), .A2(my[1]), .A3(my[0]), .Y(n40) );
  XOR2X1_HVT U157 ( .A1(net3645), .A2(n5), .Y(n137) );
  OA21X1_HVT U158 ( .A1(n5), .A2(n32), .A3(net3605), .Y(n170) );
  AO21X1_HVT U159 ( .A1(n32), .A2(n5), .A3(net3787), .Y(n171) );
  XOR2X2_HVT U160 ( .A1(n127), .A2(n100), .Y(n34) );
  XOR2X2_HVT U161 ( .A1(n28), .A2(net3592), .Y(n100) );
  AND2X1_HVT U162 ( .A1(n33), .A2(net3706), .Y(n127) );
  NAND2X0_HVT U163 ( .A1(n98), .A2(n128), .Y(n33) );
  OA22X1_HVT U164 ( .A1(n103), .A2(n102), .A3(n36), .A4(n35), .Y(n131) );
  XOR2X1_HVT U165 ( .A1(n113), .A2(n5), .Y(n36) );
  NAND2X0_HVT U166 ( .A1(net3628), .A2(net3865), .Y(n121) );
  AO22X1_HVT U167 ( .A1(my[5]), .A2(n4), .A3(net3863), .A4(my[4]), .Y(net3669)
         );
  AND2X1_HVT U168 ( .A1(net3723), .A2(net3709), .Y(net3707) );
  OAI22X1_HVT U169 ( .A1(n37), .A2(n124), .A3(n125), .A4(n126), .Y(carry[12])
         );
  XNOR2X2_HVT U170 ( .A1(n37), .A2(n61), .Y(sum[11]) );
  XOR3X2_HVT U171 ( .A1(n60), .A2(net3668), .A3(n121), .Y(n37) );
  OA21X1_HVT U172 ( .A1(net3716), .A2(n101), .A3(net3859), .Y(n103) );
  AO21X1_HVT U173 ( .A1(n154), .A2(net3671), .A3(n38), .Y(net3626) );
  NAND2X0_HVT U174 ( .A1(n[1]), .A2(mx[4]), .Y(n154) );
  OA22X1_HVT U175 ( .A1(n45), .A2(n44), .A3(net3735), .A4(net3607), .Y(net3709) );
  XNOR2X2_HVT U176 ( .A1(mx[4]), .A2(n[1]), .Y(net3625) );
  OR2X1_HVT U177 ( .A1(n27), .A2(n[3]), .Y(n43) );
  INVX0_HVT U178 ( .A(n43), .Y(n39) );
  MUX21X1_HVT U179 ( .A1(n27), .A2(n[3]), .S0(n[2]), .Y(n45) );
  NAND2X0_HVT U180 ( .A1(n40), .A2(net3802), .Y(n42) );
  AND2X1_HVT U181 ( .A1(n42), .A2(n41), .Y(net3723) );
  NAND2X0_HVT U182 ( .A1(n43), .A2(my[2]), .Y(n44) );
  XNOR2X2_HVT U183 ( .A1(n107), .A2(n46), .Y(n58) );
  AO22X1_HVT U184 ( .A1(my[4]), .A2(net3637), .A3(net3799), .A4(my[3]), .Y(n88) );
  AO22X1_HVT U185 ( .A1(\b_e0/w1 ), .A2(my[5]), .A3(net3600), .A4(my[4]), .Y(
        n48) );
  MUX21X1_HVT U186 ( .A1(my[5]), .A2(n64), .S0(net3868), .Y(n47) );
  NAND2X0_HVT U187 ( .A1(n47), .A2(n99), .Y(n57) );
  NAND2X0_HVT U188 ( .A1(my[2]), .A2(net3799), .Y(n51) );
  NAND2X0_HVT U189 ( .A1(net3637), .A2(my[3]), .Y(n50) );
  NAND2X0_HVT U190 ( .A1(n51), .A2(n50), .Y(n67) );
  XOR2X1_HVT U191 ( .A1(n66), .A2(n5), .Y(n55) );
  XOR2X1_HVT U192 ( .A1(n48), .A2(n28), .Y(n49) );
  AO21X1_HVT U193 ( .A1(n51), .A2(n50), .A3(n49), .Y(n52) );
  OA21X1_HVT U194 ( .A1(n53), .A2(n67), .A3(n52), .Y(n54) );
  OA22X1_HVT U195 ( .A1(n57), .A2(n56), .A3(n55), .A4(n54), .Y(n106) );
  XOR3X2_HVT U196 ( .A1(n58), .A2(n108), .A3(n106), .Y(sum[6]) );
  NAND3X0_HVT U197 ( .A1(net3582), .A2(net3785), .A3(n6), .Y(n59) );
  NAND2X0_HVT U198 ( .A1(net3783), .A2(n59), .Y(net3621) );
  FADDX1_HVT U199 ( .A(net3620), .B(net3776), .CI(n22), .CO(n124) );
  XOR2X1_HVT U200 ( .A1(my[2]), .A2(net3868), .Y(n62) );
  AO22X1_HVT U201 ( .A1(net3600), .A2(n78), .A3(n62), .A4(\b_e0/w1 ), .Y(n141)
         );
  AND2X1_HVT U202 ( .A1(net3637), .A2(my[0]), .Y(n140) );
  XOR2X1_HVT U203 ( .A1(n141), .A2(n140), .Y(sum[2]) );
  AND2X1_HVT U204 ( .A1(\b_e0/w1 ), .A2(my[4]), .Y(n71) );
  AO21X1_HVT U205 ( .A1(net3600), .A2(my[3]), .A3(n71), .Y(n69) );
  AO22X1_HVT U206 ( .A1(my[2]), .A2(net3637), .A3(net3799), .A4(my[1]), .Y(n68) );
  OR2X1_HVT U207 ( .A1(n160), .A2(net3625), .Y(n72) );
  XOR2X1_HVT U208 ( .A1(n6), .A2(n68), .Y(n76) );
  INVX0_HVT U209 ( .A(n69), .Y(n70) );
  MUX21X1_HVT U210 ( .A1(n71), .A2(n70), .S0(net3868), .Y(n75) );
  XOR2X1_HVT U211 ( .A1(n72), .A2(net3671), .Y(n73) );
  AO22X1_HVT U212 ( .A1(n76), .A2(n75), .A3(n74), .A4(n73), .Y(n147) );
  AND2X1_HVT U213 ( .A1(\b_e0/w1 ), .A2(net3582), .Y(n77) );
  OA22X1_HVT U214 ( .A1(n160), .A2(net3753), .A3(n78), .A4(net3607), .Y(n116)
         );
  AND2X1_HVT U215 ( .A1(n79), .A2(n[3]), .Y(n84) );
  NAND2X0_HVT U216 ( .A1(n4), .A2(n82), .Y(n83) );
  NAND2X0_HVT U217 ( .A1(n81), .A2(n83), .Y(n98) );
  OA21X1_HVT U218 ( .A1(n116), .A2(n84), .A3(n98), .Y(n114) );
  XOR3X2_HVT U219 ( .A1(n112), .A2(n114), .A3(n85), .Y(n117) );
  XOR2X1_HVT U220 ( .A1(n86), .A2(n5), .Y(n92) );
  MUX21X1_HVT U221 ( .A1(my[6]), .A2(net3742), .S0(net3868), .Y(n87) );
  NAND2X0_HVT U222 ( .A1(n87), .A2(n99), .Y(n90) );
  OA22X1_HVT U223 ( .A1(n92), .A2(n91), .A3(n90), .A4(n89), .Y(n118) );
  XOR2X2_HVT U224 ( .A1(n117), .A2(n118), .Y(sum[7]) );
  NAND2X0_HVT U225 ( .A1(net3637), .A2(my[6]), .Y(n93) );
  NAND3X0_HVT U226 ( .A1(n94), .A2(my[1]), .A3(n[3]), .Y(n95) );
  NAND2X0_HVT U227 ( .A1(n95), .A2(net3671), .Y(n96) );
  AO22X1_HVT U228 ( .A1(n97), .A2(n96), .A3(n4), .A4(my[2]), .Y(n128) );
  INVX0_HVT U229 ( .A(net3723), .Y(net3706) );
  XOR3X2_HVT U230 ( .A1(net3648), .A2(net3592), .A3(net3645), .Y(n139) );
  XOR2X1_HVT U231 ( .A1(net3701), .A2(net3671), .Y(net3695) );
  XOR2X2_HVT U232 ( .A1(n139), .A2(net3642), .Y(sum[9]) );
  AND2X1_HVT U233 ( .A1(\b_e0/w1 ), .A2(my[0]), .Y(\b_selector[0].bs/N2 ) );
  AND2X1_HVT U234 ( .A1(net3868), .A2(n105), .Y(carry_1) );
  INVX0_HVT U235 ( .A(n106), .Y(n111) );
  NAND2X0_HVT U236 ( .A1(n106), .A2(n79), .Y(n110) );
  XOR2X1_HVT U237 ( .A1(n107), .A2(n108), .Y(n109) );
  AO22X1_HVT U238 ( .A1(n111), .A2(n46), .A3(n110), .A4(n109), .Y(carry[7]) );
  INVX0_HVT U239 ( .A(n114), .Y(n115) );
  MUX21X1_HVT U240 ( .A1(n116), .A2(n115), .S0(n[3]), .Y(n119) );
  OAI22X1_HVT U241 ( .A1(n120), .A2(n119), .A3(n118), .A4(n117), .Y(carry[8])
         );
  AND2X1_HVT U242 ( .A1(n[3]), .A2(n121), .Y(n126) );
  NAND2X0_HVT U243 ( .A1(n122), .A2(net3668), .Y(n152) );
  NAND2X0_HVT U244 ( .A1(n123), .A2(n152), .Y(n125) );
  MUX21X1_HVT U245 ( .A1(n128), .A2(n127), .S0(n[3]), .Y(n135) );
  INVX0_HVT U246 ( .A(n131), .Y(n132) );
  AO22X1_HVT U247 ( .A1(n135), .A2(n134), .A3(n133), .A4(n132), .Y(carry[9])
         );
  NAND2X0_HVT U248 ( .A1(net3648), .A2(n[3]), .Y(n136) );
  AO22X1_HVT U249 ( .A1(net3642), .A2(n139), .A3(n138), .A4(n137), .Y(
        carry[10]) );
  MUX21X1_HVT U250 ( .A1(n6), .A2(n141), .S0(n140), .Y(carry[3]) );
  AO22X1_HVT U251 ( .A1(my[1]), .A2(net3637), .A3(net3799), .A4(my[0]), .Y(
        n162) );
  XOR2X1_HVT U252 ( .A1(n6), .A2(n162), .Y(n146) );
  NAND2X0_HVT U253 ( .A1(\b_e0/w1 ), .A2(my[3]), .Y(n142) );
  INVX0_HVT U254 ( .A(n142), .Y(n144) );
  OA21X1_HVT U255 ( .A1(n143), .A2(net3635), .A3(n142), .Y(n164) );
  MUX21X1_HVT U256 ( .A1(n144), .A2(n164), .S0(net3868), .Y(n145) );
  AND2X1_HVT U257 ( .A1(n146), .A2(n145), .Y(carry[4]) );
  AND2X1_HVT U258 ( .A1(n148), .A2(n147), .Y(carry[6]) );
  NAND2X0_HVT U259 ( .A1(net3625), .A2(net3943), .Y(n149) );
  NAND2X0_HVT U260 ( .A1(n149), .A2(net3582), .Y(n150) );
  XOR3X2_HVT U261 ( .A1(n150), .A2(net3592), .A3(net3613), .Y(n166) );
  NAND2X0_HVT U262 ( .A1(net3620), .A2(net3621), .Y(n151) );
  NAND2X0_HVT U263 ( .A1(n152), .A2(n151), .Y(n165) );
  FADDX1_HVT U264 ( .A(net3616), .B(n153), .CI(n165), .CO(carry[13]) );
  AO221X1_HVT U265 ( .A1(net3582), .A2(mx[4]), .A3(n6), .A4(net3582), .A5(n5), 
        .Y(n157) );
  AO21X1_HVT U266 ( .A1(n157), .A2(n156), .A3(n155), .Y(n167) );
  NAND2X0_HVT U267 ( .A1(n157), .A2(n156), .Y(n168) );
  AO21X1_HVT U268 ( .A1(n167), .A2(n168), .A3(n169), .Y(carry[14]) );
  AO22X1_HVT U269 ( .A1(n170), .A2(net3582), .A3(n[3]), .A4(n171), .Y(
        carry[15]) );
  XOR2X1_HVT U270 ( .A1(my[1]), .A2(net3868), .Y(n159) );
  AO22X1_HVT U271 ( .A1(net3600), .A2(n160), .A3(n159), .A4(\b_e0/w1 ), .Y(
        sum[1]) );
  OAI22X1_HVT U272 ( .A1(n[3]), .A2(net3582), .A3(n171), .A4(n170), .Y(sum[15]) );
endmodule


module SNPS_CLOCK_GATE_HIGH_PE_64 ( CLK, EN, ENCLK, TE );
  input CLK, EN, TE;
  output ENCLK;


  CGLPPRX2_HVT latch ( .CLK(CLK), .EN(EN), .SE(TE), .GCLK(ENCLK) );
endmodule


module PE_64 ( clock, RST, io_in_a, io_in_b, io_in_d, io_out_a, io_out_b, 
        io_out_c, io_in_control_shift, io_out_control_shift, io_in_valid, 
        io_out_valid, io_out_control_propagate, io_in_control_propagate );
  input [7:0] io_in_a;
  input [18:0] io_in_b;
  input [70:0] io_in_d;
  output [7:0] io_out_a;
  output [18:0] io_out_b;
  output [70:0] io_out_c;
  input [4:0] io_in_control_shift;
  output [4:0] io_out_control_shift;
  input clock, RST, io_in_valid, io_in_control_propagate;
  output io_out_valid, io_out_control_propagate;
  wire   io_in_valid, N3, N4, N5, N6, N7, N8, N9, N10, N11, N12, N13, N14, N15,
         N16, N17, N18, N19, N20, N21, N22, N23, N24, N25, N26, N27, N28, N29,
         N30, N31, N32, N33, N34, N35, N36, N37, N38, N39, N40, N41, N42, N43,
         N44, N45, N46, N47, N48, N49, N50, N51, N52, N53, N54, N55, N56, N57,
         N58, N59, N60, N61, N62, N63, N64, N65, N66, N67, N68, N69, N70, N71,
         N72, N73, N74, N75, N76, N77, N78, N79, N80, N81, N82, N83, N84, N85,
         N86, N87, N88, N89, N90, N91, N92, N93, N94, N95, N96, N97, N98, N99,
         N100, N101, N102, N103, N104, N105, N106, N107, N108, N109, N110,
         N111, N112, N113, N114, N115, N116, N117, N118, N119, N120, N121,
         N122, N123, N124, N125, N126, N127, N128, N129, N130, N131, N132,
         N133, N134, N135, N136, N137, N138, N139, N140, N141, N142, N143,
         N144, net506, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11, n12, n13, n14,
         n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25, n26, n27, n28,
         n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39, n40, n41, n42,
         n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53, n54, n55, n56,
         n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67, n68, n69, n70,
         n71, n72, n73, n74, n75, n76, n77, n78, n79, n80, n81, n82, n83, n84,
         n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96, n97, n98,
         n99, n100, n101, n102, n103, n104, n105, n106, n107, n108, n109, n110,
         n111, n112, n113, n114, n115, n116, n117, n118, n119, n120, n121,
         n122, n123, n124, n125, n126, n127, n128, n129, n130, n131, n132,
         n133, n134, n135, n136, n137, n138, n139, n140, n141, n142, n143,
         n144, n145, n146, n147, n148, n149, n150, n151, n152, n153, n154,
         n155, n156, n157, n158, n159, n160, n161, n162, n163, n164, n165,
         n166, n167, n168, n169, n170, n171, n172, n173, n174, n175, n176,
         n177, n178, n179, n180, n181, n182, n183, n184, n185, n186, n187,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n199, n200, n201, n202, n203, n204, n205, n206, n207, n208, n209,
         n210, n211, n212, n213, n214, n215, n216, n217, n218, n219, n220,
         n221, n222, n223, n224, n225, n226, n227, n228, n229, n230, n231,
         n232, n233, n234, n235, n236, n237, n238, n239, n240, n241, n242,
         n243, n244, n245, n246, n247, n248, n249, n250, n251, n252, n253,
         n254, n255, n256, n257, n258, n259, n260, n261, n262, n263, n264,
         n265, n266, n268;
  wire   [15:0] _T_38_s;
  wire   [15:0] _T_38_c;
  wire   [31:0] c1_s;
  wire   [38:0] c1_c;
  wire   [31:0] c2_s;
  wire   [38:0] c2_c;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign io_out_a[7] = io_in_a[7];
  assign io_out_a[6] = io_in_a[6];
  assign io_out_a[5] = io_in_a[5];
  assign io_out_a[4] = io_in_a[4];
  assign io_out_a[3] = io_in_a[3];
  assign io_out_a[2] = io_in_a[2];
  assign io_out_a[1] = io_in_a[1];
  assign io_out_a[0] = io_in_a[0];
  assign io_out_b[18] = io_in_b[18];
  assign io_out_b[17] = io_in_b[17];
  assign io_out_b[16] = io_in_b[16];
  assign io_out_b[15] = io_in_b[15];
  assign io_out_b[14] = io_in_b[14];
  assign io_out_b[13] = io_in_b[13];
  assign io_out_b[12] = io_in_b[12];
  assign io_out_b[11] = io_in_b[11];
  assign io_out_b[10] = io_in_b[10];
  assign io_out_b[9] = io_in_b[9];
  assign io_out_b[8] = io_in_b[8];
  assign io_out_b[7] = io_in_b[7];
  assign io_out_b[6] = io_in_b[6];
  assign io_out_b[5] = io_in_b[5];
  assign io_out_b[4] = io_in_b[4];
  assign io_out_b[3] = io_in_b[3];
  assign io_out_b[2] = io_in_b[2];
  assign io_out_b[1] = io_in_b[1];
  assign io_out_b[0] = io_in_b[0];
  assign io_out_control_shift[4] = io_in_control_shift[4];
  assign io_out_control_shift[3] = io_in_control_shift[3];
  assign io_out_control_shift[2] = io_in_control_shift[2];
  assign io_out_control_shift[1] = io_in_control_shift[1];
  assign io_out_control_shift[0] = io_in_control_shift[0];
  assign io_out_valid = io_in_valid;

  r4_mb8 MULTuut ( .mx(io_in_a), .my(io_in_b[7:0]), .CLK(clock), .RST(1'b0), 
        .sum({_T_38_s[15:12], n268, _T_38_s[10:0]}), .carry({_T_38_c[15:3], 
        SYNOPSYS_UNCONNECTED__0, _T_38_c[1], SYNOPSYS_UNCONNECTED__1}) );
  SNPS_CLOCK_GATE_HIGH_PE_64 clk_gate_c1_s_reg ( .CLK(clock), .EN(io_in_valid), 
        .ENCLK(net506), .TE(1'b0) );
  DFFX1_HVT \c2_c_reg[38]  ( .D(N144), .CLK(net506), .Q(c2_c[38]) );
  DFFX1_HVT \c2_c_reg[37]  ( .D(N143), .CLK(net506), .Q(c2_c[37]) );
  DFFX1_HVT \c2_c_reg[36]  ( .D(N142), .CLK(net506), .Q(c2_c[36]) );
  DFFX1_HVT \c2_c_reg[35]  ( .D(N141), .CLK(net506), .Q(c2_c[35]) );
  DFFX1_HVT \c2_c_reg[34]  ( .D(N140), .CLK(net506), .Q(c2_c[34]) );
  DFFX1_HVT \c2_c_reg[33]  ( .D(N139), .CLK(net506), .Q(c2_c[33]) );
  DFFX1_HVT \c2_c_reg[32]  ( .D(N138), .CLK(net506), .Q(c2_c[32]) );
  DFFX1_HVT \c2_c_reg[1]  ( .D(N107), .CLK(net506), .Q(c2_c[1]) );
  DFFX1_HVT \c2_c_reg[0]  ( .D(N106), .CLK(net506), .Q(c2_c[0]) );
  DFFX1_HVT \c1_c_reg[38]  ( .D(N73), .CLK(net506), .Q(c1_c[38]) );
  DFFX1_HVT \c1_c_reg[37]  ( .D(N72), .CLK(net506), .Q(c1_c[37]) );
  DFFX1_HVT \c1_c_reg[36]  ( .D(N71), .CLK(net506), .Q(c1_c[36]) );
  DFFX1_HVT \c1_c_reg[35]  ( .D(N70), .CLK(net506), .Q(c1_c[35]) );
  DFFX1_HVT \c1_c_reg[34]  ( .D(N69), .CLK(net506), .Q(c1_c[34]) );
  DFFX1_HVT \c1_c_reg[33]  ( .D(N68), .CLK(net506), .Q(c1_c[33]) );
  DFFX1_HVT \c1_c_reg[32]  ( .D(N67), .CLK(net506), .Q(c1_c[32]) );
  DFFX1_HVT \c1_c_reg[1]  ( .D(N36), .CLK(net506), .Q(c1_c[1]) );
  DFFX1_HVT \c1_c_reg[0]  ( .D(N35), .CLK(net506), .Q(c1_c[0]) );
  DFFX1_HVT \c1_s_reg[0]  ( .D(N3), .CLK(net506), .Q(c1_s[0]) );
  DFFX1_HVT \c2_s_reg[0]  ( .D(N74), .CLK(net506), .Q(c2_s[0]) );
  DFFX1_HVT \c1_s_reg[1]  ( .D(N4), .CLK(net506), .Q(c1_s[1]) );
  DFFX1_HVT \c2_s_reg[1]  ( .D(N75), .CLK(net506), .Q(c2_s[1]) );
  DFFX1_HVT \c1_c_reg[2]  ( .D(N37), .CLK(net506), .Q(c1_c[2]) );
  DFFX1_HVT \c2_c_reg[2]  ( .D(N108), .CLK(net506), .Q(c2_c[2]) );
  DFFX1_HVT \c1_s_reg[2]  ( .D(N5), .CLK(net506), .Q(c1_s[2]) );
  DFFX1_HVT \c2_s_reg[2]  ( .D(N76), .CLK(net506), .Q(c2_s[2]) );
  DFFX1_HVT \c1_c_reg[3]  ( .D(N38), .CLK(net506), .Q(c1_c[3]) );
  DFFX1_HVT \c2_c_reg[3]  ( .D(N109), .CLK(net506), .Q(c2_c[3]) );
  DFFX1_HVT \c1_s_reg[3]  ( .D(N6), .CLK(net506), .Q(c1_s[3]) );
  DFFX1_HVT \c2_s_reg[3]  ( .D(N77), .CLK(net506), .Q(c2_s[3]) );
  DFFX1_HVT \c1_c_reg[4]  ( .D(N39), .CLK(net506), .Q(c1_c[4]) );
  DFFX1_HVT \c2_c_reg[4]  ( .D(N110), .CLK(net506), .Q(c2_c[4]) );
  DFFX1_HVT \c1_s_reg[4]  ( .D(N7), .CLK(net506), .Q(c1_s[4]) );
  DFFX1_HVT \c2_s_reg[4]  ( .D(N78), .CLK(net506), .Q(c2_s[4]) );
  DFFX1_HVT \c1_c_reg[5]  ( .D(N40), .CLK(net506), .Q(c1_c[5]) );
  DFFX1_HVT \c2_c_reg[5]  ( .D(N111), .CLK(net506), .Q(c2_c[5]) );
  DFFX1_HVT \c1_s_reg[5]  ( .D(N8), .CLK(net506), .Q(c1_s[5]) );
  DFFX1_HVT \c2_s_reg[5]  ( .D(N79), .CLK(net506), .Q(c2_s[5]) );
  DFFX1_HVT \c1_c_reg[6]  ( .D(N41), .CLK(net506), .Q(c1_c[6]) );
  DFFX1_HVT \c2_c_reg[6]  ( .D(N112), .CLK(net506), .Q(c2_c[6]) );
  DFFX1_HVT \c1_s_reg[6]  ( .D(N9), .CLK(net506), .Q(c1_s[6]) );
  DFFX1_HVT \c2_s_reg[6]  ( .D(N80), .CLK(net506), .Q(c2_s[6]) );
  DFFX1_HVT \c1_c_reg[7]  ( .D(N42), .CLK(net506), .Q(c1_c[7]) );
  DFFX1_HVT \c2_c_reg[7]  ( .D(N113), .CLK(net506), .Q(c2_c[7]) );
  DFFX1_HVT \c1_s_reg[7]  ( .D(N10), .CLK(net506), .Q(c1_s[7]) );
  DFFX1_HVT \c2_s_reg[7]  ( .D(N81), .CLK(net506), .Q(c2_s[7]) );
  DFFX1_HVT \c1_c_reg[8]  ( .D(N43), .CLK(net506), .Q(c1_c[8]) );
  DFFX1_HVT \c2_c_reg[8]  ( .D(N114), .CLK(net506), .Q(c2_c[8]) );
  DFFX1_HVT \c1_s_reg[8]  ( .D(N11), .CLK(net506), .Q(c1_s[8]) );
  DFFX1_HVT \c2_s_reg[8]  ( .D(N82), .CLK(net506), .Q(c2_s[8]) );
  DFFX1_HVT \c1_c_reg[9]  ( .D(N44), .CLK(net506), .Q(c1_c[9]) );
  DFFX1_HVT \c2_c_reg[9]  ( .D(N115), .CLK(net506), .Q(c2_c[9]) );
  DFFX1_HVT \c1_s_reg[9]  ( .D(N12), .CLK(net506), .Q(c1_s[9]) );
  DFFX1_HVT \c2_s_reg[9]  ( .D(N83), .CLK(net506), .Q(c2_s[9]) );
  DFFX1_HVT \c1_c_reg[10]  ( .D(N45), .CLK(net506), .Q(c1_c[10]) );
  DFFX1_HVT \c2_c_reg[10]  ( .D(N116), .CLK(net506), .Q(c2_c[10]) );
  DFFX1_HVT \c1_s_reg[10]  ( .D(N13), .CLK(net506), .Q(c1_s[10]) );
  DFFX1_HVT \c2_s_reg[10]  ( .D(N84), .CLK(net506), .Q(c2_s[10]) );
  DFFX1_HVT \c1_c_reg[11]  ( .D(N46), .CLK(net506), .Q(c1_c[11]) );
  DFFX1_HVT \c2_c_reg[11]  ( .D(N117), .CLK(net506), .Q(c2_c[11]) );
  DFFX1_HVT \c1_s_reg[11]  ( .D(N14), .CLK(net506), .Q(c1_s[11]) );
  DFFX1_HVT \c2_s_reg[11]  ( .D(N85), .CLK(net506), .Q(c2_s[11]) );
  DFFX1_HVT \c1_c_reg[12]  ( .D(N47), .CLK(net506), .Q(c1_c[12]) );
  DFFX1_HVT \c2_c_reg[12]  ( .D(N118), .CLK(net506), .Q(c2_c[12]) );
  DFFX1_HVT \c1_s_reg[12]  ( .D(N15), .CLK(net506), .Q(c1_s[12]) );
  DFFX1_HVT \c2_s_reg[12]  ( .D(N86), .CLK(net506), .Q(c2_s[12]) );
  DFFX1_HVT \c1_c_reg[13]  ( .D(N48), .CLK(net506), .Q(c1_c[13]) );
  DFFX1_HVT \c2_c_reg[13]  ( .D(N119), .CLK(net506), .Q(c2_c[13]) );
  DFFX1_HVT \c1_s_reg[13]  ( .D(N16), .CLK(net506), .Q(c1_s[13]) );
  DFFX1_HVT \c2_s_reg[13]  ( .D(N87), .CLK(net506), .Q(c2_s[13]) );
  DFFX1_HVT \c1_c_reg[14]  ( .D(N49), .CLK(net506), .Q(c1_c[14]) );
  DFFX1_HVT \c2_c_reg[14]  ( .D(N120), .CLK(net506), .Q(c2_c[14]) );
  DFFX1_HVT \c1_s_reg[14]  ( .D(N17), .CLK(net506), .Q(c1_s[14]) );
  DFFX1_HVT \c2_s_reg[14]  ( .D(N88), .CLK(net506), .Q(c2_s[14]) );
  DFFX1_HVT \c1_c_reg[15]  ( .D(N50), .CLK(net506), .Q(c1_c[15]) );
  DFFX1_HVT \c2_c_reg[15]  ( .D(N121), .CLK(net506), .Q(c2_c[15]) );
  DFFX1_HVT \c1_s_reg[15]  ( .D(N18), .CLK(net506), .Q(c1_s[15]) );
  DFFX1_HVT \c2_s_reg[15]  ( .D(N89), .CLK(net506), .Q(c2_s[15]) );
  DFFX1_HVT \c1_c_reg[16]  ( .D(N51), .CLK(net506), .Q(c1_c[16]) );
  DFFX1_HVT \c2_c_reg[16]  ( .D(N122), .CLK(net506), .Q(c2_c[16]) );
  DFFX1_HVT \c1_s_reg[16]  ( .D(N19), .CLK(net506), .Q(c1_s[16]) );
  DFFX1_HVT \c2_s_reg[16]  ( .D(N90), .CLK(net506), .Q(c2_s[16]) );
  DFFX1_HVT \c1_c_reg[17]  ( .D(N52), .CLK(net506), .Q(c1_c[17]) );
  DFFX1_HVT \c2_c_reg[17]  ( .D(N123), .CLK(net506), .Q(c2_c[17]) );
  DFFX1_HVT \c1_s_reg[17]  ( .D(N20), .CLK(net506), .Q(c1_s[17]) );
  DFFX1_HVT \c2_s_reg[17]  ( .D(N91), .CLK(net506), .Q(c2_s[17]) );
  DFFX1_HVT \c1_c_reg[18]  ( .D(N53), .CLK(net506), .Q(c1_c[18]) );
  DFFX1_HVT \c2_c_reg[18]  ( .D(N124), .CLK(net506), .Q(c2_c[18]) );
  DFFX1_HVT \c1_s_reg[18]  ( .D(N21), .CLK(net506), .Q(c1_s[18]) );
  DFFX1_HVT \c2_s_reg[18]  ( .D(N92), .CLK(net506), .Q(c2_s[18]) );
  DFFX1_HVT \c1_c_reg[19]  ( .D(N54), .CLK(net506), .Q(c1_c[19]) );
  DFFX1_HVT \c2_c_reg[19]  ( .D(N125), .CLK(net506), .Q(c2_c[19]) );
  DFFX1_HVT \c1_s_reg[19]  ( .D(N22), .CLK(net506), .Q(c1_s[19]) );
  DFFX1_HVT \c2_s_reg[19]  ( .D(N93), .CLK(net506), .Q(c2_s[19]) );
  DFFX1_HVT \c1_c_reg[20]  ( .D(N55), .CLK(net506), .Q(c1_c[20]) );
  DFFX1_HVT \c2_c_reg[20]  ( .D(N126), .CLK(net506), .Q(c2_c[20]) );
  DFFX1_HVT \c1_s_reg[20]  ( .D(N23), .CLK(net506), .Q(c1_s[20]) );
  DFFX1_HVT \c2_s_reg[20]  ( .D(N94), .CLK(net506), .Q(c2_s[20]) );
  DFFX1_HVT \c1_c_reg[21]  ( .D(N56), .CLK(net506), .Q(c1_c[21]) );
  DFFX1_HVT \c2_c_reg[21]  ( .D(N127), .CLK(net506), .Q(c2_c[21]) );
  DFFX1_HVT \c1_s_reg[21]  ( .D(N24), .CLK(net506), .Q(c1_s[21]) );
  DFFX1_HVT \c2_s_reg[21]  ( .D(N95), .CLK(net506), .Q(c2_s[21]) );
  DFFX1_HVT \c1_c_reg[22]  ( .D(N57), .CLK(net506), .Q(c1_c[22]) );
  DFFX1_HVT \c2_c_reg[22]  ( .D(N128), .CLK(net506), .Q(c2_c[22]) );
  DFFX1_HVT \c1_s_reg[22]  ( .D(N25), .CLK(net506), .Q(c1_s[22]) );
  DFFX1_HVT \c2_s_reg[22]  ( .D(N96), .CLK(net506), .Q(c2_s[22]) );
  DFFX1_HVT \c1_c_reg[23]  ( .D(N58), .CLK(net506), .Q(c1_c[23]) );
  DFFX1_HVT \c2_c_reg[23]  ( .D(N129), .CLK(net506), .Q(c2_c[23]) );
  DFFX1_HVT \c1_s_reg[23]  ( .D(N26), .CLK(net506), .Q(c1_s[23]) );
  DFFX1_HVT \c2_s_reg[23]  ( .D(N97), .CLK(net506), .Q(c2_s[23]) );
  DFFX1_HVT \c1_c_reg[24]  ( .D(N59), .CLK(net506), .Q(c1_c[24]) );
  DFFX1_HVT \c2_c_reg[24]  ( .D(N130), .CLK(net506), .Q(c2_c[24]) );
  DFFX1_HVT \c1_s_reg[24]  ( .D(N27), .CLK(net506), .Q(c1_s[24]) );
  DFFX1_HVT \c2_s_reg[24]  ( .D(N98), .CLK(net506), .Q(c2_s[24]) );
  DFFX1_HVT \c1_c_reg[25]  ( .D(N60), .CLK(net506), .Q(c1_c[25]) );
  DFFX1_HVT \c2_c_reg[25]  ( .D(N131), .CLK(net506), .Q(c2_c[25]) );
  DFFX1_HVT \c1_s_reg[25]  ( .D(N28), .CLK(net506), .Q(c1_s[25]) );
  DFFX1_HVT \c2_s_reg[25]  ( .D(N99), .CLK(net506), .Q(c2_s[25]) );
  DFFX1_HVT \c1_c_reg[26]  ( .D(N61), .CLK(net506), .Q(c1_c[26]) );
  DFFX1_HVT \c2_c_reg[26]  ( .D(N132), .CLK(net506), .Q(c2_c[26]) );
  DFFX1_HVT \c1_s_reg[26]  ( .D(N29), .CLK(net506), .Q(c1_s[26]) );
  DFFX1_HVT \c2_s_reg[26]  ( .D(N100), .CLK(net506), .Q(c2_s[26]) );
  DFFX1_HVT \c1_c_reg[27]  ( .D(N62), .CLK(net506), .Q(c1_c[27]) );
  DFFX1_HVT \c2_c_reg[27]  ( .D(N133), .CLK(net506), .Q(c2_c[27]) );
  DFFX1_HVT \c1_s_reg[27]  ( .D(N30), .CLK(net506), .Q(c1_s[27]) );
  DFFX1_HVT \c2_s_reg[27]  ( .D(N101), .CLK(net506), .Q(c2_s[27]) );
  DFFX1_HVT \c1_c_reg[28]  ( .D(N63), .CLK(net506), .Q(c1_c[28]) );
  DFFX1_HVT \c2_c_reg[28]  ( .D(N134), .CLK(net506), .Q(c2_c[28]) );
  DFFX1_HVT \c1_s_reg[28]  ( .D(N31), .CLK(net506), .Q(c1_s[28]) );
  DFFX1_HVT \c2_s_reg[28]  ( .D(N102), .CLK(net506), .Q(c2_s[28]) );
  DFFX1_HVT \c1_c_reg[29]  ( .D(N64), .CLK(net506), .Q(c1_c[29]) );
  DFFX1_HVT \c2_c_reg[29]  ( .D(N135), .CLK(net506), .Q(c2_c[29]) );
  DFFX1_HVT \c1_s_reg[29]  ( .D(N32), .CLK(net506), .Q(c1_s[29]) );
  DFFX1_HVT \c2_s_reg[29]  ( .D(N103), .CLK(net506), .Q(c2_s[29]) );
  DFFX1_HVT \c1_c_reg[30]  ( .D(N65), .CLK(net506), .Q(c1_c[30]) );
  DFFX1_HVT \c2_c_reg[30]  ( .D(N136), .CLK(net506), .Q(c2_c[30]) );
  DFFX1_HVT \c1_s_reg[30]  ( .D(N33), .CLK(net506), .Q(c1_s[30]) );
  DFFX1_HVT \c2_s_reg[30]  ( .D(N104), .CLK(net506), .Q(c2_s[30]) );
  DFFX1_HVT \c1_c_reg[31]  ( .D(N66), .CLK(net506), .Q(c1_c[31]) );
  DFFX1_HVT \c2_c_reg[31]  ( .D(N137), .CLK(net506), .Q(c2_c[31]) );
  DFFX1_HVT \c1_s_reg[31]  ( .D(N34), .CLK(net506), .Q(c1_s[31]) );
  DFFX1_HVT \c2_s_reg[31]  ( .D(N105), .CLK(net506), .Q(c2_s[31]) );
  XOR3X1_HVT U2 ( .A1(_T_38_s[6]), .A2(n81), .A3(n106), .Y(n90) );
  XOR2X1_HVT U3 ( .A1(_T_38_c[6]), .A2(n104), .Y(n81) );
  INVX8_HVT U4 ( .A(n236), .Y(n3) );
  NBUFFX4_HVT U5 ( .A(io_in_control_propagate), .Y(n266) );
  INVX4_HVT U6 ( .A(n266), .Y(n124) );
  IBUFFX16_HVT U7 ( .A(n236), .Y(n87) );
  NAND2X1_HVT U8 ( .A1(n21), .A2(io_in_d[11]), .Y(n22) );
  NAND2X1_HVT U9 ( .A1(n21), .A2(io_in_d[10]), .Y(n28) );
  INVX4_HVT U10 ( .A(n236), .Y(n2) );
  INVX0_HVT U11 ( .A(n71), .Y(n26) );
  INVX4_HVT U12 ( .A(n266), .Y(n4) );
  OR2X1_HVT U13 ( .A1(n6), .A2(n5), .Y(n18) );
  XOR2X1_HVT U14 ( .A1(n78), .A2(n77), .Y(n104) );
  OAI21X1_HVT U15 ( .A1(n129), .A2(_T_38_s[4]), .A3(n130), .Y(n92) );
  XOR3X1_HVT U16 ( .A1(n133), .A2(n135), .A3(_T_38_s[14]), .Y(n118) );
  XOR3X1_HVT U17 ( .A1(n51), .A2(n50), .A3(_T_38_s[13]), .Y(n55) );
  XOR3X1_HVT U18 ( .A1(n57), .A2(n56), .A3(_T_38_s[12]), .Y(n85) );
  XOR3X1_HVT U19 ( .A1(_T_38_c[14]), .A2(n118), .A3(n117), .Y(n49) );
  XOR3X1_HVT U20 ( .A1(n55), .A2(_T_38_c[13]), .A3(n53), .Y(n52) );
  XOR2X1_HVT U21 ( .A1(n268), .A2(n17), .Y(n7) );
  INVX0_HVT U22 ( .A(n18), .Y(n19) );
  XOR2X1_HVT U23 ( .A1(_T_38_s[10]), .A2(n70), .Y(n72) );
  XOR3X1_HVT U24 ( .A1(n66), .A2(n65), .A3(_T_38_s[9]), .Y(n69) );
  XOR3X1_HVT U25 ( .A1(n66), .A2(n65), .A3(_T_38_c[9]), .Y(n38) );
  XOR2X1_HVT U26 ( .A1(_T_38_s[8]), .A2(n74), .Y(n75) );
  XOR2X1_HVT U27 ( .A1(_T_38_s[7]), .A2(n83), .Y(n84) );
  XOR2X1_HVT U28 ( .A1(_T_38_c[7]), .A2(n83), .Y(n43) );
  XOR2X1_HVT U29 ( .A1(_T_38_s[6]), .A2(n104), .Y(n105) );
  INVX0_HVT U30 ( .A(n95), .Y(n98) );
  XOR3X1_HVT U31 ( .A1(_T_38_s[5]), .A2(_T_38_c[5]), .A3(n64), .Y(n89) );
  XOR3X1_HVT U32 ( .A1(n130), .A2(n129), .A3(_T_38_s[4]), .Y(n176) );
  INVX0_HVT U33 ( .A(n170), .Y(n220) );
  INVX0_HVT U34 ( .A(n87), .Y(n21) );
  NBUFFX4_HVT U35 ( .A(_T_38_s[15]), .Y(n212) );
  XOR2X1_HVT U36 ( .A1(n36), .A2(n37), .Y(n74) );
  XOR2X1_HVT U37 ( .A1(_T_38_s[5]), .A2(n93), .Y(n97) );
  NBUFFX2_HVT U38 ( .A(_T_38_c[11]), .Y(n8) );
  INVX2_HVT U39 ( .A(n266), .Y(n236) );
  MUX21X1_HVT U40 ( .A1(c1_c[11]), .A2(c2_c[11]), .S0(n87), .Y(n60) );
  MUX21X1_HVT U41 ( .A1(c1_s[11]), .A2(c2_s[11]), .S0(n87), .Y(n59) );
  XOR2X1_HVT U42 ( .A1(n60), .A2(n59), .Y(n17) );
  MUX21X1_HVT U43 ( .A1(c1_s[10]), .A2(c2_s[10]), .S0(n3), .Y(n25) );
  AND2X1_HVT U44 ( .A1(_T_38_s[10]), .A2(n25), .Y(n6) );
  MUX21X1_HVT U45 ( .A1(c1_c[10]), .A2(c2_c[10]), .S0(n3), .Y(n24) );
  OA21X1_HVT U46 ( .A1(n25), .A2(_T_38_s[10]), .A3(n24), .Y(n5) );
  FADDX1_HVT U47 ( .A(n8), .B(n7), .CI(n18), .CO(n113) );
  NAND2X0_HVT U48 ( .A1(n113), .A2(n87), .Y(n10) );
  NAND2X0_HVT U49 ( .A1(n4), .A2(io_in_d[44]), .Y(n9) );
  NAND2X0_HVT U50 ( .A1(n10), .A2(n9), .Y(N118) );
  INVX2_HVT U51 ( .A(n236), .Y(io_out_control_propagate) );
  MUX21X1_HVT U52 ( .A1(c1_s[8]), .A2(c2_s[8]), .S0(n3), .Y(n36) );
  MUX21X1_HVT U53 ( .A1(c1_c[8]), .A2(c2_c[8]), .S0(n3), .Y(n37) );
  XOR3X2_HVT U54 ( .A1(_T_38_c[8]), .A2(n74), .A3(_T_38_s[8]), .Y(n11) );
  MUX21X1_HVT U55 ( .A1(c1_s[7]), .A2(c2_s[7]), .S0(io_out_control_propagate), 
        .Y(n42) );
  MUX21X1_HVT U56 ( .A1(c1_c[7]), .A2(c2_c[7]), .S0(io_out_control_propagate), 
        .Y(n41) );
  FADDX1_HVT U57 ( .A(n42), .B(n41), .CI(_T_38_s[7]), .CO(n76) );
  XOR2X2_HVT U58 ( .A1(n11), .A2(n76), .Y(n14) );
  NAND2X0_HVT U59 ( .A1(n14), .A2(n3), .Y(n13) );
  NAND2X0_HVT U60 ( .A1(n21), .A2(io_in_d[8]), .Y(n12) );
  NAND2X0_HVT U61 ( .A1(n13), .A2(n12), .Y(N82) );
  NAND2X0_HVT U62 ( .A1(n14), .A2(n124), .Y(n16) );
  NAND2X0_HVT U63 ( .A1(n260), .A2(io_in_d[8]), .Y(n15) );
  NAND2X0_HVT U64 ( .A1(n16), .A2(n15), .Y(N11) );
  XNOR2X2_HVT U65 ( .A1(_T_38_c[11]), .A2(n17), .Y(n20) );
  XOR3X2_HVT U66 ( .A1(n20), .A2(n268), .A3(n19), .Y(n33) );
  NAND2X0_HVT U67 ( .A1(n33), .A2(n87), .Y(n23) );
  NAND2X0_HVT U68 ( .A1(n23), .A2(n22), .Y(N85) );
  XOR2X1_HVT U69 ( .A1(n25), .A2(n24), .Y(n70) );
  XNOR2X2_HVT U70 ( .A1(_T_38_c[10]), .A2(n70), .Y(n27) );
  MUX21X1_HVT U71 ( .A1(c1_c[9]), .A2(c2_c[9]), .S0(n3), .Y(n65) );
  MUX21X1_HVT U72 ( .A1(c1_s[9]), .A2(c2_s[9]), .S0(n3), .Y(n66) );
  FADDX1_HVT U73 ( .A(n65), .B(n66), .CI(_T_38_s[9]), .CO(n71) );
  XOR3X2_HVT U74 ( .A1(n27), .A2(_T_38_s[10]), .A3(n26), .Y(n30) );
  NAND2X0_HVT U75 ( .A1(n30), .A2(n3), .Y(n29) );
  NAND2X0_HVT U76 ( .A1(n29), .A2(n28), .Y(N84) );
  NAND2X0_HVT U77 ( .A1(n30), .A2(n124), .Y(n32) );
  NAND2X0_HVT U78 ( .A1(n2), .A2(io_in_d[10]), .Y(n31) );
  NAND2X0_HVT U79 ( .A1(n32), .A2(n31), .Y(N13) );
  NAND2X0_HVT U80 ( .A1(n33), .A2(n124), .Y(n35) );
  NAND2X0_HVT U81 ( .A1(io_in_control_propagate), .A2(io_in_d[11]), .Y(n34) );
  NAND2X0_HVT U82 ( .A1(n35), .A2(n34), .Y(N14) );
  FADDX1_HVT U83 ( .A(n37), .B(n36), .CI(_T_38_s[8]), .CO(n68) );
  XOR3X2_HVT U84 ( .A1(n38), .A2(_T_38_s[9]), .A3(n68), .Y(n46) );
  AND2X1_HVT U85 ( .A1(n124), .A2(io_in_d[9]), .Y(n39) );
  AO21X1_HVT U86 ( .A1(n46), .A2(n3), .A3(n39), .Y(N83) );
  MUX21X1_HVT U87 ( .A1(c1_s[6]), .A2(c2_s[6]), .S0(io_out_control_propagate), 
        .Y(n78) );
  MUX21X1_HVT U88 ( .A1(c1_c[6]), .A2(c2_c[6]), .S0(io_out_control_propagate), 
        .Y(n77) );
  OR2X1_HVT U89 ( .A1(n78), .A2(n77), .Y(n40) );
  AO22X1_HVT U90 ( .A1(n78), .A2(n77), .A3(_T_38_s[6]), .A4(n40), .Y(n82) );
  XOR2X1_HVT U91 ( .A1(n42), .A2(n41), .Y(n83) );
  XOR3X2_HVT U92 ( .A1(n82), .A2(_T_38_s[7]), .A3(n43), .Y(n108) );
  NAND2X0_HVT U93 ( .A1(n108), .A2(n124), .Y(n45) );
  NAND2X0_HVT U94 ( .A1(io_in_control_propagate), .A2(io_in_d[7]), .Y(n44) );
  NAND2X0_HVT U95 ( .A1(n45), .A2(n44), .Y(N10) );
  NAND2X0_HVT U96 ( .A1(n46), .A2(n124), .Y(n48) );
  NAND2X0_HVT U97 ( .A1(n2), .A2(io_in_d[9]), .Y(n47) );
  NAND2X0_HVT U98 ( .A1(n48), .A2(n47), .Y(N12) );
  MUX21X1_HVT U99 ( .A1(c1_c[14]), .A2(c2_c[14]), .S0(n2), .Y(n133) );
  MUX21X1_HVT U100 ( .A1(c1_s[14]), .A2(c2_s[14]), .S0(n2), .Y(n135) );
  MUX21X1_HVT U101 ( .A1(c1_c[13]), .A2(c2_c[13]), .S0(n87), .Y(n51) );
  MUX21X1_HVT U102 ( .A1(c1_s[13]), .A2(c2_s[13]), .S0(n87), .Y(n50) );
  FADDX1_HVT U103 ( .A(n51), .B(n50), .CI(_T_38_s[13]), .CO(n117) );
  INVX2_HVT U104 ( .A(n266), .Y(n264) );
  MUX21X1_HVT U105 ( .A1(io_in_d[14]), .A2(n49), .S0(n264), .Y(N17) );
  MUX21X1_HVT U106 ( .A1(io_in_d[14]), .A2(n49), .S0(n2), .Y(N88) );
  MUX21X1_HVT U107 ( .A1(c1_c[12]), .A2(c2_c[12]), .S0(n87), .Y(n57) );
  MUX21X1_HVT U108 ( .A1(c1_s[12]), .A2(c2_s[12]), .S0(n87), .Y(n56) );
  FADDX1_HVT U109 ( .A(n57), .B(n56), .CI(_T_38_s[12]), .CO(n53) );
  MUX21X1_HVT U110 ( .A1(io_in_d[13]), .A2(n52), .S0(n264), .Y(N16) );
  MUX21X1_HVT U111 ( .A1(io_in_d[13]), .A2(n52), .S0(n2), .Y(N87) );
  OR2X1_HVT U112 ( .A1(_T_38_c[13]), .A2(n55), .Y(n54) );
  AO22X1_HVT U113 ( .A1(n55), .A2(_T_38_c[13]), .A3(n54), .A4(n53), .Y(n115)
         );
  MUX21X1_HVT U114 ( .A1(io_in_d[46]), .A2(n115), .S0(n264), .Y(N49) );
  OR2X1_HVT U115 ( .A1(n60), .A2(n59), .Y(n58) );
  AO22X1_HVT U116 ( .A1(n60), .A2(n59), .A3(n268), .A4(n58), .Y(n86) );
  OR2X1_HVT U117 ( .A1(n85), .A2(_T_38_c[12]), .Y(n61) );
  AO22X1_HVT U118 ( .A1(n85), .A2(_T_38_c[12]), .A3(n86), .A4(n61), .Y(n114)
         );
  MUX21X1_HVT U119 ( .A1(io_in_d[45]), .A2(n114), .S0(n87), .Y(N119) );
  MUX21X1_HVT U120 ( .A1(c1_s[4]), .A2(c2_s[4]), .S0(io_out_control_propagate), 
        .Y(n129) );
  MUX21X1_HVT U121 ( .A1(c1_c[4]), .A2(c2_c[4]), .S0(io_out_control_propagate), 
        .Y(n130) );
  NAND2X0_HVT U122 ( .A1(_T_38_s[4]), .A2(n129), .Y(n91) );
  MUX21X1_HVT U123 ( .A1(c1_c[5]), .A2(c2_c[5]), .S0(n3), .Y(n80) );
  MUX21X1_HVT U124 ( .A1(c1_s[5]), .A2(c2_s[5]), .S0(io_out_control_propagate), 
        .Y(n79) );
  XOR2X1_HVT U125 ( .A1(n80), .A2(n79), .Y(n93) );
  AO21X1_HVT U126 ( .A1(n92), .A2(n91), .A3(n93), .Y(n63) );
  NAND3X0_HVT U127 ( .A1(n92), .A2(n93), .A3(n91), .Y(n62) );
  NAND2X0_HVT U128 ( .A1(n63), .A2(n62), .Y(n64) );
  MUX21X1_HVT U129 ( .A1(io_in_d[5]), .A2(n89), .S0(n124), .Y(N8) );
  OR2X1_HVT U130 ( .A1(_T_38_c[9]), .A2(n69), .Y(n67) );
  AO22X1_HVT U131 ( .A1(n69), .A2(_T_38_c[9]), .A3(n68), .A4(n67), .Y(n111) );
  MUX21X1_HVT U132 ( .A1(io_in_d[42]), .A2(n111), .S0(n87), .Y(N116) );
  NBUFFX2_HVT U133 ( .A(_T_38_c[10]), .Y(n73) );
  FADDX1_HVT U134 ( .A(n73), .B(n72), .CI(n71), .CO(n112) );
  MUX21X1_HVT U135 ( .A1(io_in_d[43]), .A2(n112), .S0(n87), .Y(N117) );
  FADDX1_HVT U136 ( .A(_T_38_c[8]), .B(n76), .CI(n75), .CO(n110) );
  MUX21X1_HVT U137 ( .A1(io_in_d[41]), .A2(n110), .S0(n3), .Y(N115) );
  FADDX1_HVT U138 ( .A(n80), .B(n79), .CI(_T_38_s[5]), .CO(n106) );
  MUX21X1_HVT U139 ( .A1(io_in_d[6]), .A2(n90), .S0(n124), .Y(N9) );
  FADDX1_HVT U140 ( .A(_T_38_c[7]), .B(n82), .CI(n84), .CO(n109) );
  MUX21X1_HVT U141 ( .A1(io_in_d[40]), .A2(n109), .S0(n3), .Y(N114) );
  XOR3X2_HVT U142 ( .A1(n86), .A2(_T_38_c[12]), .A3(n85), .Y(n88) );
  MUX21X1_HVT U143 ( .A1(io_in_d[12]), .A2(n88), .S0(n87), .Y(N86) );
  MUX21X1_HVT U144 ( .A1(io_in_d[12]), .A2(n88), .S0(n124), .Y(N15) );
  MUX21X1_HVT U145 ( .A1(io_in_d[5]), .A2(n89), .S0(io_out_control_propagate), 
        .Y(N79) );
  MUX21X1_HVT U146 ( .A1(io_in_d[6]), .A2(n90), .S0(io_out_control_propagate), 
        .Y(N80) );
  AND2X1_HVT U147 ( .A1(n92), .A2(n91), .Y(n95) );
  INVX0_HVT U148 ( .A(_T_38_c[5]), .Y(n94) );
  NAND2X0_HVT U149 ( .A1(n95), .A2(n94), .Y(n96) );
  AO22X1_HVT U150 ( .A1(_T_38_c[5]), .A2(n98), .A3(n97), .A4(n96), .Y(n101) );
  INVX2_HVT U151 ( .A(n266), .Y(n258) );
  NAND2X0_HVT U152 ( .A1(n101), .A2(n258), .Y(n100) );
  NAND2X0_HVT U153 ( .A1(io_in_d[38]), .A2(n266), .Y(n99) );
  NAND2X0_HVT U154 ( .A1(n100), .A2(n99), .Y(N41) );
  NAND2X0_HVT U155 ( .A1(n101), .A2(n266), .Y(n103) );
  NAND2X0_HVT U156 ( .A1(n258), .A2(io_in_d[38]), .Y(n102) );
  NAND2X0_HVT U157 ( .A1(n103), .A2(n102), .Y(N112) );
  FADDX1_HVT U158 ( .A(_T_38_c[6]), .B(n106), .CI(n105), .CO(n107) );
  MUX21X1_HVT U159 ( .A1(io_in_d[39]), .A2(n107), .S0(n124), .Y(N42) );
  MUX21X1_HVT U160 ( .A1(io_in_d[39]), .A2(n107), .S0(io_out_control_propagate), .Y(N113) );
  MUX21X1_HVT U161 ( .A1(io_in_d[7]), .A2(n108), .S0(io_out_control_propagate), 
        .Y(N81) );
  MUX21X1_HVT U162 ( .A1(io_in_d[40]), .A2(n109), .S0(n124), .Y(N43) );
  MUX21X1_HVT U163 ( .A1(io_in_d[41]), .A2(n110), .S0(n124), .Y(N44) );
  MUX21X1_HVT U164 ( .A1(io_in_d[42]), .A2(n111), .S0(n124), .Y(N45) );
  MUX21X1_HVT U165 ( .A1(io_in_d[43]), .A2(n112), .S0(n124), .Y(N46) );
  MUX21X1_HVT U166 ( .A1(io_in_d[44]), .A2(n113), .S0(n124), .Y(N47) );
  MUX21X1_HVT U167 ( .A1(io_in_d[45]), .A2(n114), .S0(n124), .Y(N48) );
  MUX21X1_HVT U168 ( .A1(io_in_d[46]), .A2(n115), .S0(n2), .Y(N120) );
  OR2X1_HVT U169 ( .A1(n118), .A2(_T_38_c[14]), .Y(n116) );
  AO22X1_HVT U170 ( .A1(n118), .A2(_T_38_c[14]), .A3(n117), .A4(n116), .Y(n121) );
  NAND2X0_HVT U171 ( .A1(n121), .A2(n266), .Y(n120) );
  INVX2_HVT U172 ( .A(n266), .Y(n256) );
  NAND2X0_HVT U173 ( .A1(n256), .A2(io_in_d[47]), .Y(n119) );
  NAND2X0_HVT U174 ( .A1(n120), .A2(n119), .Y(N121) );
  NAND2X0_HVT U175 ( .A1(n121), .A2(n256), .Y(n123) );
  NAND2X0_HVT U176 ( .A1(io_in_d[47]), .A2(n266), .Y(n122) );
  NAND2X0_HVT U177 ( .A1(n123), .A2(n122), .Y(N50) );
  MUX21X1_HVT U178 ( .A1(c2_s[5]), .A2(c1_s[5]), .S0(n2), .Y(io_out_c[5]) );
  MUX21X1_HVT U179 ( .A1(c2_s[6]), .A2(c1_s[6]), .S0(n2), .Y(io_out_c[6]) );
  MUX21X1_HVT U180 ( .A1(c2_s[7]), .A2(c1_s[7]), .S0(n2), .Y(io_out_c[7]) );
  MUX21X1_HVT U181 ( .A1(c2_s[8]), .A2(c1_s[8]), .S0(n2), .Y(io_out_c[8]) );
  MUX21X1_HVT U182 ( .A1(c2_s[9]), .A2(c1_s[9]), .S0(n2), .Y(io_out_c[9]) );
  MUX21X1_HVT U183 ( .A1(c2_s[10]), .A2(c1_s[10]), .S0(n2), .Y(io_out_c[10])
         );
  MUX21X1_HVT U184 ( .A1(c2_s[11]), .A2(c1_s[11]), .S0(n2), .Y(io_out_c[11])
         );
  MUX21X1_HVT U185 ( .A1(c2_s[12]), .A2(c1_s[12]), .S0(n218), .Y(io_out_c[12])
         );
  MUX21X1_HVT U186 ( .A1(c2_s[13]), .A2(c1_s[13]), .S0(n3), .Y(io_out_c[13])
         );
  MUX21X1_HVT U187 ( .A1(c2_s[14]), .A2(c1_s[14]), .S0(n260), .Y(io_out_c[14])
         );
  MUX21X1_HVT U188 ( .A1(c2_c[6]), .A2(c1_c[6]), .S0(n3), .Y(io_out_c[38]) );
  MUX21X1_HVT U189 ( .A1(c2_c[7]), .A2(c1_c[7]), .S0(n2), .Y(io_out_c[39]) );
  MUX21X1_HVT U190 ( .A1(c2_c[8]), .A2(c1_c[8]), .S0(n260), .Y(io_out_c[40])
         );
  MUX21X1_HVT U191 ( .A1(c2_c[9]), .A2(c1_c[9]), .S0(n217), .Y(io_out_c[41])
         );
  MUX21X1_HVT U192 ( .A1(c2_c[10]), .A2(c1_c[10]), .S0(n2), .Y(io_out_c[42])
         );
  MUX21X1_HVT U193 ( .A1(c2_c[11]), .A2(c1_c[11]), .S0(n260), .Y(io_out_c[43])
         );
  MUX21X1_HVT U194 ( .A1(c2_c[12]), .A2(c1_c[12]), .S0(n217), .Y(io_out_c[44])
         );
  MUX21X1_HVT U195 ( .A1(c2_c[13]), .A2(c1_c[13]), .S0(n2), .Y(io_out_c[45])
         );
  MUX21X1_HVT U196 ( .A1(c2_c[14]), .A2(c1_c[14]), .S0(n260), .Y(io_out_c[46])
         );
  INVX2_HVT U198 ( .A(n236), .Y(n217) );
  AND2X1_HVT U199 ( .A1(n217), .A2(io_in_d[32]), .Y(N35) );
  AND2X1_HVT U200 ( .A1(n217), .A2(io_in_d[33]), .Y(N36) );
  INVX2_HVT U201 ( .A(n236), .Y(n218) );
  AO22X1_HVT U202 ( .A1(n217), .A2(c2_s[1]), .A3(n4), .A4(c1_s[1]), .Y(n126)
         );
  AO22X1_HVT U203 ( .A1(n218), .A2(c2_c[1]), .A3(n264), .A4(c1_c[1]), .Y(n125)
         );
  AO22X1_HVT U204 ( .A1(n218), .A2(c2_s[0]), .A3(n4), .A4(c1_s[0]), .Y(n167)
         );
  AO22X1_HVT U205 ( .A1(n218), .A2(c2_c[0]), .A3(n4), .A4(c1_c[0]), .Y(n166)
         );
  AO22X1_HVT U206 ( .A1(n218), .A2(io_in_d[34]), .A3(n4), .A4(n219), .Y(N37)
         );
  AO22X1_HVT U207 ( .A1(n218), .A2(c2_s[2]), .A3(n4), .A4(c1_s[2]), .Y(n128)
         );
  AO22X1_HVT U208 ( .A1(n218), .A2(c2_c[2]), .A3(n4), .A4(c1_c[2]), .Y(n127)
         );
  FADDX1_HVT U209 ( .A(_T_38_s[1]), .B(n126), .CI(n125), .CO(n171), .S(n169)
         );
  NAND2X0_HVT U210 ( .A1(n172), .A2(n171), .Y(n170) );
  AO22X1_HVT U211 ( .A1(n218), .A2(io_in_d[35]), .A3(n4), .A4(n220), .Y(N38)
         );
  AO22X1_HVT U212 ( .A1(n218), .A2(c2_s[3]), .A3(n4), .A4(c1_s[3]), .Y(n132)
         );
  AO22X1_HVT U213 ( .A1(n218), .A2(c2_c[3]), .A3(n4), .A4(c1_c[3]), .Y(n131)
         );
  FADDX1_HVT U214 ( .A(_T_38_s[2]), .B(n128), .CI(n127), .CO(n173), .S(n172)
         );
  AO22X1_HVT U215 ( .A1(n218), .A2(io_in_d[36]), .A3(n4), .A4(n221), .Y(N39)
         );
  FADDX1_HVT U216 ( .A(_T_38_s[3]), .B(n132), .CI(n131), .CO(n175), .S(n174)
         );
  AO22X1_HVT U217 ( .A1(n218), .A2(io_in_d[37]), .A3(n4), .A4(n222), .Y(N40)
         );
  NBUFFX4_HVT U218 ( .A(_T_38_c[15]), .Y(n216) );
  AO22X1_HVT U219 ( .A1(n218), .A2(c2_s[15]), .A3(n4), .A4(c1_s[15]), .Y(n137)
         );
  AO22X1_HVT U220 ( .A1(n218), .A2(c2_c[15]), .A3(n4), .A4(c1_c[15]), .Y(n136)
         );
  OR2X1_HVT U221 ( .A1(n135), .A2(_T_38_s[14]), .Y(n134) );
  AO22X1_HVT U222 ( .A1(_T_38_s[14]), .A2(n135), .A3(n134), .A4(n133), .Y(n177) );
  AO22X1_HVT U223 ( .A1(n218), .A2(io_in_d[48]), .A3(n4), .A4(n223), .Y(N51)
         );
  AO22X1_HVT U224 ( .A1(n218), .A2(c2_s[16]), .A3(n4), .A4(c1_s[16]), .Y(n139)
         );
  AO22X1_HVT U225 ( .A1(n218), .A2(c2_c[16]), .A3(n4), .A4(c1_c[16]), .Y(n138)
         );
  FADDX1_HVT U226 ( .A(n212), .B(n137), .CI(n136), .CO(n179), .S(n178) );
  AO22X1_HVT U227 ( .A1(n218), .A2(io_in_d[49]), .A3(n4), .A4(n224), .Y(N52)
         );
  AO22X1_HVT U228 ( .A1(n3), .A2(c2_s[17]), .A3(n4), .A4(c1_s[17]), .Y(n141)
         );
  AO22X1_HVT U229 ( .A1(n3), .A2(c2_c[17]), .A3(n4), .A4(c1_c[17]), .Y(n140)
         );
  FADDX1_HVT U230 ( .A(n212), .B(n139), .CI(n138), .CO(n181), .S(n180) );
  AO22X1_HVT U231 ( .A1(n3), .A2(io_in_d[50]), .A3(n4), .A4(n225), .Y(N53) );
  AO22X1_HVT U232 ( .A1(n3), .A2(c2_s[18]), .A3(n4), .A4(c1_s[18]), .Y(n143)
         );
  AO22X1_HVT U233 ( .A1(n3), .A2(c2_c[18]), .A3(n4), .A4(c1_c[18]), .Y(n142)
         );
  FADDX1_HVT U234 ( .A(n212), .B(n141), .CI(n140), .CO(n183), .S(n182) );
  AO22X1_HVT U235 ( .A1(n3), .A2(io_in_d[51]), .A3(n4), .A4(n226), .Y(N54) );
  AO22X1_HVT U236 ( .A1(n3), .A2(c2_s[19]), .A3(n4), .A4(c1_s[19]), .Y(n145)
         );
  AO22X1_HVT U237 ( .A1(n3), .A2(c2_c[19]), .A3(n4), .A4(c1_c[19]), .Y(n144)
         );
  FADDX1_HVT U238 ( .A(n212), .B(n143), .CI(n142), .CO(n185), .S(n184) );
  AO22X1_HVT U239 ( .A1(n3), .A2(io_in_d[52]), .A3(n4), .A4(n227), .Y(N55) );
  AO22X1_HVT U240 ( .A1(n3), .A2(c2_s[20]), .A3(n4), .A4(c1_s[20]), .Y(n147)
         );
  AO22X1_HVT U241 ( .A1(n3), .A2(c2_c[20]), .A3(n4), .A4(c1_c[20]), .Y(n146)
         );
  FADDX1_HVT U242 ( .A(n212), .B(n145), .CI(n144), .CO(n187), .S(n186) );
  AO22X1_HVT U243 ( .A1(n3), .A2(io_in_d[53]), .A3(n4), .A4(n228), .Y(N56) );
  AO22X1_HVT U244 ( .A1(n3), .A2(c2_s[21]), .A3(n4), .A4(c1_s[21]), .Y(n149)
         );
  AO22X1_HVT U245 ( .A1(n3), .A2(c2_c[21]), .A3(n4), .A4(c1_c[21]), .Y(n148)
         );
  FADDX1_HVT U246 ( .A(n212), .B(n147), .CI(n146), .CO(n189), .S(n188) );
  AO22X1_HVT U247 ( .A1(n3), .A2(io_in_d[54]), .A3(n4), .A4(n229), .Y(N57) );
  AO22X1_HVT U248 ( .A1(n3), .A2(c2_s[22]), .A3(n4), .A4(c1_s[22]), .Y(n151)
         );
  AO22X1_HVT U249 ( .A1(n3), .A2(c2_c[22]), .A3(n4), .A4(c1_c[22]), .Y(n150)
         );
  FADDX1_HVT U250 ( .A(n212), .B(n149), .CI(n148), .CO(n191), .S(n190) );
  AO22X1_HVT U251 ( .A1(n3), .A2(io_in_d[55]), .A3(n4), .A4(n230), .Y(N58) );
  AO22X1_HVT U252 ( .A1(n3), .A2(c2_s[23]), .A3(n4), .A4(c1_s[23]), .Y(n153)
         );
  AO22X1_HVT U253 ( .A1(n3), .A2(c2_c[23]), .A3(n4), .A4(c1_c[23]), .Y(n152)
         );
  FADDX1_HVT U254 ( .A(n212), .B(n151), .CI(n150), .CO(n193), .S(n192) );
  AO22X1_HVT U255 ( .A1(n3), .A2(io_in_d[56]), .A3(n4), .A4(n231), .Y(N59) );
  AO22X1_HVT U256 ( .A1(n3), .A2(c2_s[24]), .A3(n4), .A4(c1_s[24]), .Y(n155)
         );
  AO22X1_HVT U257 ( .A1(n3), .A2(c2_c[24]), .A3(n4), .A4(c1_c[24]), .Y(n154)
         );
  FADDX1_HVT U258 ( .A(n212), .B(n153), .CI(n152), .CO(n195), .S(n194) );
  AO22X1_HVT U259 ( .A1(n3), .A2(io_in_d[57]), .A3(n4), .A4(n232), .Y(N60) );
  AO22X1_HVT U260 ( .A1(n3), .A2(c2_s[25]), .A3(n124), .A4(c1_s[25]), .Y(n157)
         );
  AO22X1_HVT U261 ( .A1(n3), .A2(c2_c[25]), .A3(n124), .A4(c1_c[25]), .Y(n156)
         );
  FADDX1_HVT U262 ( .A(n212), .B(n155), .CI(n154), .CO(n197), .S(n196) );
  AO22X1_HVT U263 ( .A1(n3), .A2(io_in_d[58]), .A3(n21), .A4(n233), .Y(N61) );
  AO22X1_HVT U264 ( .A1(n2), .A2(c2_s[26]), .A3(n124), .A4(c1_s[26]), .Y(n159)
         );
  AO22X1_HVT U265 ( .A1(n2), .A2(c2_c[26]), .A3(n21), .A4(c1_c[26]), .Y(n158)
         );
  FADDX1_HVT U266 ( .A(n212), .B(n157), .CI(n156), .CO(n199), .S(n198) );
  AO22X1_HVT U267 ( .A1(n2), .A2(io_in_d[59]), .A3(n21), .A4(n234), .Y(N62) );
  AO22X1_HVT U268 ( .A1(n2), .A2(c2_s[27]), .A3(n124), .A4(c1_s[27]), .Y(n161)
         );
  AO22X1_HVT U269 ( .A1(n217), .A2(c2_c[27]), .A3(n124), .A4(c1_c[27]), .Y(
        n160) );
  FADDX1_HVT U270 ( .A(n212), .B(n159), .CI(n158), .CO(n201), .S(n200) );
  AO22X1_HVT U271 ( .A1(n2), .A2(io_in_d[60]), .A3(n236), .A4(n235), .Y(N63)
         );
  AO22X1_HVT U272 ( .A1(n2), .A2(c2_s[28]), .A3(n4), .A4(c1_s[28]), .Y(n163)
         );
  AO22X1_HVT U273 ( .A1(n2), .A2(c2_c[28]), .A3(n124), .A4(c1_c[28]), .Y(n162)
         );
  FADDX1_HVT U274 ( .A(n212), .B(n161), .CI(n160), .CO(n203), .S(n202) );
  AO22X1_HVT U275 ( .A1(n2), .A2(io_in_d[61]), .A3(n21), .A4(n237), .Y(N64) );
  AO22X1_HVT U276 ( .A1(n2), .A2(c2_s[29]), .A3(n4), .A4(c1_s[29]), .Y(n165)
         );
  AO22X1_HVT U277 ( .A1(n2), .A2(c2_c[29]), .A3(n21), .A4(c1_c[29]), .Y(n164)
         );
  FADDX1_HVT U278 ( .A(n212), .B(n163), .CI(n162), .CO(n205), .S(n204) );
  AO22X1_HVT U279 ( .A1(n2), .A2(io_in_d[62]), .A3(n236), .A4(n238), .Y(N65)
         );
  AO22X1_HVT U280 ( .A1(n2), .A2(c2_s[30]), .A3(n124), .A4(c1_s[30]), .Y(n210)
         );
  AO22X1_HVT U281 ( .A1(n2), .A2(c2_c[30]), .A3(n124), .A4(c1_c[30]), .Y(n209)
         );
  FADDX1_HVT U282 ( .A(n212), .B(n165), .CI(n164), .CO(n207), .S(n206) );
  AO22X1_HVT U283 ( .A1(n2), .A2(io_in_d[63]), .A3(n21), .A4(n239), .Y(N66) );
  AO22X1_HVT U284 ( .A1(n2), .A2(io_in_d[64]), .A3(n236), .A4(
        io_in_control_shift[0]), .Y(N67) );
  AO22X1_HVT U285 ( .A1(n2), .A2(io_in_d[65]), .A3(n21), .A4(
        io_in_control_shift[1]), .Y(N68) );
  AO22X1_HVT U286 ( .A1(n218), .A2(io_in_d[66]), .A3(n21), .A4(
        io_in_control_shift[2]), .Y(N69) );
  AO22X1_HVT U287 ( .A1(n2), .A2(io_in_d[67]), .A3(n21), .A4(
        io_in_control_shift[3]), .Y(N70) );
  AO22X1_HVT U288 ( .A1(n2), .A2(io_in_d[68]), .A3(n236), .A4(
        io_in_control_shift[4]), .Y(N71) );
  AND2X1_HVT U289 ( .A1(n217), .A2(io_in_d[69]), .Y(N72) );
  AO22X1_HVT U290 ( .A1(n2), .A2(io_in_d[70]), .A3(n21), .A4(io_in_valid), .Y(
        N73) );
  FADDX1_HVT U291 ( .A(_T_38_s[0]), .B(n167), .CI(n166), .CO(n168), .S(n240)
         );
  AO22X1_HVT U292 ( .A1(n2), .A2(io_in_d[0]), .A3(n236), .A4(n240), .Y(N3) );
  FADDX1_HVT U293 ( .A(_T_38_c[1]), .B(n169), .CI(n168), .CO(n219), .S(n241)
         );
  AO22X1_HVT U294 ( .A1(n2), .A2(io_in_d[1]), .A3(n21), .A4(n241), .Y(N4) );
  OA21X1_HVT U295 ( .A1(n172), .A2(n171), .A3(n170), .Y(n242) );
  AO22X1_HVT U296 ( .A1(n2), .A2(io_in_d[2]), .A3(n236), .A4(n242), .Y(N5) );
  FADDX1_HVT U297 ( .A(_T_38_c[3]), .B(n174), .CI(n173), .CO(n221), .S(n243)
         );
  AO22X1_HVT U298 ( .A1(n2), .A2(io_in_d[3]), .A3(n21), .A4(n243), .Y(N6) );
  FADDX1_HVT U299 ( .A(_T_38_c[4]), .B(n176), .CI(n175), .CO(n222), .S(n244)
         );
  AO22X1_HVT U300 ( .A1(n217), .A2(io_in_d[4]), .A3(n21), .A4(n244), .Y(N7) );
  FADDX1_HVT U301 ( .A(n216), .B(n178), .CI(n177), .CO(n223), .S(n245) );
  AO22X1_HVT U302 ( .A1(n2), .A2(io_in_d[15]), .A3(n236), .A4(n245), .Y(N18)
         );
  FADDX1_HVT U303 ( .A(n216), .B(n180), .CI(n179), .CO(n224), .S(n246) );
  AO22X1_HVT U304 ( .A1(n217), .A2(io_in_d[16]), .A3(n21), .A4(n246), .Y(N19)
         );
  FADDX1_HVT U305 ( .A(n216), .B(n182), .CI(n181), .CO(n225), .S(n247) );
  AO22X1_HVT U306 ( .A1(n2), .A2(io_in_d[17]), .A3(n264), .A4(n247), .Y(N20)
         );
  FADDX1_HVT U307 ( .A(n216), .B(n184), .CI(n183), .CO(n226), .S(n248) );
  AO22X1_HVT U308 ( .A1(n217), .A2(io_in_d[18]), .A3(n264), .A4(n248), .Y(N21)
         );
  FADDX1_HVT U309 ( .A(n216), .B(n186), .CI(n185), .CO(n227), .S(n249) );
  AO22X1_HVT U310 ( .A1(n217), .A2(io_in_d[19]), .A3(n264), .A4(n249), .Y(N22)
         );
  FADDX1_HVT U311 ( .A(n216), .B(n188), .CI(n187), .CO(n228), .S(n250) );
  AO22X1_HVT U312 ( .A1(n217), .A2(io_in_d[20]), .A3(n264), .A4(n250), .Y(N23)
         );
  FADDX1_HVT U313 ( .A(n216), .B(n190), .CI(n189), .CO(n229), .S(n251) );
  AO22X1_HVT U314 ( .A1(n217), .A2(io_in_d[21]), .A3(n264), .A4(n251), .Y(N24)
         );
  FADDX1_HVT U315 ( .A(n216), .B(n192), .CI(n191), .CO(n230), .S(n252) );
  AO22X1_HVT U316 ( .A1(n217), .A2(io_in_d[22]), .A3(n264), .A4(n252), .Y(N25)
         );
  FADDX1_HVT U317 ( .A(n216), .B(n194), .CI(n193), .CO(n231), .S(n253) );
  AO22X1_HVT U318 ( .A1(n217), .A2(io_in_d[23]), .A3(n264), .A4(n253), .Y(N26)
         );
  FADDX1_HVT U319 ( .A(n216), .B(n196), .CI(n195), .CO(n232), .S(n254) );
  AO22X1_HVT U320 ( .A1(n217), .A2(io_in_d[24]), .A3(n264), .A4(n254), .Y(N27)
         );
  FADDX1_HVT U321 ( .A(n216), .B(n198), .CI(n197), .CO(n233), .S(n255) );
  AO22X1_HVT U322 ( .A1(n217), .A2(io_in_d[25]), .A3(n264), .A4(n255), .Y(N28)
         );
  FADDX1_HVT U323 ( .A(n216), .B(n200), .CI(n199), .CO(n234), .S(n257) );
  AO22X1_HVT U324 ( .A1(n2), .A2(io_in_d[26]), .A3(n264), .A4(n257), .Y(N29)
         );
  FADDX1_HVT U325 ( .A(n216), .B(n202), .CI(n201), .CO(n235), .S(n259) );
  AO22X1_HVT U326 ( .A1(n217), .A2(io_in_d[27]), .A3(n264), .A4(n259), .Y(N30)
         );
  FADDX1_HVT U327 ( .A(n216), .B(n204), .CI(n203), .CO(n237), .S(n261) );
  AO22X1_HVT U328 ( .A1(n217), .A2(io_in_d[28]), .A3(n264), .A4(n261), .Y(N31)
         );
  FADDX1_HVT U329 ( .A(n216), .B(n206), .CI(n205), .CO(n238), .S(n262) );
  AO22X1_HVT U330 ( .A1(n217), .A2(io_in_d[29]), .A3(n264), .A4(n262), .Y(N32)
         );
  FADDX1_HVT U331 ( .A(n216), .B(n208), .CI(n207), .CO(n239), .S(n263) );
  AO22X1_HVT U332 ( .A1(n217), .A2(io_in_d[30]), .A3(n264), .A4(n263), .Y(N33)
         );
  AO22X1_HVT U333 ( .A1(n217), .A2(c2_s[31]), .A3(n264), .A4(c1_s[31]), .Y(
        n215) );
  FADDX1_HVT U334 ( .A(n212), .B(n210), .CI(n209), .CO(n213), .S(n208) );
  AO22X1_HVT U335 ( .A1(n217), .A2(c2_c[31]), .A3(n264), .A4(c1_c[31]), .Y(
        n211) );
  FADDX1_HVT U336 ( .A(n213), .B(n212), .CI(n211), .S(n214) );
  FADDX1_HVT U337 ( .A(n216), .B(n215), .CI(n214), .S(n265) );
  AO22X1_HVT U338 ( .A1(n217), .A2(io_in_d[31]), .A3(n264), .A4(n265), .Y(N34)
         );
  AO22X1_HVT U339 ( .A1(n217), .A2(c1_c[0]), .A3(n264), .A4(c2_c[0]), .Y(
        io_out_c[32]) );
  AO22X1_HVT U340 ( .A1(n217), .A2(c1_c[1]), .A3(n264), .A4(c2_c[1]), .Y(
        io_out_c[33]) );
  AO22X1_HVT U341 ( .A1(n217), .A2(c1_c[2]), .A3(n264), .A4(c2_c[2]), .Y(
        io_out_c[34]) );
  AO22X1_HVT U342 ( .A1(n217), .A2(c1_c[3]), .A3(n264), .A4(c2_c[3]), .Y(
        io_out_c[35]) );
  AO22X1_HVT U343 ( .A1(n217), .A2(c1_c[4]), .A3(n264), .A4(c2_c[4]), .Y(
        io_out_c[36]) );
  AO22X1_HVT U344 ( .A1(n2), .A2(c1_c[5]), .A3(n264), .A4(c2_c[5]), .Y(
        io_out_c[37]) );
  AO22X1_HVT U345 ( .A1(n218), .A2(c1_c[15]), .A3(n21), .A4(c2_c[15]), .Y(
        io_out_c[47]) );
  AO22X1_HVT U346 ( .A1(n218), .A2(c1_c[16]), .A3(n4), .A4(c2_c[16]), .Y(
        io_out_c[48]) );
  AO22X1_HVT U347 ( .A1(n218), .A2(c1_c[17]), .A3(n4), .A4(c2_c[17]), .Y(
        io_out_c[49]) );
  AO22X1_HVT U348 ( .A1(n218), .A2(c1_c[18]), .A3(n4), .A4(c2_c[18]), .Y(
        io_out_c[50]) );
  AO22X1_HVT U349 ( .A1(n218), .A2(c1_c[19]), .A3(n4), .A4(c2_c[19]), .Y(
        io_out_c[51]) );
  AO22X1_HVT U350 ( .A1(n218), .A2(c1_c[20]), .A3(n4), .A4(c2_c[20]), .Y(
        io_out_c[52]) );
  AO22X1_HVT U351 ( .A1(n218), .A2(c1_c[21]), .A3(n4), .A4(c2_c[21]), .Y(
        io_out_c[53]) );
  AO22X1_HVT U352 ( .A1(n218), .A2(c1_c[22]), .A3(n4), .A4(c2_c[22]), .Y(
        io_out_c[54]) );
  AO22X1_HVT U353 ( .A1(n218), .A2(c1_c[23]), .A3(n4), .A4(c2_c[23]), .Y(
        io_out_c[55]) );
  AO22X1_HVT U354 ( .A1(n2), .A2(c1_c[24]), .A3(n4), .A4(c2_c[24]), .Y(
        io_out_c[56]) );
  AO22X1_HVT U355 ( .A1(n2), .A2(c1_c[25]), .A3(n4), .A4(c2_c[25]), .Y(
        io_out_c[57]) );
  AO22X1_HVT U356 ( .A1(io_out_control_propagate), .A2(c1_c[26]), .A3(n4), 
        .A4(c2_c[26]), .Y(io_out_c[58]) );
  AO22X1_HVT U357 ( .A1(n2), .A2(c1_c[27]), .A3(n4), .A4(c2_c[27]), .Y(
        io_out_c[59]) );
  AO22X1_HVT U358 ( .A1(io_out_control_propagate), .A2(c1_c[28]), .A3(n4), 
        .A4(c2_c[28]), .Y(io_out_c[60]) );
  AO22X1_HVT U359 ( .A1(io_out_control_propagate), .A2(c1_c[29]), .A3(n4), 
        .A4(c2_c[29]), .Y(io_out_c[61]) );
  AO22X1_HVT U360 ( .A1(io_out_control_propagate), .A2(c1_c[30]), .A3(n4), 
        .A4(c2_c[30]), .Y(io_out_c[62]) );
  AO22X1_HVT U361 ( .A1(n87), .A2(c1_c[31]), .A3(n4), .A4(c2_c[31]), .Y(
        io_out_c[63]) );
  AO22X1_HVT U362 ( .A1(io_out_control_propagate), .A2(c1_c[32]), .A3(n4), 
        .A4(c2_c[32]), .Y(io_out_c[64]) );
  AO22X1_HVT U363 ( .A1(n87), .A2(c1_c[33]), .A3(n4), .A4(c2_c[33]), .Y(
        io_out_c[65]) );
  AO22X1_HVT U364 ( .A1(io_out_control_propagate), .A2(c1_c[34]), .A3(n4), 
        .A4(c2_c[34]), .Y(io_out_c[66]) );
  AO22X1_HVT U365 ( .A1(n87), .A2(c1_c[35]), .A3(n4), .A4(c2_c[35]), .Y(
        io_out_c[67]) );
  AO22X1_HVT U366 ( .A1(io_out_control_propagate), .A2(c1_c[36]), .A3(n4), 
        .A4(c2_c[36]), .Y(io_out_c[68]) );
  AO22X1_HVT U367 ( .A1(n87), .A2(c1_c[37]), .A3(n4), .A4(c2_c[37]), .Y(
        io_out_c[69]) );
  AO22X1_HVT U368 ( .A1(io_out_control_propagate), .A2(c1_c[38]), .A3(n4), 
        .A4(c2_c[38]), .Y(io_out_c[70]) );
  AO22X1_HVT U369 ( .A1(n87), .A2(c1_s[0]), .A3(n258), .A4(c2_s[0]), .Y(
        io_out_c[0]) );
  AO22X1_HVT U370 ( .A1(io_out_control_propagate), .A2(c1_s[1]), .A3(n258), 
        .A4(c2_s[1]), .Y(io_out_c[1]) );
  AO22X1_HVT U371 ( .A1(n266), .A2(c1_s[2]), .A3(n258), .A4(c2_s[2]), .Y(
        io_out_c[2]) );
  AO22X1_HVT U372 ( .A1(n266), .A2(c1_s[3]), .A3(n258), .A4(c2_s[3]), .Y(
        io_out_c[3]) );
  AO22X1_HVT U373 ( .A1(io_in_control_propagate), .A2(c1_s[4]), .A3(n258), 
        .A4(c2_s[4]), .Y(io_out_c[4]) );
  AO22X1_HVT U374 ( .A1(io_in_control_propagate), .A2(c1_s[15]), .A3(n258), 
        .A4(c2_s[15]), .Y(io_out_c[15]) );
  AO22X1_HVT U375 ( .A1(io_in_control_propagate), .A2(c1_s[16]), .A3(n258), 
        .A4(c2_s[16]), .Y(io_out_c[16]) );
  AO22X1_HVT U376 ( .A1(io_in_control_propagate), .A2(c1_s[17]), .A3(n258), 
        .A4(c2_s[17]), .Y(io_out_c[17]) );
  AO22X1_HVT U377 ( .A1(io_in_control_propagate), .A2(c1_s[18]), .A3(n258), 
        .A4(c2_s[18]), .Y(io_out_c[18]) );
  AO22X1_HVT U378 ( .A1(io_in_control_propagate), .A2(c1_s[19]), .A3(n258), 
        .A4(c2_s[19]), .Y(io_out_c[19]) );
  AO22X1_HVT U379 ( .A1(io_in_control_propagate), .A2(c1_s[20]), .A3(n258), 
        .A4(c2_s[20]), .Y(io_out_c[20]) );
  AO22X1_HVT U380 ( .A1(io_in_control_propagate), .A2(c1_s[21]), .A3(n258), 
        .A4(c2_s[21]), .Y(io_out_c[21]) );
  AO22X1_HVT U381 ( .A1(n2), .A2(c1_s[22]), .A3(n258), .A4(c2_s[22]), .Y(
        io_out_c[22]) );
  AO22X1_HVT U382 ( .A1(n218), .A2(c1_s[23]), .A3(n258), .A4(c2_s[23]), .Y(
        io_out_c[23]) );
  AO22X1_HVT U383 ( .A1(n218), .A2(c1_s[24]), .A3(n258), .A4(c2_s[24]), .Y(
        io_out_c[24]) );
  AO22X1_HVT U384 ( .A1(n217), .A2(c1_s[25]), .A3(n258), .A4(c2_s[25]), .Y(
        io_out_c[25]) );
  AO22X1_HVT U385 ( .A1(n218), .A2(c1_s[26]), .A3(n258), .A4(c2_s[26]), .Y(
        io_out_c[26]) );
  AO22X1_HVT U386 ( .A1(n3), .A2(c1_s[27]), .A3(n258), .A4(c2_s[27]), .Y(
        io_out_c[27]) );
  AO22X1_HVT U387 ( .A1(n217), .A2(c1_s[28]), .A3(n258), .A4(c2_s[28]), .Y(
        io_out_c[28]) );
  AO22X1_HVT U388 ( .A1(n218), .A2(c1_s[29]), .A3(n258), .A4(c2_s[29]), .Y(
        io_out_c[29]) );
  AO22X1_HVT U389 ( .A1(n3), .A2(c1_s[30]), .A3(n258), .A4(c2_s[30]), .Y(
        io_out_c[30]) );
  AO22X1_HVT U390 ( .A1(n217), .A2(c1_s[31]), .A3(n258), .A4(c2_s[31]), .Y(
        io_out_c[31]) );
  AND2X1_HVT U391 ( .A1(io_in_d[32]), .A2(n264), .Y(N106) );
  AND2X1_HVT U392 ( .A1(io_in_d[33]), .A2(n264), .Y(N107) );
  AO22X1_HVT U393 ( .A1(n218), .A2(n219), .A3(n258), .A4(io_in_d[34]), .Y(N108) );
  AO22X1_HVT U394 ( .A1(n3), .A2(n220), .A3(n258), .A4(io_in_d[35]), .Y(N109)
         );
  AO22X1_HVT U395 ( .A1(n217), .A2(n221), .A3(n258), .A4(io_in_d[36]), .Y(N110) );
  AO22X1_HVT U396 ( .A1(n218), .A2(n222), .A3(n258), .A4(io_in_d[37]), .Y(N111) );
  AO22X1_HVT U397 ( .A1(n3), .A2(n223), .A3(n258), .A4(io_in_d[48]), .Y(N122)
         );
  AO22X1_HVT U398 ( .A1(n217), .A2(n224), .A3(n258), .A4(io_in_d[49]), .Y(N123) );
  AO22X1_HVT U399 ( .A1(n218), .A2(n225), .A3(n258), .A4(io_in_d[50]), .Y(N124) );
  AO22X1_HVT U400 ( .A1(n3), .A2(n226), .A3(n258), .A4(io_in_d[51]), .Y(N125)
         );
  AO22X1_HVT U401 ( .A1(n218), .A2(n227), .A3(n258), .A4(io_in_d[52]), .Y(N126) );
  AO22X1_HVT U402 ( .A1(n3), .A2(n228), .A3(n258), .A4(io_in_d[53]), .Y(N127)
         );
  AO22X1_HVT U403 ( .A1(n2), .A2(n229), .A3(n256), .A4(io_in_d[54]), .Y(N128)
         );
  AO22X1_HVT U404 ( .A1(n2), .A2(n230), .A3(n256), .A4(io_in_d[55]), .Y(N129)
         );
  AO22X1_HVT U405 ( .A1(n2), .A2(n231), .A3(n256), .A4(io_in_d[56]), .Y(N130)
         );
  AO22X1_HVT U406 ( .A1(n2), .A2(n232), .A3(n256), .A4(io_in_d[57]), .Y(N131)
         );
  AO22X1_HVT U407 ( .A1(n2), .A2(n233), .A3(n256), .A4(io_in_d[58]), .Y(N132)
         );
  AO22X1_HVT U408 ( .A1(n2), .A2(n234), .A3(n256), .A4(io_in_d[59]), .Y(N133)
         );
  AO22X1_HVT U409 ( .A1(n2), .A2(n235), .A3(n256), .A4(io_in_d[60]), .Y(N134)
         );
  INVX2_HVT U410 ( .A(n236), .Y(n260) );
  AO22X1_HVT U411 ( .A1(n260), .A2(n237), .A3(n256), .A4(io_in_d[61]), .Y(N135) );
  AO22X1_HVT U412 ( .A1(n260), .A2(n238), .A3(n256), .A4(io_in_d[62]), .Y(N136) );
  AO22X1_HVT U413 ( .A1(n260), .A2(n239), .A3(n256), .A4(io_in_d[63]), .Y(N137) );
  AO22X1_HVT U414 ( .A1(n260), .A2(io_in_control_shift[0]), .A3(n256), .A4(
        io_in_d[64]), .Y(N138) );
  AO22X1_HVT U415 ( .A1(n260), .A2(io_in_control_shift[1]), .A3(n256), .A4(
        io_in_d[65]), .Y(N139) );
  AO22X1_HVT U416 ( .A1(n260), .A2(io_in_control_shift[2]), .A3(n256), .A4(
        io_in_d[66]), .Y(N140) );
  AO22X1_HVT U417 ( .A1(n260), .A2(io_in_control_shift[3]), .A3(n256), .A4(
        io_in_d[67]), .Y(N141) );
  AO22X1_HVT U418 ( .A1(n260), .A2(io_in_control_shift[4]), .A3(n256), .A4(
        io_in_d[68]), .Y(N142) );
  OR2X1_HVT U419 ( .A1(io_out_control_propagate), .A2(io_in_d[69]), .Y(N143)
         );
  AO22X1_HVT U420 ( .A1(n260), .A2(io_in_valid), .A3(n256), .A4(io_in_d[70]), 
        .Y(N144) );
  AO22X1_HVT U421 ( .A1(n260), .A2(n240), .A3(n256), .A4(io_in_d[0]), .Y(N74)
         );
  AO22X1_HVT U422 ( .A1(n260), .A2(n241), .A3(n256), .A4(io_in_d[1]), .Y(N75)
         );
  AO22X1_HVT U423 ( .A1(n260), .A2(n242), .A3(n256), .A4(io_in_d[2]), .Y(N76)
         );
  AO22X1_HVT U424 ( .A1(n260), .A2(n243), .A3(n256), .A4(io_in_d[3]), .Y(N77)
         );
  AO22X1_HVT U425 ( .A1(n260), .A2(n244), .A3(n256), .A4(io_in_d[4]), .Y(N78)
         );
  AO22X1_HVT U426 ( .A1(n260), .A2(n245), .A3(n256), .A4(io_in_d[15]), .Y(N89)
         );
  AO22X1_HVT U427 ( .A1(n260), .A2(n246), .A3(n256), .A4(io_in_d[16]), .Y(N90)
         );
  AO22X1_HVT U428 ( .A1(n260), .A2(n247), .A3(n256), .A4(io_in_d[17]), .Y(N91)
         );
  AO22X1_HVT U429 ( .A1(n260), .A2(n248), .A3(n256), .A4(io_in_d[18]), .Y(N92)
         );
  AO22X1_HVT U430 ( .A1(n260), .A2(n249), .A3(n256), .A4(io_in_d[19]), .Y(N93)
         );
  AO22X1_HVT U431 ( .A1(n260), .A2(n250), .A3(n256), .A4(io_in_d[20]), .Y(N94)
         );
  AO22X1_HVT U432 ( .A1(n260), .A2(n251), .A3(n256), .A4(io_in_d[21]), .Y(N95)
         );
  AO22X1_HVT U433 ( .A1(n260), .A2(n252), .A3(n256), .A4(io_in_d[22]), .Y(N96)
         );
  AO22X1_HVT U434 ( .A1(n260), .A2(n253), .A3(n256), .A4(io_in_d[23]), .Y(N97)
         );
  AO22X1_HVT U435 ( .A1(n260), .A2(n254), .A3(n256), .A4(io_in_d[24]), .Y(N98)
         );
  AO22X1_HVT U436 ( .A1(n260), .A2(n255), .A3(n256), .A4(io_in_d[25]), .Y(N99)
         );
  AO22X1_HVT U437 ( .A1(n260), .A2(n257), .A3(n256), .A4(io_in_d[26]), .Y(N100) );
  AO22X1_HVT U438 ( .A1(n260), .A2(n259), .A3(n258), .A4(io_in_d[27]), .Y(N101) );
  AO22X1_HVT U439 ( .A1(n266), .A2(n261), .A3(n4), .A4(io_in_d[28]), .Y(N102)
         );
  AO22X1_HVT U440 ( .A1(n266), .A2(n262), .A3(n4), .A4(io_in_d[29]), .Y(N103)
         );
  AO22X1_HVT U441 ( .A1(n266), .A2(n263), .A3(n264), .A4(io_in_d[30]), .Y(N104) );
  AO22X1_HVT U442 ( .A1(n266), .A2(n265), .A3(n264), .A4(io_in_d[31]), .Y(N105) );
endmodule


module top_PE_64 ( CLK, RST, io_in_a1, io_in_b1, io_in_d1, io_in_valid1, 
        io_in_control_shift1, io_in_control_propagate1, io_out_a1, io_out_b1, 
        io_out_c1, io_out_control_propagate1, io_out_control_shift1, 
        io_out_valid1 );
  input [7:0] io_in_a1;
  input [18:0] io_in_b1;
  input [70:0] io_in_d1;
  input [4:0] io_in_control_shift1;
  output [7:0] io_out_a1;
  output [18:0] io_out_b1;
  output [70:0] io_out_c1;
  output [4:0] io_out_control_shift1;
  input CLK, RST, io_in_valid1, io_in_control_propagate1;
  output io_out_control_propagate1, io_out_valid1;
  wire   io_in_valid, io_in_control_propagate, io_out_control_propagate,
         io_out_valid, n8, n9, n10, n11, n12, n13, n14, n15, n16;
  wire   [7:0] io_in_a;
  wire   [18:0] io_in_b;
  wire   [70:0] io_in_d;
  wire   [4:0] io_in_control_shift;
  wire   [7:0] io_out_a;
  wire   [18:0] io_out_b;
  wire   [70:0] io_out_c;
  wire   [4:0] io_out_control_shift;

  PE_64 uut ( .clock(CLK), .RST(1'b0), .io_in_a({n16, n9, n13, io_in_a[4], n15, 
        io_in_a[2], n11, io_in_a[0]}), .io_in_b(io_in_b), .io_in_d(io_in_d), 
        .io_out_a(io_out_a), .io_out_b(io_out_b), .io_out_c(io_out_c), 
        .io_in_control_shift(io_in_control_shift), .io_out_control_shift(
        io_out_control_shift), .io_in_valid(io_in_valid), .io_out_valid(
        io_out_valid), .io_out_control_propagate(io_out_control_propagate), 
        .io_in_control_propagate(io_in_control_propagate) );
  DFFX1_HVT \io_in_a_reg[2]  ( .D(io_in_a1[2]), .CLK(CLK), .Q(io_in_a[2]) );
  DFFX1_HVT \io_in_b_reg[18]  ( .D(io_in_b1[18]), .CLK(CLK), .Q(io_in_b[18])
         );
  DFFX1_HVT \io_in_b_reg[17]  ( .D(io_in_b1[17]), .CLK(CLK), .Q(io_in_b[17])
         );
  DFFX1_HVT \io_in_b_reg[16]  ( .D(io_in_b1[16]), .CLK(CLK), .Q(io_in_b[16])
         );
  DFFX1_HVT \io_in_b_reg[15]  ( .D(io_in_b1[15]), .CLK(CLK), .Q(io_in_b[15])
         );
  DFFX1_HVT \io_in_b_reg[14]  ( .D(io_in_b1[14]), .CLK(CLK), .Q(io_in_b[14])
         );
  DFFX1_HVT \io_in_b_reg[13]  ( .D(io_in_b1[13]), .CLK(CLK), .Q(io_in_b[13])
         );
  DFFX1_HVT \io_in_b_reg[12]  ( .D(io_in_b1[12]), .CLK(CLK), .Q(io_in_b[12])
         );
  DFFX1_HVT \io_in_b_reg[11]  ( .D(io_in_b1[11]), .CLK(CLK), .Q(io_in_b[11])
         );
  DFFX1_HVT \io_in_b_reg[10]  ( .D(io_in_b1[10]), .CLK(CLK), .Q(io_in_b[10])
         );
  DFFX1_HVT \io_in_b_reg[9]  ( .D(io_in_b1[9]), .CLK(CLK), .Q(io_in_b[9]) );
  DFFX1_HVT \io_in_b_reg[8]  ( .D(io_in_b1[8]), .CLK(CLK), .Q(io_in_b[8]) );
  DFFX1_HVT \io_in_b_reg[7]  ( .D(io_in_b1[7]), .CLK(CLK), .Q(io_in_b[7]) );
  DFFX1_HVT \io_in_b_reg[6]  ( .D(io_in_b1[6]), .CLK(CLK), .Q(io_in_b[6]) );
  DFFX1_HVT \io_in_b_reg[5]  ( .D(io_in_b1[5]), .CLK(CLK), .Q(io_in_b[5]) );
  DFFX1_HVT \io_in_b_reg[3]  ( .D(io_in_b1[3]), .CLK(CLK), .Q(io_in_b[3]) );
  DFFX1_HVT \io_in_d_reg[70]  ( .D(io_in_d1[70]), .CLK(CLK), .Q(io_in_d[70])
         );
  DFFX1_HVT \io_in_d_reg[69]  ( .D(io_in_d1[69]), .CLK(CLK), .Q(io_in_d[69])
         );
  DFFX1_HVT \io_in_d_reg[68]  ( .D(io_in_d1[68]), .CLK(CLK), .Q(io_in_d[68])
         );
  DFFX1_HVT \io_in_d_reg[67]  ( .D(io_in_d1[67]), .CLK(CLK), .Q(io_in_d[67])
         );
  DFFX1_HVT \io_in_d_reg[66]  ( .D(io_in_d1[66]), .CLK(CLK), .Q(io_in_d[66])
         );
  DFFX1_HVT \io_in_d_reg[65]  ( .D(io_in_d1[65]), .CLK(CLK), .Q(io_in_d[65])
         );
  DFFX1_HVT \io_in_d_reg[64]  ( .D(io_in_d1[64]), .CLK(CLK), .Q(io_in_d[64])
         );
  DFFX1_HVT \io_in_d_reg[63]  ( .D(io_in_d1[63]), .CLK(CLK), .Q(io_in_d[63])
         );
  DFFX1_HVT \io_in_d_reg[62]  ( .D(io_in_d1[62]), .CLK(CLK), .Q(io_in_d[62])
         );
  DFFX1_HVT \io_in_d_reg[61]  ( .D(io_in_d1[61]), .CLK(CLK), .Q(io_in_d[61])
         );
  DFFX1_HVT \io_in_d_reg[60]  ( .D(io_in_d1[60]), .CLK(CLK), .Q(io_in_d[60])
         );
  DFFX1_HVT \io_in_d_reg[59]  ( .D(io_in_d1[59]), .CLK(CLK), .Q(io_in_d[59])
         );
  DFFX1_HVT \io_in_d_reg[58]  ( .D(io_in_d1[58]), .CLK(CLK), .Q(io_in_d[58])
         );
  DFFX1_HVT \io_in_d_reg[57]  ( .D(io_in_d1[57]), .CLK(CLK), .Q(io_in_d[57])
         );
  DFFX1_HVT \io_in_d_reg[56]  ( .D(io_in_d1[56]), .CLK(CLK), .Q(io_in_d[56])
         );
  DFFX1_HVT \io_in_d_reg[55]  ( .D(io_in_d1[55]), .CLK(CLK), .Q(io_in_d[55])
         );
  DFFX1_HVT \io_in_d_reg[54]  ( .D(io_in_d1[54]), .CLK(CLK), .Q(io_in_d[54])
         );
  DFFX1_HVT \io_in_d_reg[53]  ( .D(io_in_d1[53]), .CLK(CLK), .Q(io_in_d[53])
         );
  DFFX1_HVT \io_in_d_reg[52]  ( .D(io_in_d1[52]), .CLK(CLK), .Q(io_in_d[52])
         );
  DFFX1_HVT \io_in_d_reg[51]  ( .D(io_in_d1[51]), .CLK(CLK), .Q(io_in_d[51])
         );
  DFFX1_HVT \io_in_d_reg[50]  ( .D(io_in_d1[50]), .CLK(CLK), .Q(io_in_d[50])
         );
  DFFX1_HVT \io_in_d_reg[49]  ( .D(io_in_d1[49]), .CLK(CLK), .Q(io_in_d[49])
         );
  DFFX1_HVT \io_in_d_reg[48]  ( .D(io_in_d1[48]), .CLK(CLK), .Q(io_in_d[48])
         );
  DFFX1_HVT \io_in_d_reg[47]  ( .D(io_in_d1[47]), .CLK(CLK), .Q(io_in_d[47])
         );
  DFFX1_HVT \io_in_d_reg[46]  ( .D(io_in_d1[46]), .CLK(CLK), .Q(io_in_d[46])
         );
  DFFX1_HVT \io_in_d_reg[45]  ( .D(io_in_d1[45]), .CLK(CLK), .Q(io_in_d[45])
         );
  DFFX1_HVT \io_in_d_reg[44]  ( .D(io_in_d1[44]), .CLK(CLK), .Q(io_in_d[44])
         );
  DFFX1_HVT \io_in_d_reg[43]  ( .D(io_in_d1[43]), .CLK(CLK), .Q(io_in_d[43])
         );
  DFFX1_HVT \io_in_d_reg[42]  ( .D(io_in_d1[42]), .CLK(CLK), .Q(io_in_d[42])
         );
  DFFX1_HVT \io_in_d_reg[41]  ( .D(io_in_d1[41]), .CLK(CLK), .Q(io_in_d[41])
         );
  DFFX1_HVT \io_in_d_reg[40]  ( .D(io_in_d1[40]), .CLK(CLK), .Q(io_in_d[40])
         );
  DFFX1_HVT \io_in_d_reg[39]  ( .D(io_in_d1[39]), .CLK(CLK), .Q(io_in_d[39])
         );
  DFFX1_HVT \io_in_d_reg[38]  ( .D(io_in_d1[38]), .CLK(CLK), .Q(io_in_d[38])
         );
  DFFX1_HVT \io_in_d_reg[37]  ( .D(io_in_d1[37]), .CLK(CLK), .Q(io_in_d[37])
         );
  DFFX1_HVT \io_in_d_reg[36]  ( .D(io_in_d1[36]), .CLK(CLK), .Q(io_in_d[36])
         );
  DFFX1_HVT \io_in_d_reg[35]  ( .D(io_in_d1[35]), .CLK(CLK), .Q(io_in_d[35])
         );
  DFFX1_HVT \io_in_d_reg[34]  ( .D(io_in_d1[34]), .CLK(CLK), .Q(io_in_d[34])
         );
  DFFX1_HVT \io_in_d_reg[33]  ( .D(io_in_d1[33]), .CLK(CLK), .Q(io_in_d[33])
         );
  DFFX1_HVT \io_in_d_reg[32]  ( .D(io_in_d1[32]), .CLK(CLK), .Q(io_in_d[32])
         );
  DFFX1_HVT \io_in_d_reg[31]  ( .D(io_in_d1[31]), .CLK(CLK), .Q(io_in_d[31])
         );
  DFFX1_HVT \io_in_d_reg[30]  ( .D(io_in_d1[30]), .CLK(CLK), .Q(io_in_d[30])
         );
  DFFX1_HVT \io_in_d_reg[29]  ( .D(io_in_d1[29]), .CLK(CLK), .Q(io_in_d[29])
         );
  DFFX1_HVT \io_in_d_reg[28]  ( .D(io_in_d1[28]), .CLK(CLK), .Q(io_in_d[28])
         );
  DFFX1_HVT \io_in_d_reg[27]  ( .D(io_in_d1[27]), .CLK(CLK), .Q(io_in_d[27])
         );
  DFFX1_HVT \io_in_d_reg[26]  ( .D(io_in_d1[26]), .CLK(CLK), .Q(io_in_d[26])
         );
  DFFX1_HVT \io_in_d_reg[25]  ( .D(io_in_d1[25]), .CLK(CLK), .Q(io_in_d[25])
         );
  DFFX1_HVT \io_in_d_reg[24]  ( .D(io_in_d1[24]), .CLK(CLK), .Q(io_in_d[24])
         );
  DFFX1_HVT \io_in_d_reg[23]  ( .D(io_in_d1[23]), .CLK(CLK), .Q(io_in_d[23])
         );
  DFFX1_HVT \io_in_d_reg[22]  ( .D(io_in_d1[22]), .CLK(CLK), .Q(io_in_d[22])
         );
  DFFX1_HVT \io_in_d_reg[21]  ( .D(io_in_d1[21]), .CLK(CLK), .Q(io_in_d[21])
         );
  DFFX1_HVT \io_in_d_reg[20]  ( .D(io_in_d1[20]), .CLK(CLK), .Q(io_in_d[20])
         );
  DFFX1_HVT \io_in_d_reg[19]  ( .D(io_in_d1[19]), .CLK(CLK), .Q(io_in_d[19])
         );
  DFFX1_HVT \io_in_d_reg[18]  ( .D(io_in_d1[18]), .CLK(CLK), .Q(io_in_d[18])
         );
  DFFX1_HVT \io_in_d_reg[17]  ( .D(io_in_d1[17]), .CLK(CLK), .Q(io_in_d[17])
         );
  DFFX1_HVT \io_in_d_reg[16]  ( .D(io_in_d1[16]), .CLK(CLK), .Q(io_in_d[16])
         );
  DFFX1_HVT \io_in_d_reg[15]  ( .D(io_in_d1[15]), .CLK(CLK), .Q(io_in_d[15])
         );
  DFFX1_HVT \io_in_d_reg[14]  ( .D(io_in_d1[14]), .CLK(CLK), .Q(io_in_d[14])
         );
  DFFX1_HVT \io_in_d_reg[13]  ( .D(io_in_d1[13]), .CLK(CLK), .Q(io_in_d[13])
         );
  DFFX1_HVT \io_in_d_reg[12]  ( .D(io_in_d1[12]), .CLK(CLK), .Q(io_in_d[12])
         );
  DFFX1_HVT \io_in_d_reg[11]  ( .D(io_in_d1[11]), .CLK(CLK), .Q(io_in_d[11])
         );
  DFFX1_HVT \io_in_d_reg[10]  ( .D(io_in_d1[10]), .CLK(CLK), .Q(io_in_d[10])
         );
  DFFX1_HVT \io_in_d_reg[9]  ( .D(io_in_d1[9]), .CLK(CLK), .Q(io_in_d[9]) );
  DFFX1_HVT \io_in_d_reg[8]  ( .D(io_in_d1[8]), .CLK(CLK), .Q(io_in_d[8]) );
  DFFX1_HVT \io_in_d_reg[7]  ( .D(io_in_d1[7]), .CLK(CLK), .Q(io_in_d[7]) );
  DFFX1_HVT \io_in_d_reg[6]  ( .D(io_in_d1[6]), .CLK(CLK), .Q(io_in_d[6]) );
  DFFX1_HVT \io_in_d_reg[5]  ( .D(io_in_d1[5]), .CLK(CLK), .Q(io_in_d[5]) );
  DFFX1_HVT \io_in_d_reg[4]  ( .D(io_in_d1[4]), .CLK(CLK), .Q(io_in_d[4]) );
  DFFX1_HVT \io_in_d_reg[3]  ( .D(io_in_d1[3]), .CLK(CLK), .Q(io_in_d[3]) );
  DFFX1_HVT \io_in_d_reg[2]  ( .D(io_in_d1[2]), .CLK(CLK), .Q(io_in_d[2]) );
  DFFX1_HVT \io_in_d_reg[1]  ( .D(io_in_d1[1]), .CLK(CLK), .Q(io_in_d[1]) );
  DFFX1_HVT \io_in_d_reg[0]  ( .D(io_in_d1[0]), .CLK(CLK), .Q(io_in_d[0]) );
  DFFX1_HVT io_in_valid_reg ( .D(io_in_valid1), .CLK(CLK), .Q(io_in_valid) );
  DFFX1_HVT \io_in_control_shift_reg[4]  ( .D(io_in_control_shift1[4]), .CLK(
        CLK), .Q(io_in_control_shift[4]) );
  DFFX1_HVT \io_in_control_shift_reg[3]  ( .D(io_in_control_shift1[3]), .CLK(
        CLK), .Q(io_in_control_shift[3]) );
  DFFX1_HVT \io_in_control_shift_reg[2]  ( .D(io_in_control_shift1[2]), .CLK(
        CLK), .Q(io_in_control_shift[2]) );
  DFFX1_HVT \io_in_control_shift_reg[1]  ( .D(io_in_control_shift1[1]), .CLK(
        CLK), .Q(io_in_control_shift[1]) );
  DFFX1_HVT \io_in_control_shift_reg[0]  ( .D(io_in_control_shift1[0]), .CLK(
        CLK), .Q(io_in_control_shift[0]) );
  DFFX1_HVT io_in_control_propagate_reg ( .D(io_in_control_propagate1), .CLK(
        CLK), .Q(io_in_control_propagate) );
  DFFX1_HVT \io_out_a1_reg[6]  ( .D(io_out_a[6]), .CLK(CLK), .Q(io_out_a1[6])
         );
  DFFX1_HVT \io_out_a1_reg[5]  ( .D(io_out_a[5]), .CLK(CLK), .Q(io_out_a1[5])
         );
  DFFX1_HVT \io_out_a1_reg[3]  ( .D(io_out_a[3]), .CLK(CLK), .Q(io_out_a1[3])
         );
  DFFX1_HVT \io_out_a1_reg[1]  ( .D(io_out_a[1]), .CLK(CLK), .Q(io_out_a1[1])
         );
  DFFX1_HVT \io_out_b1_reg[18]  ( .D(io_out_b[18]), .CLK(CLK), .Q(
        io_out_b1[18]) );
  DFFX1_HVT \io_out_b1_reg[17]  ( .D(io_out_b[17]), .CLK(CLK), .Q(
        io_out_b1[17]) );
  DFFX1_HVT \io_out_b1_reg[16]  ( .D(io_out_b[16]), .CLK(CLK), .Q(
        io_out_b1[16]) );
  DFFX1_HVT \io_out_b1_reg[15]  ( .D(io_out_b[15]), .CLK(CLK), .Q(
        io_out_b1[15]) );
  DFFX1_HVT \io_out_b1_reg[14]  ( .D(io_out_b[14]), .CLK(CLK), .Q(
        io_out_b1[14]) );
  DFFX1_HVT \io_out_b1_reg[13]  ( .D(io_out_b[13]), .CLK(CLK), .Q(
        io_out_b1[13]) );
  DFFX1_HVT \io_out_b1_reg[12]  ( .D(io_out_b[12]), .CLK(CLK), .Q(
        io_out_b1[12]) );
  DFFX1_HVT \io_out_b1_reg[11]  ( .D(io_out_b[11]), .CLK(CLK), .Q(
        io_out_b1[11]) );
  DFFX1_HVT \io_out_b1_reg[10]  ( .D(io_out_b[10]), .CLK(CLK), .Q(
        io_out_b1[10]) );
  DFFX1_HVT \io_out_b1_reg[9]  ( .D(io_out_b[9]), .CLK(CLK), .Q(io_out_b1[9])
         );
  DFFX1_HVT \io_out_b1_reg[8]  ( .D(io_out_b[8]), .CLK(CLK), .Q(io_out_b1[8])
         );
  DFFX1_HVT \io_out_c1_reg[70]  ( .D(io_out_c[70]), .CLK(CLK), .Q(
        io_out_c1[70]) );
  DFFX1_HVT \io_out_c1_reg[69]  ( .D(io_out_c[69]), .CLK(CLK), .Q(
        io_out_c1[69]) );
  DFFX1_HVT \io_out_c1_reg[68]  ( .D(io_out_c[68]), .CLK(CLK), .Q(
        io_out_c1[68]) );
  DFFX1_HVT \io_out_c1_reg[67]  ( .D(io_out_c[67]), .CLK(CLK), .Q(
        io_out_c1[67]) );
  DFFX1_HVT \io_out_c1_reg[66]  ( .D(io_out_c[66]), .CLK(CLK), .Q(
        io_out_c1[66]) );
  DFFX1_HVT \io_out_c1_reg[65]  ( .D(io_out_c[65]), .CLK(CLK), .Q(
        io_out_c1[65]) );
  DFFX1_HVT \io_out_c1_reg[64]  ( .D(io_out_c[64]), .CLK(CLK), .Q(
        io_out_c1[64]) );
  DFFX1_HVT \io_out_c1_reg[63]  ( .D(io_out_c[63]), .CLK(CLK), .Q(
        io_out_c1[63]) );
  DFFX1_HVT \io_out_c1_reg[62]  ( .D(io_out_c[62]), .CLK(CLK), .Q(
        io_out_c1[62]) );
  DFFX1_HVT \io_out_c1_reg[61]  ( .D(io_out_c[61]), .CLK(CLK), .Q(
        io_out_c1[61]) );
  DFFX1_HVT \io_out_c1_reg[60]  ( .D(io_out_c[60]), .CLK(CLK), .Q(
        io_out_c1[60]) );
  DFFX1_HVT \io_out_c1_reg[59]  ( .D(io_out_c[59]), .CLK(CLK), .Q(
        io_out_c1[59]) );
  DFFX1_HVT \io_out_c1_reg[58]  ( .D(io_out_c[58]), .CLK(CLK), .Q(
        io_out_c1[58]) );
  DFFX1_HVT \io_out_c1_reg[57]  ( .D(io_out_c[57]), .CLK(CLK), .Q(
        io_out_c1[57]) );
  DFFX1_HVT \io_out_c1_reg[56]  ( .D(io_out_c[56]), .CLK(CLK), .Q(
        io_out_c1[56]) );
  DFFX1_HVT \io_out_c1_reg[55]  ( .D(io_out_c[55]), .CLK(CLK), .Q(
        io_out_c1[55]) );
  DFFX1_HVT \io_out_c1_reg[54]  ( .D(io_out_c[54]), .CLK(CLK), .Q(
        io_out_c1[54]) );
  DFFX1_HVT \io_out_c1_reg[53]  ( .D(io_out_c[53]), .CLK(CLK), .Q(
        io_out_c1[53]) );
  DFFX1_HVT \io_out_c1_reg[52]  ( .D(io_out_c[52]), .CLK(CLK), .Q(
        io_out_c1[52]) );
  DFFX1_HVT \io_out_c1_reg[51]  ( .D(io_out_c[51]), .CLK(CLK), .Q(
        io_out_c1[51]) );
  DFFX1_HVT \io_out_c1_reg[50]  ( .D(io_out_c[50]), .CLK(CLK), .Q(
        io_out_c1[50]) );
  DFFX1_HVT \io_out_c1_reg[49]  ( .D(io_out_c[49]), .CLK(CLK), .Q(
        io_out_c1[49]) );
  DFFX1_HVT \io_out_c1_reg[48]  ( .D(io_out_c[48]), .CLK(CLK), .Q(
        io_out_c1[48]) );
  DFFX1_HVT \io_out_c1_reg[47]  ( .D(io_out_c[47]), .CLK(CLK), .Q(
        io_out_c1[47]) );
  DFFX1_HVT \io_out_c1_reg[46]  ( .D(io_out_c[46]), .CLK(CLK), .Q(
        io_out_c1[46]) );
  DFFX1_HVT \io_out_c1_reg[45]  ( .D(io_out_c[45]), .CLK(CLK), .Q(
        io_out_c1[45]) );
  DFFX1_HVT \io_out_c1_reg[44]  ( .D(io_out_c[44]), .CLK(CLK), .Q(
        io_out_c1[44]) );
  DFFX1_HVT \io_out_c1_reg[43]  ( .D(io_out_c[43]), .CLK(CLK), .Q(
        io_out_c1[43]) );
  DFFX1_HVT \io_out_c1_reg[42]  ( .D(io_out_c[42]), .CLK(CLK), .Q(
        io_out_c1[42]) );
  DFFX1_HVT \io_out_c1_reg[41]  ( .D(io_out_c[41]), .CLK(CLK), .Q(
        io_out_c1[41]) );
  DFFX1_HVT \io_out_c1_reg[40]  ( .D(io_out_c[40]), .CLK(CLK), .Q(
        io_out_c1[40]) );
  DFFX1_HVT \io_out_c1_reg[39]  ( .D(io_out_c[39]), .CLK(CLK), .Q(
        io_out_c1[39]) );
  DFFX1_HVT \io_out_c1_reg[38]  ( .D(io_out_c[38]), .CLK(CLK), .Q(
        io_out_c1[38]) );
  DFFX1_HVT \io_out_c1_reg[37]  ( .D(io_out_c[37]), .CLK(CLK), .Q(
        io_out_c1[37]) );
  DFFX1_HVT \io_out_c1_reg[36]  ( .D(io_out_c[36]), .CLK(CLK), .Q(
        io_out_c1[36]) );
  DFFX1_HVT \io_out_c1_reg[35]  ( .D(io_out_c[35]), .CLK(CLK), .Q(
        io_out_c1[35]) );
  DFFX1_HVT \io_out_c1_reg[34]  ( .D(io_out_c[34]), .CLK(CLK), .Q(
        io_out_c1[34]) );
  DFFX1_HVT \io_out_c1_reg[33]  ( .D(io_out_c[33]), .CLK(CLK), .Q(
        io_out_c1[33]) );
  DFFX1_HVT \io_out_c1_reg[32]  ( .D(io_out_c[32]), .CLK(CLK), .Q(
        io_out_c1[32]) );
  DFFX1_HVT \io_out_c1_reg[31]  ( .D(io_out_c[31]), .CLK(CLK), .Q(
        io_out_c1[31]) );
  DFFX1_HVT \io_out_c1_reg[30]  ( .D(io_out_c[30]), .CLK(CLK), .Q(
        io_out_c1[30]) );
  DFFX1_HVT \io_out_c1_reg[29]  ( .D(io_out_c[29]), .CLK(CLK), .Q(
        io_out_c1[29]) );
  DFFX1_HVT \io_out_c1_reg[28]  ( .D(io_out_c[28]), .CLK(CLK), .Q(
        io_out_c1[28]) );
  DFFX1_HVT \io_out_c1_reg[27]  ( .D(io_out_c[27]), .CLK(CLK), .Q(
        io_out_c1[27]) );
  DFFX1_HVT \io_out_c1_reg[26]  ( .D(io_out_c[26]), .CLK(CLK), .Q(
        io_out_c1[26]) );
  DFFX1_HVT \io_out_c1_reg[25]  ( .D(io_out_c[25]), .CLK(CLK), .Q(
        io_out_c1[25]) );
  DFFX1_HVT \io_out_c1_reg[24]  ( .D(io_out_c[24]), .CLK(CLK), .Q(
        io_out_c1[24]) );
  DFFX1_HVT \io_out_c1_reg[23]  ( .D(io_out_c[23]), .CLK(CLK), .Q(
        io_out_c1[23]) );
  DFFX1_HVT \io_out_c1_reg[22]  ( .D(io_out_c[22]), .CLK(CLK), .Q(
        io_out_c1[22]) );
  DFFX1_HVT \io_out_c1_reg[21]  ( .D(io_out_c[21]), .CLK(CLK), .Q(
        io_out_c1[21]) );
  DFFX1_HVT \io_out_c1_reg[20]  ( .D(io_out_c[20]), .CLK(CLK), .Q(
        io_out_c1[20]) );
  DFFX1_HVT \io_out_c1_reg[19]  ( .D(io_out_c[19]), .CLK(CLK), .Q(
        io_out_c1[19]) );
  DFFX1_HVT \io_out_c1_reg[18]  ( .D(io_out_c[18]), .CLK(CLK), .Q(
        io_out_c1[18]) );
  DFFX1_HVT \io_out_c1_reg[17]  ( .D(io_out_c[17]), .CLK(CLK), .Q(
        io_out_c1[17]) );
  DFFX1_HVT \io_out_c1_reg[16]  ( .D(io_out_c[16]), .CLK(CLK), .Q(
        io_out_c1[16]) );
  DFFX1_HVT \io_out_c1_reg[15]  ( .D(io_out_c[15]), .CLK(CLK), .Q(
        io_out_c1[15]) );
  DFFX1_HVT \io_out_c1_reg[14]  ( .D(io_out_c[14]), .CLK(CLK), .Q(
        io_out_c1[14]) );
  DFFX1_HVT \io_out_c1_reg[13]  ( .D(io_out_c[13]), .CLK(CLK), .Q(
        io_out_c1[13]) );
  DFFX1_HVT \io_out_c1_reg[12]  ( .D(io_out_c[12]), .CLK(CLK), .Q(
        io_out_c1[12]) );
  DFFX1_HVT \io_out_c1_reg[11]  ( .D(io_out_c[11]), .CLK(CLK), .Q(
        io_out_c1[11]) );
  DFFX1_HVT \io_out_c1_reg[10]  ( .D(io_out_c[10]), .CLK(CLK), .Q(
        io_out_c1[10]) );
  DFFX1_HVT \io_out_c1_reg[9]  ( .D(io_out_c[9]), .CLK(CLK), .Q(io_out_c1[9])
         );
  DFFX1_HVT \io_out_c1_reg[8]  ( .D(io_out_c[8]), .CLK(CLK), .Q(io_out_c1[8])
         );
  DFFX1_HVT \io_out_c1_reg[7]  ( .D(io_out_c[7]), .CLK(CLK), .Q(io_out_c1[7])
         );
  DFFX1_HVT \io_out_c1_reg[6]  ( .D(io_out_c[6]), .CLK(CLK), .Q(io_out_c1[6])
         );
  DFFX1_HVT \io_out_c1_reg[5]  ( .D(io_out_c[5]), .CLK(CLK), .Q(io_out_c1[5])
         );
  DFFX1_HVT \io_out_c1_reg[4]  ( .D(io_out_c[4]), .CLK(CLK), .Q(io_out_c1[4])
         );
  DFFX1_HVT \io_out_c1_reg[3]  ( .D(io_out_c[3]), .CLK(CLK), .Q(io_out_c1[3])
         );
  DFFX1_HVT \io_out_c1_reg[2]  ( .D(io_out_c[2]), .CLK(CLK), .Q(io_out_c1[2])
         );
  DFFX1_HVT \io_out_c1_reg[1]  ( .D(io_out_c[1]), .CLK(CLK), .Q(io_out_c1[1])
         );
  DFFX1_HVT \io_out_c1_reg[0]  ( .D(io_out_c[0]), .CLK(CLK), .Q(io_out_c1[0])
         );
  DFFX1_HVT io_out_control_propagate1_reg ( .D(io_out_control_propagate), 
        .CLK(CLK), .Q(io_out_control_propagate1) );
  DFFX1_HVT \io_out_control_shift1_reg[4]  ( .D(io_out_control_shift[4]), 
        .CLK(CLK), .Q(io_out_control_shift1[4]) );
  DFFX1_HVT \io_out_control_shift1_reg[3]  ( .D(io_out_control_shift[3]), 
        .CLK(CLK), .Q(io_out_control_shift1[3]) );
  DFFX1_HVT \io_out_control_shift1_reg[2]  ( .D(io_out_control_shift[2]), 
        .CLK(CLK), .Q(io_out_control_shift1[2]) );
  DFFX1_HVT \io_out_control_shift1_reg[1]  ( .D(io_out_control_shift[1]), 
        .CLK(CLK), .Q(io_out_control_shift1[1]) );
  DFFX1_HVT \io_out_control_shift1_reg[0]  ( .D(io_out_control_shift[0]), 
        .CLK(CLK), .Q(io_out_control_shift1[0]) );
  DFFX1_HVT io_out_valid1_reg ( .D(io_out_valid), .CLK(CLK), .Q(io_out_valid1)
         );
  DFFX1_HVT \io_out_a1_reg[7]  ( .D(io_out_a[7]), .CLK(CLK), .Q(io_out_a1[7])
         );
  DFFX1_HVT \io_out_a1_reg[4]  ( .D(io_out_a[4]), .CLK(CLK), .Q(io_out_a1[4])
         );
  DFFX1_HVT \io_out_a1_reg[2]  ( .D(io_out_a[2]), .CLK(CLK), .Q(io_out_a1[2])
         );
  DFFX1_HVT \io_out_a1_reg[0]  ( .D(io_out_a[0]), .CLK(CLK), .Q(io_out_a1[0])
         );
  DFFX1_HVT \io_out_b1_reg[7]  ( .D(io_out_b[7]), .CLK(CLK), .Q(io_out_b1[7])
         );
  DFFX1_HVT \io_out_b1_reg[6]  ( .D(io_out_b[6]), .CLK(CLK), .Q(io_out_b1[6])
         );
  DFFX1_HVT \io_out_b1_reg[5]  ( .D(io_out_b[5]), .CLK(CLK), .Q(io_out_b1[5])
         );
  DFFX1_HVT \io_out_b1_reg[4]  ( .D(io_out_b[4]), .CLK(CLK), .Q(io_out_b1[4])
         );
  DFFX1_HVT \io_out_b1_reg[3]  ( .D(io_out_b[3]), .CLK(CLK), .Q(io_out_b1[3])
         );
  DFFX1_HVT \io_out_b1_reg[2]  ( .D(io_out_b[2]), .CLK(CLK), .Q(io_out_b1[2])
         );
  DFFX1_HVT \io_out_b1_reg[1]  ( .D(io_out_b[1]), .CLK(CLK), .Q(io_out_b1[1])
         );
  DFFX1_HVT \io_out_b1_reg[0]  ( .D(io_out_b[0]), .CLK(CLK), .Q(io_out_b1[0])
         );
  DFFX1_HVT \io_in_a_reg[4]  ( .D(io_in_a1[4]), .CLK(CLK), .Q(io_in_a[4]) );
  DFFX1_HVT \io_in_b_reg[4]  ( .D(io_in_b1[4]), .CLK(CLK), .Q(io_in_b[4]) );
  DFFX1_HVT \io_in_b_reg[2]  ( .D(io_in_b1[2]), .CLK(CLK), .Q(io_in_b[2]) );
  DFFX1_HVT \io_in_b_reg[0]  ( .D(io_in_b1[0]), .CLK(CLK), .Q(io_in_b[0]) );
  DFFX1_HVT \io_in_b_reg[1]  ( .D(io_in_b1[1]), .CLK(CLK), .Q(io_in_b[1]) );
  DFFX1_HVT \io_in_a_reg[0]  ( .D(io_in_a1[0]), .CLK(CLK), .Q(io_in_a[0]) );
  DFFX2_HVT \io_in_a_reg[1]  ( .D(io_in_a1[1]), .CLK(CLK), .QN(n10) );
  DFFSSRX2_HVT \io_in_a_reg[7]  ( .D(1'b0), .SETB(io_in_a1[7]), .RSTB(1'b1), 
        .CLK(CLK), .QN(n16) );
  DFFX1_HVT \io_in_a_reg[5]  ( .D(io_in_a1[5]), .CLK(CLK), .QN(n12) );
  DFFX1_HVT \io_in_a_reg[3]  ( .D(io_in_a1[3]), .CLK(CLK), .QN(n14) );
  DFFX1_HVT \io_in_a_reg[6]  ( .D(io_in_a1[6]), .CLK(CLK), .QN(n8) );
  INVX2_HVT U6 ( .A(n12), .Y(n13) );
  INVX2_HVT U7 ( .A(n8), .Y(n9) );
  INVX2_HVT U8 ( .A(n10), .Y(n11) );
  INVX2_HVT U9 ( .A(n14), .Y(n15) );
endmodule

