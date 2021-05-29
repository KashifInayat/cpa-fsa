/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP2-1
// Date      : Mon Oct 26 15:49:46 2020
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


module mb8_td ( mx1, my1, CLK, RST, sum1, carry1, mx_reg, my_reg );
  input [7:0] mx1;
  input [7:0] my1;
  output [15:0] sum1;
  output [15:0] carry1;
  output [7:0] mx_reg;
  output [7:0] my_reg;
  input CLK, RST;
  wire   n23, n24, n3, n5, n7, n8, n9, n10, n11, n12, n13, n14;
  wire   [15:0] sum;
  wire   [15:0] carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;

  r4_mb8 uut0 ( .mx({n14, n23, n10, mx_reg[4], n12, n8, n24, mx_reg[0]}), .my(
        my_reg), .CLK(1'b0), .RST(1'b0), .sum(sum), .carry({carry[15:3], 
        SYNOPSYS_UNCONNECTED__0, carry[1], SYNOPSYS_UNCONNECTED__1}) );
  DFFX1_HVT \my_reg_reg[6]  ( .D(my1[6]), .CLK(CLK), .Q(my_reg[6]) );
  DFFX1_HVT \my_reg_reg[5]  ( .D(my1[5]), .CLK(CLK), .Q(my_reg[5]) );
  DFFX1_HVT \my_reg_reg[4]  ( .D(my1[4]), .CLK(CLK), .Q(my_reg[4]) );
  DFFX1_HVT \my_reg_reg[3]  ( .D(my1[3]), .CLK(CLK), .Q(my_reg[3]) );
  DFFX1_HVT \my_reg_reg[2]  ( .D(my1[2]), .CLK(CLK), .Q(my_reg[2]) );
  DFFX1_HVT \my_reg_reg[1]  ( .D(my1[1]), .CLK(CLK), .Q(my_reg[1]) );
  DFFX1_HVT \my_reg_reg[0]  ( .D(my1[0]), .CLK(CLK), .Q(my_reg[0]) );
  DFFX1_HVT \sum1_reg[15]  ( .D(sum[15]), .CLK(CLK), .Q(sum1[15]) );
  DFFX1_HVT \sum1_reg[14]  ( .D(sum[14]), .CLK(CLK), .Q(sum1[14]) );
  DFFX1_HVT \sum1_reg[13]  ( .D(sum[13]), .CLK(CLK), .Q(sum1[13]) );
  DFFX1_HVT \sum1_reg[12]  ( .D(sum[12]), .CLK(CLK), .Q(sum1[12]) );
  DFFX1_HVT \sum1_reg[11]  ( .D(sum[11]), .CLK(CLK), .Q(sum1[11]) );
  DFFX1_HVT \sum1_reg[10]  ( .D(sum[10]), .CLK(CLK), .Q(sum1[10]) );
  DFFX1_HVT \sum1_reg[9]  ( .D(sum[9]), .CLK(CLK), .Q(sum1[9]) );
  DFFX1_HVT \sum1_reg[7]  ( .D(sum[7]), .CLK(CLK), .Q(sum1[7]) );
  DFFX1_HVT \sum1_reg[6]  ( .D(sum[6]), .CLK(CLK), .Q(sum1[6]) );
  DFFX1_HVT \sum1_reg[5]  ( .D(sum[5]), .CLK(CLK), .Q(sum1[5]) );
  DFFX1_HVT \sum1_reg[4]  ( .D(sum[4]), .CLK(CLK), .Q(sum1[4]) );
  DFFX1_HVT \sum1_reg[3]  ( .D(sum[3]), .CLK(CLK), .Q(sum1[3]) );
  DFFX1_HVT \sum1_reg[2]  ( .D(sum[2]), .CLK(CLK), .Q(sum1[2]) );
  DFFX1_HVT \sum1_reg[1]  ( .D(sum[1]), .CLK(CLK), .Q(sum1[1]) );
  DFFX1_HVT \sum1_reg[0]  ( .D(sum[0]), .CLK(CLK), .Q(sum1[0]) );
  DFFX1_HVT \carry1_reg[15]  ( .D(carry[15]), .CLK(CLK), .Q(carry1[15]) );
  DFFX1_HVT \carry1_reg[14]  ( .D(carry[14]), .CLK(CLK), .Q(carry1[14]) );
  DFFX1_HVT \carry1_reg[13]  ( .D(carry[13]), .CLK(CLK), .Q(carry1[13]) );
  DFFX1_HVT \carry1_reg[12]  ( .D(carry[12]), .CLK(CLK), .Q(carry1[12]) );
  DFFX1_HVT \carry1_reg[11]  ( .D(carry[11]), .CLK(CLK), .Q(carry1[11]) );
  DFFX1_HVT \carry1_reg[10]  ( .D(carry[10]), .CLK(CLK), .Q(carry1[10]) );
  DFFX1_HVT \carry1_reg[8]  ( .D(carry[8]), .CLK(CLK), .Q(carry1[8]) );
  DFFX1_HVT \carry1_reg[7]  ( .D(carry[7]), .CLK(CLK), .Q(carry1[7]) );
  DFFX1_HVT \carry1_reg[6]  ( .D(carry[6]), .CLK(CLK), .Q(carry1[6]) );
  DFFX1_HVT \carry1_reg[5]  ( .D(carry[5]), .CLK(CLK), .Q(carry1[5]) );
  DFFX1_HVT \carry1_reg[4]  ( .D(carry[4]), .CLK(CLK), .Q(carry1[4]) );
  DFFX1_HVT \carry1_reg[3]  ( .D(carry[3]), .CLK(CLK), .Q(carry1[3]) );
  DFFX1_HVT \carry1_reg[1]  ( .D(carry[1]), .CLK(CLK), .Q(carry1[1]) );
  DFFX1_HVT \mx_reg_reg[0]  ( .D(mx1[0]), .CLK(CLK), .Q(mx_reg[0]) );
  DFFSSRX1_HVT \mx_reg_reg[4]  ( .D(1'b0), .SETB(mx1[4]), .RSTB(1'b1), .CLK(
        CLK), .QN(mx_reg[4]) );
  DFFSSRX2_HVT \mx_reg_reg[6]  ( .D(1'b0), .SETB(mx1[6]), .RSTB(1'b1), .CLK(
        CLK), .Q(n3), .QN(n23) );
  DFFASX1_HVT \carry1_reg[9]  ( .D(carry[9]), .CLK(CLK), .SETB(1'b1), .Q(
        carry1[9]) );
  DFFSSRX2_HVT \mx_reg_reg[1]  ( .D(1'b0), .SETB(mx1[1]), .RSTB(1'b1), .CLK(
        CLK), .Q(n5), .QN(n24) );
  DFFASX1_HVT \sum1_reg[8]  ( .D(sum[8]), .CLK(CLK), .SETB(1'b1), .Q(sum1[8])
         );
  DFFX1_HVT \my_reg_reg[7]  ( .D(my1[7]), .CLK(CLK), .Q(my_reg[7]) );
  DFFX2_HVT \mx_reg_reg[5]  ( .D(mx1[5]), .CLK(CLK), .Q(mx_reg[5]), .QN(n9) );
  DFFX1_HVT \mx_reg_reg[2]  ( .D(mx1[2]), .CLK(CLK), .Q(mx_reg[2]), .QN(n7) );
  DFFX1_HVT \mx_reg_reg[7]  ( .D(mx1[7]), .CLK(CLK), .Q(mx_reg[7]), .QN(n13)
         );
  DFFX1_HVT \mx_reg_reg[3]  ( .D(mx1[3]), .CLK(CLK), .Q(mx_reg[3]), .QN(n11)
         );
  INVX4_HVT U3 ( .A(n13), .Y(n14) );
  INVX4_HVT U4 ( .A(n9), .Y(n10) );
  INVX2_HVT U7 ( .A(n11), .Y(n12) );
  INVX0_HVT U8 ( .A(n3), .Y(mx_reg[6]) );
  INVX1_HVT U9 ( .A(n7), .Y(n8) );
  INVX0_HVT U10 ( .A(n5), .Y(mx_reg[1]) );
endmodule


module mb8_top ( mx1, my1, CLK, RST, sum1, carry1, mx2, my2 );
  input [7:0] mx1;
  input [7:0] my1;
  output [15:0] sum1;
  output [15:0] carry1;
  output [7:0] mx2;
  output [7:0] my2;
  input CLK, RST;

  wire   [7:0] mx_reg;
  wire   [7:0] my_reg;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign carry1[2] = 1'b0;
  assign carry1[0] = 1'b0;

  mb8_td uut ( .mx1(mx1), .my1(my1), .CLK(CLK), .RST(1'b0), .sum1(sum1), 
        .carry1({carry1[15:3], SYNOPSYS_UNCONNECTED__0, carry1[1], 
        SYNOPSYS_UNCONNECTED__1}), .mx_reg(mx_reg), .my_reg(my_reg) );
  DFFX1_HVT \mx2_reg[7]  ( .D(mx_reg[7]), .CLK(CLK), .Q(mx2[7]) );
  DFFX1_HVT \mx2_reg[6]  ( .D(mx_reg[6]), .CLK(CLK), .Q(mx2[6]) );
  DFFX1_HVT \mx2_reg[5]  ( .D(mx_reg[5]), .CLK(CLK), .Q(mx2[5]) );
  DFFX1_HVT \mx2_reg[4]  ( .D(mx_reg[4]), .CLK(CLK), .Q(mx2[4]) );
  DFFX1_HVT \mx2_reg[3]  ( .D(mx_reg[3]), .CLK(CLK), .Q(mx2[3]) );
  DFFX1_HVT \mx2_reg[2]  ( .D(mx_reg[2]), .CLK(CLK), .Q(mx2[2]) );
  DFFX1_HVT \mx2_reg[1]  ( .D(mx_reg[1]), .CLK(CLK), .Q(mx2[1]) );
  DFFX1_HVT \mx2_reg[0]  ( .D(mx_reg[0]), .CLK(CLK), .Q(mx2[0]) );
  DFFX1_HVT \my2_reg[6]  ( .D(my_reg[6]), .CLK(CLK), .Q(my2[6]) );
  DFFX1_HVT \my2_reg[5]  ( .D(my_reg[5]), .CLK(CLK), .Q(my2[5]) );
  DFFX1_HVT \my2_reg[4]  ( .D(my_reg[4]), .CLK(CLK), .Q(my2[4]) );
  DFFX1_HVT \my2_reg[3]  ( .D(my_reg[3]), .CLK(CLK), .Q(my2[3]) );
  DFFX1_HVT \my2_reg[2]  ( .D(my_reg[2]), .CLK(CLK), .Q(my2[2]) );
  DFFX1_HVT \my2_reg[1]  ( .D(my_reg[1]), .CLK(CLK), .Q(my2[1]) );
  DFFX1_HVT \my2_reg[0]  ( .D(my_reg[0]), .CLK(CLK), .Q(my2[0]) );
  DFFX1_HVT \my2_reg[7]  ( .D(my_reg[7]), .CLK(CLK), .Q(my2[7]) );
endmodule

