/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Ultra(TM) in wire load mode
// Version   : K-2015.06-SP2-1
// Date      : Tue Oct 20 10:53:18 2020
/////////////////////////////////////////////////////////////


module r4_mb8 ( mx, my, CLK, RST, sum, carry, IN0 );
  input [7:0] mx;
  input [7:0] my;
  output [15:0] sum;
  output [15:0] carry;
  input CLK, RST, IN0;
  wire   n392, n393, n394, n395, n396, n397, n398, carry_1,
         \b_selector[0].bs/N2 , n1, n2, n3, n4, n5, n6, n7, n8, n9, n10, n11,
         n12, n13, n14, n15, n16, n17, n18, n19, n20, n21, n22, n23, n24, n25,
         n26, n27, n28, n29, n30, n31, n32, n33, n34, n35, n36, n37, n38, n39,
         n40, n41, n42, n43, n44, n45, n46, n47, n48, n49, n50, n51, n52, n53,
         n54, n55, n56, n57, n58, n59, n60, n61, n62, n63, n64, n65, n66, n67,
         n68, n69, n70, n71, n72, n73, n74, n75, n76, n77, n79, n80, n81, n82,
         n83, n84, n85, n86, n87, n88, n89, n90, n91, n92, n93, n94, n95, n96,
         n97, n98, n99, n100, n101, n102, n103, n104, n105, n106, n107, n108,
         n109, n110, n111, n112, n113, n114, n115, n116, n117, n118, n119,
         n120, n121, n122, n123, n124, n125, n126, n127, n128, n129, n130,
         n131, n132, n133, n134, n135, n136, n137, n138, n139, n140, n141,
         n142, n143, n144, n145, n146, n147, n148, n149, n150, n151, n152,
         n153, n154, n155, n156, n157, n158, n159, n160, n161, n162, n163,
         n164, n165, n166, n167, n168, n169, n170, n171, n172, n173, n174,
         n175, n176, n177, n178, n179, n180, n181, n182, n183, n184, n185,
         n188, n189, n190, n191, n192, n193, n194, n195, n196, n197, n198,
         n200, n201, n202, n203, n204, n205, n206, n207, n208, n209, n210,
         n211, n212, n213, n214, n215, n216, n217, n218, n219, n220, n221,
         n222, n223, n224, n225, n226, n227, n228, n229, n230, n231, n232,
         n233, n234, n235, n236, n237, n238, n239, n240, n241, n242, n243,
         n244, n245, n246, n247, n248, n250, n251, n252, n253, n254, n255,
         n256, n257, n258, n259, n260, n261, n262, n263, n264, n265, n266,
         n268, n270, n271, n272, n273, n275, n276, n277, n278, n279, n281,
         n283, n284, n285, n287, n290, n292, n293, n296, n298, n299, n300,
         n301, n302, n303, n304, n305, n306, n307, n308, n309, n310, n311,
         n312, n313, n314, n315, n316, n317, n318, n319, n320, n321, n322,
         n323, n324, n325, n326, n327, n328, n329, n330, n331, n332, n333,
         n334, n335, n336, n337, n338, n339, n340, n341, n342, n343, n344,
         n345, n346, n347, n348, n349, n350, n351, n352, n353, n354, n355,
         n356, n357, n358, n359, n360, n361, n362, n363, n364, n365, n366,
         n367, n368, n369, n370, n371, n372, n373, n374, n375, n376, n377,
         n378, n379, n380, n381, n382, n383, n384, n385, n386, n387, n388,
         n389, n390, n391;
  wire   [3:0] n;
  assign carry[1] = carry_1;
  assign n[1] = mx[3];
  assign sum[0] = \b_selector[0].bs/N2 ;

  DFFX1_HVT R_11 ( .D(n292), .CLK(IN0), .Q(n371) );
  DFFX1_HVT R_12 ( .D(mx[4]), .CLK(IN0), .Q(n393), .QN(n42) );
  DFFX1_HVT R_16 ( .D(n290), .CLK(IN0), .Q(n320) );
  DFFX1_HVT R_19 ( .D(mx[7]), .CLK(IN0), .Q(n[3]), .QN(n188) );
  DFFX1_HVT R_18 ( .D(mx[7]), .CLK(IN0), .Q(n301) );
  DFFX1_HVT R_37 ( .D(n283), .CLK(IN0), .Q(n378) );
  DFFX1_HVT R_30 ( .D(my[6]), .CLK(IN0), .Q(n395) );
  DFFX1_HVT R_329 ( .D(n281), .CLK(IN0), .Q(n347), .QN(n38) );
  DFFX1_HVT R_167 ( .D(n279), .CLK(IN0), .Q(n380), .QN(n195) );
  DFFX1_HVT R_36 ( .D(n287), .CLK(IN0), .Q(n323) );
  DFFX1_HVT R_39 ( .D(n278), .CLK(IN0), .QN(n198) );
  DFFX1_HVT R_41 ( .D(n277), .CLK(IN0), .Q(n362), .QN(n192) );
  DFFX1_HVT R_83 ( .D(n276), .CLK(IN0), .Q(n336), .QN(n191) );
  DFFX1_HVT R_168 ( .D(n275), .CLK(IN0), .Q(n306) );
  DFFX1_HVT R_95 ( .D(my[4]), .CLK(IN0), .Q(n396), .QN(n189) );
  DFFX1_HVT R_99 ( .D(n319), .CLK(IN0), .Q(n273) );
  DFFX1_HVT R_110 ( .D(n363), .CLK(IN0), .Q(n272) );
  DFFX1_HVT R_113 ( .D(n355), .CLK(IN0), .Q(n271) );
  DFFX1_HVT R_166 ( .D(n270), .CLK(IN0), .Q(n352) );
  DFFX1_HVT R_119 ( .D(my[3]), .CLK(IN0), .Q(n397) );
  DFFX1_HVT R_127 ( .D(n268), .CLK(IN0), .Q(n361) );
  DFFX1_HVT R_131 ( .D(n266), .CLK(IN0), .Q(n360) );
  DFFX1_HVT R_134 ( .D(n390), .CLK(IN0), .Q(n265) );
  DFFX1_HVT R_147 ( .D(n330), .CLK(IN0), .QN(n37) );
  DFFX1_HVT R_152 ( .D(n324), .CLK(IN0), .Q(n264) );
  DFFX1_HVT R_157 ( .D(n329), .CLK(IN0), .Q(n263) );
  DFFX1_HVT R_158 ( .D(n328), .CLK(IN0), .Q(n262) );
  DFFX1_HVT R_160 ( .D(n370), .CLK(IN0), .Q(n261) );
  DFFX1_HVT R_164 ( .D(n377), .CLK(IN0), .Q(n260) );
  DFFX1_HVT R_169 ( .D(n259), .CLK(IN0), .Q(n307), .QN(n196) );
  DFFX1_HVT R_170 ( .D(n317), .CLK(IN0), .Q(n258) );
  DFFX1_HVT R_171 ( .D(n316), .CLK(IN0), .Q(n257) );
  DFFX1_HVT R_173 ( .D(n315), .CLK(IN0), .Q(n256) );
  DFFX1_HVT R_177 ( .D(n308), .CLK(IN0), .Q(n255) );
  DFFX1_HVT R_184 ( .D(n333), .CLK(IN0), .Q(n253) );
  DFFX1_HVT R_195 ( .D(n311), .CLK(IN0), .Q(n252) );
  DFFX1_HVT R_197 ( .D(n309), .CLK(IN0), .Q(n251) );
  DFFX1_HVT R_199 ( .D(n250), .CLK(IN0), .Q(n344) );
  DFFX1_HVT R_203 ( .D(n318), .CLK(IN0), .Q(n248) );
  DFFX1_HVT R_205 ( .D(n314), .CLK(IN0), .Q(n247) );
  DFFX1_HVT R_206 ( .D(n312), .CLK(IN0), .Q(n246) );
  DFFX1_HVT R_208 ( .D(n351), .CLK(IN0), .Q(n245) );
  DFFX1_HVT R_225 ( .D(n304), .CLK(IN0), .Q(n242) );
  DFFX1_HVT R_237 ( .D(n342), .CLK(IN0), .Q(n241) );
  DFFX1_HVT R_238 ( .D(n341), .CLK(IN0), .Q(n240) );
  DFFX1_HVT R_239 ( .D(n340), .CLK(IN0), .Q(n239) );
  DFFX1_HVT R_245 ( .D(n375), .CLK(IN0), .Q(n238) );
  DFFX1_HVT R_255 ( .D(n296), .CLK(IN0), .QN(carry[3]) );
  DFFX1_HVT R_257 ( .D(n321), .CLK(IN0), .Q(n236) );
  DFFX1_HVT R_263 ( .D(n305), .CLK(IN0), .Q(n235) );
  DFFX1_HVT R_264 ( .D(n41), .CLK(IN0), .Q(n234) );
  DFFX1_HVT R_265 ( .D(n285), .CLK(IN0), .QN(n197) );
  DFFX1_HVT R_273 ( .D(n194), .CLK(IN0), .Q(n230) );
  DFFX1_HVT R_274 ( .D(n350), .CLK(IN0), .Q(n229) );
  DFFX1_HVT R_277 ( .D(n332), .CLK(IN0), .Q(n228) );
  DFFX1_HVT R_278 ( .D(n331), .CLK(IN0), .Q(n227) );
  DFFX1_HVT R_279 ( .D(n299), .CLK(IN0), .Q(n226) );
  DFFX1_HVT R_281 ( .D(n345), .CLK(IN0), .Q(n224) );
  DFFX1_HVT R_282 ( .D(n353), .CLK(IN0), .Q(n223) );
  DFFX1_HVT R_286 ( .D(n384), .CLK(IN0), .Q(n221) );
  DFFX1_HVT R_287 ( .D(n383), .CLK(IN0), .Q(n220) );
  DFFX1_HVT R_297 ( .D(n374), .CLK(IN0), .Q(n217) );
  DFFX1_HVT R_298 ( .D(n376), .CLK(IN0), .Q(n216) );
  DFFX1_HVT R_301 ( .D(n334), .CLK(IN0), .QN(n36) );
  DFFX1_HVT R_303 ( .D(n339), .CLK(IN0), .QN(n31) );
  DFFX1_HVT R_305 ( .D(n194), .CLK(IN0), .QN(n21) );
  DFFX1_HVT R_306 ( .D(n194), .CLK(IN0), .Q(n215), .QN(n39) );
  DFFX1_HVT R_307 ( .D(n389), .CLK(IN0), .Q(n214) );
  DFFX1_HVT R_308 ( .D(n301), .CLK(IN0), .Q(n213) );
  DFFX1_HVT R_309 ( .D(n367), .CLK(IN0), .Q(n212) );
  DFFX1_HVT R_310 ( .D(n369), .CLK(IN0), .Q(n211) );
  DFFX1_HVT R_311 ( .D(n335), .CLK(IN0), .Q(n210) );
  DFFX1_HVT R_312 ( .D(n387), .CLK(IN0), .Q(n209) );
  DFFX1_HVT R_314 ( .D(n348), .CLK(IN0), .Q(n208) );
  DFFX1_HVT R_315 ( .D(n337), .CLK(IN0), .Q(n207) );
  DFFX1_HVT R_316 ( .D(n388), .CLK(IN0), .QN(n28) );
  DFFX1_HVT R_317 ( .D(n366), .CLK(IN0), .Q(n206) );
  DFFX1_HVT R_318 ( .D(n343), .CLK(IN0), .Q(n205) );
  DFFX1_HVT R_319 ( .D(n310), .CLK(IN0), .Q(n204) );
  DFFX1_HVT R_320 ( .D(n385), .CLK(IN0), .Q(n203) );
  DFFX1_HVT R_322 ( .D(n386), .CLK(IN0), .Q(n202) );
  DFFX1_HVT R_323 ( .D(n391), .CLK(IN0), .Q(n201) );
  DFFX1_HVT R_324 ( .D(n298), .CLK(IN0), .Q(n200) );
  DFFX1_HVT R_10 ( .D(n[1]), .CLK(IN0), .Q(n302), .QN(n193) );
  DFFX1_HVT R_181 ( .D(n346), .CLK(IN0), .Q(n254) );
  DFFX1_HVT R_256 ( .D(n322), .CLK(IN0), .Q(n237) );
  DFFX1_HVT R_280 ( .D(n300), .CLK(IN0), .Q(n225) );
  DFFX1_HVT R_224 ( .D(n372), .CLK(IN0), .Q(n243) );
  DFFX1_HVT R_244 ( .D(n357), .CLK(IN0), .Q(n10) );
  DFFX1_HVT R_285 ( .D(n326), .CLK(IN0), .Q(n222) );
  DFFX1_HVT R_288 ( .D(n382), .CLK(IN0), .Q(n219) );
  DFFX1_HVT R_271 ( .D(n194), .CLK(IN0), .Q(n232) );
  DFFX1_HVT R_222 ( .D(n373), .CLK(IN0), .Q(n244) );
  DFFX1_HVT R_270 ( .D(n325), .CLK(IN0), .Q(n233) );
  DFFX1_HVT R_302 ( .D(n338), .CLK(IN0), .QN(n30) );
  DFFX1_HVT R_272 ( .D(n313), .CLK(IN0), .Q(n231) );
  DFFX1_HVT R_295 ( .D(n368), .CLK(IN0), .Q(n218) );
  DFFX1_HVT R_330 ( .D(my[7]), .CLK(IN0), .Q(n394) );
  DFFX1_HVT R_200_IP ( .D(n250), .CLK(IN0), .Q(n27), .QN(n398) );
  DFFSSRX1_HVT R_3 ( .D(1'b0), .SETB(my[7]), .RSTB(1'b1), .CLK(IN0), .Q(n379), 
        .QN(n293) );
  DFFX1_HVT R_331 ( .D(n287), .CLK(IN0), .Q(n284), .QN(n24) );
  DFFX2_HVT R_40 ( .D(mx[6]), .CLK(IN0), .Q(n392), .QN(n190) );
  DFFX1_HVT R_15 ( .D(mx[5]), .CLK(IN0), .Q(n303), .QN(n194) );
  DFFX1_HVT R_327 ( .D(n154), .CLK(IN0), .Q(n26) );
  DFFX1_HVT R_332 ( .D(n23), .CLK(IN0), .Q(n76) );
  DFFX1_HVT R_334 ( .D(n356), .CLK(IN0), .Q(n22), .QN(n9) );
  DFFX1_HVT R_335 ( .D(n364), .CLK(IN0), .Q(n20) );
  DFFX1_HVT R_336 ( .D(n327), .CLK(IN0), .Q(n19) );
  DFFX1_HVT R_337 ( .D(n365), .CLK(IN0), .Q(n18) );
  DFFX1_HVT R_338 ( .D(n358), .CLK(IN0), .Q(n17), .QN(n16) );
  DFFX1_HVT R_339 ( .D(n349), .CLK(IN0), .Q(n15), .QN(n14) );
  DFFX1_HVT R_340 ( .D(n381), .CLK(IN0), .Q(n13) );
  DFFX1_HVT R_341 ( .D(n303), .CLK(IN0), .Q(n12) );
  DFFX1_HVT R_342 ( .D(n359), .CLK(IN0), .Q(n11) );
  XOR3X1_HVT U3 ( .A1(n381), .A2(n307), .A3(n140), .Y(n310) );
  XOR2X1_HVT U4 ( .A1(n338), .A2(n2), .Y(n341) );
  XOR2X1_HVT U5 ( .A1(n382), .A2(n41), .Y(n304) );
  INVX4_HVT U6 ( .A(n2), .Y(n41) );
  XNOR2X2_HVT U7 ( .A1(n1), .A2(n2), .Y(n358) );
  NAND2X0_HVT U8 ( .A1(n77), .A2(n76), .Y(n1) );
  INVX1_HVT U9 ( .A(n113), .Y(n7) );
  AND2X1_HVT U10 ( .A1(n32), .A2(n346), .Y(n353) );
  AND2X1_HVT U11 ( .A1(n29), .A2(n136), .Y(n32) );
  AND2X1_HVT U12 ( .A1(n346), .A2(n134), .Y(n133) );
  INVX1_HVT U13 ( .A(n130), .Y(n132) );
  XOR2X2_HVT U14 ( .A1(n326), .A2(n2), .Y(n329) );
  NBUFFX4_HVT U15 ( .A(n347), .Y(n44) );
  OR2X2_HVT U16 ( .A1(n302), .A2(n393), .Y(n168) );
  NBUFFX2_HVT U17 ( .A(n44), .Y(n43) );
  XOR2X1_HVT U18 ( .A1(n357), .A2(n2), .Y(n386) );
  XOR2X1_HVT U19 ( .A1(n349), .A2(n2), .Y(n351) );
  OR2X2_HVT U20 ( .A1(n42), .A2(n193), .Y(n169) );
  NBUFFX4_HVT U21 ( .A(n302), .Y(n2) );
  OA22X1_HVT U22 ( .A1(n174), .A2(n192), .A3(n176), .A4(n128), .Y(n322) );
  OA22X1_HVT U23 ( .A1(n107), .A2(n174), .A3(n176), .A4(n53), .Y(n382) );
  INVX0_HVT U24 ( .A(\b_selector[0].bs/N2 ), .Y(n45) );
  OA22X1_HVT U25 ( .A1(n107), .A2(n152), .A3(n189), .A4(n53), .Y(n338) );
  OA22X1_HVT U26 ( .A1(n107), .A2(n379), .A3(n378), .A4(n53), .Y(n357) );
  OA22X1_HVT U27 ( .A1(n378), .A2(n107), .A3(n152), .A4(n53), .Y(n349) );
  INVX1_HVT U28 ( .A(n39), .Y(n40) );
  INVX1_HVT U29 ( .A(n303), .Y(n8) );
  INVX1_HVT U30 ( .A(mx[1]), .Y(n281) );
  INVX1_HVT U31 ( .A(mx[0]), .Y(n287) );
  OA22X1_HVT U32 ( .A1(n371), .A2(n379), .A3(n378), .A4(n34), .Y(n368) );
  XOR2X2_HVT U33 ( .A1(n368), .A2(n387), .Y(n363) );
  NAND2X0_HVT U34 ( .A1(n394), .A2(n3), .Y(n74) );
  AND2X1_HVT U35 ( .A1(n302), .A2(n361), .Y(n3) );
  NAND2X0_HVT U36 ( .A1(n4), .A2(n41), .Y(n156) );
  NAND2X0_HVT U37 ( .A1(n394), .A2(n360), .Y(n4) );
  NAND2X0_HVT U38 ( .A1(n365), .A2(n2), .Y(n157) );
  XOR2X2_HVT U39 ( .A1(n144), .A2(n2), .Y(n316) );
  OA22X1_HVT U40 ( .A1(n380), .A2(n137), .A3(n323), .A4(n58), .Y(n5) );
  NAND2X0_HVT U41 ( .A1(n5), .A2(n59), .Y(n61) );
  XOR2X2_HVT U42 ( .A1(n5), .A2(n75), .Y(sum[2]) );
  NBUFFX2_HVT U43 ( .A(n381), .Y(n6) );
  INVX0_HVT U44 ( .A(n6), .Y(n383) );
  XNOR2X1_HVT U45 ( .A1(n6), .A2(n194), .Y(n335) );
  XOR2X1_HVT U46 ( .A1(n387), .A2(n6), .Y(n343) );
  XOR3X2_HVT U47 ( .A1(n381), .A2(n339), .A3(n338), .Y(n340) );
  XOR3X2_HVT U48 ( .A1(n314), .A2(n381), .A3(n144), .Y(n315) );
  XOR2X2_HVT U49 ( .A1(n38), .A2(n193), .Y(n381) );
  OA22X1_HVT U50 ( .A1(n371), .A2(n344), .A3(n174), .A4(n33), .Y(n325) );
  XOR2X2_HVT U51 ( .A1(n325), .A2(n326), .Y(n318) );
  OA22X1_HVT U52 ( .A1(n371), .A2(n174), .A3(n176), .A4(n82), .Y(n313) );
  XOR2X2_HVT U53 ( .A1(n313), .A2(n144), .Y(n312) );
  OA22X1_HVT U54 ( .A1(n190), .A2(n352), .A3(n344), .A4(n7), .Y(n114) );
  AND2X1_HVT U55 ( .A1(n[3]), .A2(n190), .Y(n113) );
  XOR2X2_HVT U56 ( .A1(n12), .A2(n207), .Y(n101) );
  XOR3X2_HVT U57 ( .A1(n183), .A2(n184), .A3(n182), .Y(sum[12]) );
  XNOR2X2_HVT U58 ( .A1(n8), .A2(n301), .Y(n387) );
  XNOR2X2_HVT U59 ( .A1(n231), .A2(n230), .Y(n145) );
  XOR3X2_HVT U60 ( .A1(n9), .A2(n16), .A3(n10), .Y(n95) );
  NAND2X2_HVT U61 ( .A1(n361), .A2(n360), .Y(n107) );
  XOR2X2_HVT U62 ( .A1(n18), .A2(n20), .Y(n86) );
  XOR2X1_HVT U63 ( .A1(n22), .A2(n21), .Y(n66) );
  INVX0_HVT U64 ( .A(n89), .Y(n25) );
  INVX1_HVT U65 ( .A(n43), .Y(n52) );
  XOR3X1_HVT U66 ( .A1(n210), .A2(n247), .A3(n246), .Y(n141) );
  XOR3X1_HVT U67 ( .A1(n210), .A2(n19), .A3(n248), .Y(n177) );
  XOR2X1_HVT U68 ( .A1(n205), .A2(n207), .Y(n117) );
  XNOR2X1_HVT U69 ( .A1(n233), .A2(n232), .Y(n63) );
  XOR3X1_HVT U70 ( .A1(n13), .A2(n19), .A3(n222), .Y(n62) );
  XOR2X1_HVT U71 ( .A1(n208), .A2(n12), .Y(n65) );
  XOR3X1_HVT U72 ( .A1(n229), .A2(n13), .A3(n15), .Y(n64) );
  INVX0_HVT U73 ( .A(n56), .Y(n55) );
  XNOR2X1_HVT U74 ( .A1(n20), .A2(n215), .Y(n56) );
  XOR3X1_HVT U75 ( .A1(n211), .A2(n272), .A3(n57), .Y(n166) );
  INVX0_HVT U76 ( .A(n107), .Y(n139) );
  INVX0_HVT U77 ( .A(n53), .Y(n138) );
  INVX1_HVT U78 ( .A(my[5]), .Y(n152) );
  NOR2X0_HVT U79 ( .A1(sum[4]), .A2(n40), .Y(carry[5]) );
  INVX0_HVT U80 ( .A(n183), .Y(n109) );
  INVX0_HVT U81 ( .A(n184), .Y(n111) );
  XOR3X1_HVT U82 ( .A1(n221), .A2(n220), .A3(n219), .Y(sum[3]) );
  XOR2X1_HVT U83 ( .A1(n165), .A2(n166), .Y(sum[11]) );
  XOR3X1_HVT U84 ( .A1(n201), .A2(n265), .A3(n185), .Y(sum[13]) );
  INVX0_HVT U85 ( .A(n330), .Y(n321) );
  INVX0_HVT U86 ( .A(n75), .Y(n59) );
  XOR2X1_HVT U87 ( .A1(n372), .A2(n301), .Y(n375) );
  INVX0_HVT U88 ( .A(my[2]), .Y(n250) );
  INVX0_HVT U89 ( .A(n123), .Y(n311) );
  INVX0_HVT U90 ( .A(n390), .Y(n377) );
  INVX0_HVT U91 ( .A(n335), .Y(n324) );
  INVX0_HVT U92 ( .A(n134), .Y(n359) );
  INVX0_HVT U93 ( .A(my[3]), .Y(n270) );
  INVX0_HVT U94 ( .A(mx[5]), .Y(n71) );
  INVX0_HVT U95 ( .A(my[6]), .Y(n283) );
  INVX0_HVT U96 ( .A(carry[15]), .Y(sum[14]) );
  OA22X1_HVT U97 ( .A1(n352), .A2(n107), .A3(n344), .A4(n53), .Y(n144) );
  AO22X1_HVT U98 ( .A1(n361), .A2(n193), .A3(n360), .A4(n302), .Y(n53) );
  OA22X1_HVT U99 ( .A1(n189), .A2(n380), .A3(n323), .A4(n152), .Y(n314) );
  AO22X1_HVT U100 ( .A1(n398), .A2(n139), .A3(n138), .A4(n137), .Y(n140) );
  AND2X1_HVT U101 ( .A1(n132), .A2(n131), .Y(n29) );
  XOR2X2_HVT U102 ( .A1(n30), .A2(n31), .Y(n116) );
  AO22X1_HVT U103 ( .A1(n169), .A2(n194), .A3(n168), .A4(n303), .Y(n33) );
  AO22X1_HVT U104 ( .A1(n169), .A2(n194), .A3(n168), .A4(n303), .Y(n34) );
  AO22X1_HVT U105 ( .A1(n169), .A2(n194), .A3(n168), .A4(n303), .Y(n35) );
  XOR2X2_HVT U106 ( .A1(n14), .A2(n36), .Y(n103) );
  OR2X1_HVT U107 ( .A1(n[3]), .A2(n190), .Y(n112) );
  XNOR2X2_HVT U108 ( .A1(n116), .A2(n37), .Y(n118) );
  NAND2X0_HVT U109 ( .A1(n43), .A2(n284), .Y(n149) );
  MUX21X1_HVT U110 ( .A1(n196), .A2(n306), .S0(n43), .Y(n123) );
  OR2X1_HVT U111 ( .A1(n44), .A2(n152), .Y(n108) );
  XNOR2X2_HVT U112 ( .A1(n44), .A2(n27), .Y(n58) );
  AND2X1_HVT U113 ( .A1(n45), .A2(n52), .Y(carry_1) );
  XOR2X2_HVT U114 ( .A1(n174), .A2(n43), .Y(n175) );
  OA21X1_HVT U115 ( .A1(n43), .A2(n151), .A3(n150), .Y(n342) );
  NAND2X0_HVT U116 ( .A1(n47), .A2(n46), .Y(n285) );
  NAND2X0_HVT U117 ( .A1(n124), .A2(n43), .Y(n46) );
  NAND2X0_HVT U118 ( .A1(n125), .A2(n52), .Y(n47) );
  NAND2X0_HVT U119 ( .A1(n49), .A2(n48), .Y(n143) );
  NAND2X0_HVT U120 ( .A1(n43), .A2(my[5]), .Y(n48) );
  NAND2X0_HVT U121 ( .A1(n314), .A2(n52), .Y(n49) );
  NAND2X0_HVT U122 ( .A1(n51), .A2(n50), .Y(n148) );
  NAND2X0_HVT U123 ( .A1(n43), .A2(n395), .Y(n50) );
  NAND2X0_HVT U124 ( .A1(n327), .A2(n52), .Y(n51) );
  OA22X1_HVT U125 ( .A1(n107), .A2(n189), .A3(n352), .A4(n53), .Y(n326) );
  AO22X1_HVT U126 ( .A1(n206), .A2(n55), .A3(n54), .A4(n28), .Y(n165) );
  NAND2X0_HVT U127 ( .A1(n56), .A2(n214), .Y(n54) );
  NBUFFX2_HVT U128 ( .A(my[1]), .Y(n137) );
  XOR2X1_HVT U129 ( .A1(n235), .A2(n234), .Y(n72) );
  XOR2X1_HVT U130 ( .A1(n205), .A2(n208), .Y(n180) );
  XOR2X1_HVT U131 ( .A1(n73), .A2(n301), .Y(n391) );
  OR2X1_HVT U134 ( .A1(n212), .A2(n200), .Y(n184) );
  NAND2X0_HVT U135 ( .A1(n212), .A2(n200), .Y(n158) );
  NAND2X0_HVT U136 ( .A1(n184), .A2(n158), .Y(n57) );
  INVX1_HVT U137 ( .A(my[0]), .Y(n176) );
  OR2X1_HVT U138 ( .A1(n176), .A2(n107), .Y(n75) );
  NAND2X0_HVT U139 ( .A1(n75), .A2(n41), .Y(n60) );
  NAND2X0_HVT U140 ( .A1(n61), .A2(n60), .Y(n296) );
  OA22X1_HVT U141 ( .A1(n263), .A2(n262), .A3(n63), .A4(n62), .Y(n120) );
  XOR3X2_HVT U142 ( .A1(n118), .A2(n117), .A3(n120), .Y(sum[7]) );
  AO21X1_HVT U143 ( .A1(n225), .A2(n224), .A3(n223), .Y(n94) );
  XOR2X2_HVT U144 ( .A1(n94), .A2(n209), .Y(n96) );
  OA22X1_HVT U145 ( .A1(n214), .A2(n245), .A3(n65), .A4(n64), .Y(n98) );
  XOR3X2_HVT U146 ( .A1(n95), .A2(n96), .A3(n98), .Y(sum[9]) );
  XOR3X2_HVT U147 ( .A1(n18), .A2(n17), .A3(n20), .Y(n87) );
  NAND2X0_HVT U148 ( .A1(n354), .A2(n200), .Y(n88) );
  XOR2X2_HVT U149 ( .A1(n88), .A2(n209), .Y(n70) );
  AO21X1_HVT U150 ( .A1(n66), .A2(n214), .A3(n202), .Y(n69) );
  INVX0_HVT U151 ( .A(n66), .Y(n67) );
  NAND2X0_HVT U152 ( .A1(n67), .A2(n206), .Y(n68) );
  NAND2X0_HVT U153 ( .A1(n69), .A2(n68), .Y(n92) );
  XOR3X2_HVT U154 ( .A1(n70), .A2(n87), .A3(n92), .Y(sum[10]) );
  OR2X1_HVT U155 ( .A1(n176), .A2(n371), .Y(n308) );
  XOR2X1_HVT U156 ( .A1(n308), .A2(n194), .Y(n309) );
  INVX1_HVT U157 ( .A(my[1]), .Y(n174) );
  XNOR2X1_HVT U158 ( .A1(mx[4]), .A2(n[1]), .Y(n292) );
  XNOR2X1_HVT U159 ( .A1(n71), .A2(mx[6]), .Y(n277) );
  XNOR2X1_HVT U160 ( .A1(n204), .A2(n255), .Y(sum[4]) );
  AO22X1_HVT U161 ( .A1(n72), .A2(n252), .A3(n204), .A4(n251), .Y(n142) );
  XOR2X1_HVT U162 ( .A1(n142), .A2(n141), .Y(sum[5]) );
  AOI21X1_HVT U163 ( .A1(n188), .A2(n190), .A3(n320), .Y(n155) );
  OA22X1_HVT U164 ( .A1(n379), .A2(n192), .A3(n378), .A4(n128), .Y(n73) );
  OA22X1_HVT U165 ( .A1(n378), .A2(n192), .A3(n152), .A4(n128), .Y(n372) );
  NAND2X0_HVT U166 ( .A1(n336), .A2(n44), .Y(n150) );
  OR2X1_HVT U167 ( .A1(n293), .A2(n347), .Y(n77) );
  AND2X1_HVT U168 ( .A1(n150), .A2(n77), .Y(n389) );
  INVX1_HVT U169 ( .A(n389), .Y(n366) );
  NAND2X0_HVT U170 ( .A1(n156), .A2(n74), .Y(n167) );
  XOR2X2_HVT U171 ( .A1(n167), .A2(n366), .Y(n369) );
  AO22X1_HVT U172 ( .A1(n169), .A2(n194), .A3(n168), .A4(n303), .Y(n82) );
  NAND3X0_HVT U173 ( .A1(n281), .A2(my[7]), .A3(mx[0]), .Y(n23) );
  XOR2X2_HVT U174 ( .A1(n358), .A2(n387), .Y(n355) );
  AND2X1_HVT U175 ( .A1(n24), .A2(my[0]), .Y(\b_selector[0].bs/N2 ) );
  AND2X1_HVT U176 ( .A1(n191), .A2(n198), .Y(n339) );
  NAND2X0_HVT U177 ( .A1(n24), .A2(n397), .Y(n124) );
  OA21X1_HVT U178 ( .A1(n344), .A2(n380), .A3(n124), .Y(n384) );
  NAND2X0_HVT U179 ( .A1(n113), .A2(n137), .Y(n80) );
  OA21X1_HVT U180 ( .A1(n174), .A2(n112), .A3(n303), .Y(n79) );
  AO21X1_HVT U181 ( .A1(n80), .A2(n194), .A3(n79), .Y(n136) );
  NAND2X0_HVT U182 ( .A1(n362), .A2(n398), .Y(n81) );
  NAND2X0_HVT U183 ( .A1(n136), .A2(n81), .Y(n332) );
  INVX0_HVT U184 ( .A(n332), .Y(n333) );
  OA22X1_HVT U185 ( .A1(n352), .A2(n371), .A3(n344), .A4(n35), .Y(n337) );
  OA22X1_HVT U186 ( .A1(n189), .A2(n371), .A3(n352), .A4(n35), .Y(n348) );
  OR2X1_HVT U187 ( .A1(my[1]), .A2(my[0]), .Y(n129) );
  NAND2X0_HVT U188 ( .A1(n362), .A2(n129), .Y(n83) );
  OA21X1_HVT U189 ( .A1(n392), .A2(n176), .A3(n301), .Y(n131) );
  NAND2X0_HVT U190 ( .A1(n83), .A2(n131), .Y(n331) );
  NAND2X0_HVT U191 ( .A1(n362), .A2(my[0]), .Y(n385) );
  AND2X1_HVT U192 ( .A1(n385), .A2(n301), .Y(n84) );
  OA21X1_HVT U193 ( .A1(n84), .A2(n322), .A3(n331), .Y(n330) );
  NAND2X0_HVT U194 ( .A1(n35), .A2(n371), .Y(n85) );
  NAND2X0_HVT U195 ( .A1(n85), .A2(n394), .Y(n373) );
  INVX0_HVT U196 ( .A(n373), .Y(n374) );
  XOR3X2_HVT U197 ( .A1(n86), .A2(n271), .A3(n25), .Y(n93) );
  XNOR2X1_HVT U198 ( .A1(n87), .A2(n40), .Y(n91) );
  INVX0_HVT U199 ( .A(n88), .Y(n89) );
  MUX21X1_HVT U200 ( .A1(n11), .A2(n89), .S0(n213), .Y(n90) );
  AO22X1_HVT U201 ( .A1(n93), .A2(n92), .A3(n91), .A4(n90), .Y(carry[11]) );
  MUX21X1_HVT U202 ( .A1(n254), .A2(n94), .S0(n213), .Y(n100) );
  XNOR2X2_HVT U203 ( .A1(n95), .A2(n40), .Y(n99) );
  XOR2X2_HVT U204 ( .A1(n96), .A2(n95), .Y(n97) );
  OAI22X1_HVT U205 ( .A1(n100), .A2(n99), .A3(n98), .A4(n97), .Y(carry[10]) );
  AO21X1_HVT U206 ( .A1(n228), .A2(n227), .A3(n226), .Y(n102) );
  MUX21X1_HVT U207 ( .A1(n253), .A2(n102), .S0(n213), .Y(n106) );
  XOR3X2_HVT U208 ( .A1(n210), .A2(n208), .A3(n103), .Y(n105) );
  OA22X1_HVT U209 ( .A1(n241), .A2(n240), .A3(n239), .A4(n101), .Y(n181) );
  XOR2X2_HVT U210 ( .A1(n103), .A2(n102), .Y(n179) );
  XOR2X2_HVT U211 ( .A1(n179), .A2(n180), .Y(n104) );
  OAI22X1_HVT U212 ( .A1(n106), .A2(n105), .A3(n181), .A4(n104), .Y(carry[9])
         );
  OA21X1_HVT U213 ( .A1(n139), .A2(n138), .A3(n394), .Y(n365) );
  OA22X1_HVT U214 ( .A1(n378), .A2(n323), .A3(n24), .A4(n108), .Y(n327) );
  XNOR2X2_HVT U215 ( .A1(n218), .A2(n215), .Y(n160) );
  OR2X1_HVT U216 ( .A1(n211), .A2(n160), .Y(n162) );
  NAND2X0_HVT U217 ( .A1(n162), .A2(n261), .Y(n182) );
  OR2X1_HVT U218 ( .A1(n182), .A2(n111), .Y(n110) );
  XOR3X2_HVT U219 ( .A1(n209), .A2(n244), .A3(n243), .Y(n183) );
  AO22X1_HVT U220 ( .A1(n111), .A2(n182), .A3(n110), .A4(n109), .Y(carry[13])
         );
  OA22X1_HVT U221 ( .A1(n392), .A2(n352), .A3(n344), .A4(n112), .Y(n115) );
  OA22X1_HVT U222 ( .A1(n194), .A2(n115), .A3(n303), .A4(n114), .Y(n346) );
  MUX21X1_HVT U223 ( .A1(n237), .A2(n236), .S0(n213), .Y(n122) );
  XOR3X2_HVT U224 ( .A1(n264), .A2(n207), .A3(n116), .Y(n121) );
  XOR2X2_HVT U225 ( .A1(n118), .A2(n117), .Y(n119) );
  OAI22X1_HVT U226 ( .A1(n122), .A2(n121), .A3(n120), .A4(n119), .Y(carry[8])
         );
  OR2X1_HVT U227 ( .A1(mx[0]), .A2(n281), .Y(n279) );
  NAND2X0_HVT U228 ( .A1(mx[0]), .A2(my[4]), .Y(n275) );
  OA21X1_HVT U229 ( .A1(n270), .A2(n279), .A3(n275), .Y(n259) );
  OR2X1_HVT U230 ( .A1(mx[1]), .A2(mx[2]), .Y(n266) );
  NOR3X0_HVT U231 ( .A1(mx[0]), .A2(n283), .A3(n281), .Y(n278) );
  OA22X1_HVT U232 ( .A1(n378), .A2(n371), .A3(n152), .A4(n35), .Y(n364) );
  INVX0_HVT U233 ( .A(n384), .Y(n125) );
  INVX0_HVT U234 ( .A(n346), .Y(n345) );
  OA21X1_HVT U235 ( .A1(n303), .A2(n392), .A3(n188), .Y(n127) );
  OAI21X1_HVT U236 ( .A1(n190), .A2(n194), .A3(n293), .Y(n126) );
  OAI22X1_HVT U237 ( .A1(n301), .A2(n394), .A3(n127), .A4(n126), .Y(sum[15])
         );
  AO22X1_HVT U238 ( .A1(n127), .A2(n394), .A3(n301), .A4(n126), .Y(carry[15])
         );
  AO21X1_HVT U239 ( .A1(n188), .A2(n190), .A3(n320), .Y(n128) );
  OA22X1_HVT U240 ( .A1(n192), .A2(n189), .A3(n352), .A4(n128), .Y(n134) );
  OA21X1_HVT U241 ( .A1(n398), .A2(n129), .A3(n362), .Y(n130) );
  AND2X1_HVT U242 ( .A1(n132), .A2(n131), .Y(n135) );
  AND2X1_HVT U243 ( .A1(n135), .A2(n136), .Y(n153) );
  NAND2X0_HVT U244 ( .A1(n133), .A2(n32), .Y(n298) );
  INVX0_HVT U245 ( .A(n385), .Y(n319) );
  NAND2X0_HVT U246 ( .A1(n136), .A2(n29), .Y(n300) );
  INVX0_HVT U247 ( .A(n300), .Y(n299) );
  NAND2X0_HVT U248 ( .A1(mx[2]), .A2(mx[1]), .Y(n268) );
  AND2X1_HVT U249 ( .A1(n242), .A2(n197), .Y(carry[4]) );
  INVX0_HVT U250 ( .A(n140), .Y(n305) );
  AND2X1_HVT U251 ( .A1(n142), .A2(n141), .Y(carry[6]) );
  NAND2X0_HVT U252 ( .A1(n143), .A2(n149), .Y(n317) );
  OA22X1_HVT U253 ( .A1(n258), .A2(n257), .A3(n145), .A4(n256), .Y(n178) );
  INVX0_HVT U254 ( .A(n178), .Y(n147) );
  NAND2X0_HVT U255 ( .A1(n178), .A2(n203), .Y(n146) );
  AO22X1_HVT U256 ( .A1(n147), .A2(n273), .A3(n177), .A4(n146), .Y(carry[7])
         );
  MUX21X1_HVT U257 ( .A1(mx[6]), .A2(mx[7]), .S0(mx[5]), .Y(n290) );
  AND2X1_HVT U258 ( .A1(mx[0]), .A2(my[7]), .Y(n276) );
  NAND2X0_HVT U259 ( .A1(n148), .A2(n149), .Y(n328) );
  NAND2X0_HVT U260 ( .A1(n149), .A2(n394), .Y(n350) );
  INVX0_HVT U261 ( .A(n350), .Y(n334) );
  INVX0_HVT U262 ( .A(n339), .Y(n151) );
  OA22X1_HVT U263 ( .A1(n152), .A2(n371), .A3(n189), .A4(n35), .Y(n356) );
  NAND2X0_HVT U264 ( .A1(n153), .A2(n346), .Y(n154) );
  NAND2X0_HVT U265 ( .A1(n26), .A2(n11), .Y(n354) );
  AO22X1_HVT U266 ( .A1(n362), .A2(my[5]), .A3(n155), .A4(n396), .Y(n367) );
  NAND2X0_HVT U267 ( .A1(n157), .A2(n156), .Y(n388) );
  AND2X1_HVT U268 ( .A1(n184), .A2(n158), .Y(n159) );
  MUX21X1_HVT U269 ( .A1(n212), .A2(n159), .S0(n213), .Y(n164) );
  NAND2X0_HVT U270 ( .A1(n211), .A2(n160), .Y(n161) );
  AND2X1_HVT U271 ( .A1(n162), .A2(n161), .Y(n163) );
  AO22X1_HVT U272 ( .A1(n166), .A2(n165), .A3(n164), .A4(n163), .Y(carry[12])
         );
  NAND2X0_HVT U273 ( .A1(n167), .A2(n389), .Y(n370) );
  NAND2X0_HVT U274 ( .A1(n394), .A2(n168), .Y(n376) );
  NAND2X0_HVT U275 ( .A1(n394), .A2(n169), .Y(n171) );
  INVX0_HVT U276 ( .A(n376), .Y(n170) );
  MUX21X1_HVT U277 ( .A1(n171), .A2(n170), .S0(n194), .Y(n390) );
  MUX21X1_HVT U278 ( .A1(n217), .A2(n216), .S0(n40), .Y(n172) );
  NAND2X0_HVT U279 ( .A1(n238), .A2(n172), .Y(n185) );
  NAND2X0_HVT U280 ( .A1(n185), .A2(n260), .Y(n173) );
  NAND2X0_HVT U281 ( .A1(n173), .A2(n201), .Y(carry[14]) );
  AO22X1_HVT U282 ( .A1(n195), .A2(n176), .A3(n175), .A4(n24), .Y(sum[1]) );
  XOR3X2_HVT U283 ( .A1(n178), .A2(n203), .A3(n177), .Y(sum[6]) );
  XOR3X2_HVT U284 ( .A1(n181), .A2(n180), .A3(n179), .Y(sum[8]) );
endmodule


module mb8_td ( mx1, my1, CLK, RST, sum1, carry1, mx_reg, my_reg );
  input [7:0] mx1;
  input [7:0] my1;
  output [15:0] sum1;
  output [15:0] carry1;
  output [7:0] mx_reg;
  output [7:0] my_reg;
  input CLK, RST;
  wire   n3, n4, n5, n6;
  wire   [15:0] sum;
  wire   [15:0] carry;
  wire   SYNOPSYS_UNCONNECTED__0, SYNOPSYS_UNCONNECTED__1;
  assign sum1[13] = sum[13];
  assign sum1[12] = sum[12];
  assign sum1[11] = sum[11];
  assign sum1[10] = sum[10];
  assign sum1[9] = sum[9];
  assign sum1[8] = sum[8];
  assign sum1[7] = sum[7];
  assign sum1[6] = sum[6];
  assign sum1[5] = sum[5];
  assign sum1[4] = sum[4];
  assign sum1[3] = sum[3];
  assign carry1[14] = carry[14];
  assign carry1[13] = carry[13];
  assign carry1[12] = carry[12];
  assign carry1[11] = carry[11];
  assign carry1[10] = carry[10];
  assign carry1[9] = carry[9];
  assign carry1[8] = carry[8];
  assign carry1[7] = carry[7];
  assign carry1[6] = carry[6];
  assign carry1[5] = carry[5];
  assign carry1[4] = carry[4];
  assign carry1[3] = carry[3];

  r4_mb8 uut0 ( .mx(mx1), .my({my1[7:6], my_reg[5], my1[4:2], n6, n5}), .CLK(
        1'b0), .RST(1'b0), .sum(sum), .carry({carry[15:3], 
        SYNOPSYS_UNCONNECTED__0, carry[1], SYNOPSYS_UNCONNECTED__1}), .IN0(CLK) );
  DFFX1_HVT R_14 ( .D(mx1[7]), .CLK(CLK), .Q(mx_reg[7]) );
  DFFX1_HVT R_9 ( .D(mx1[4]), .CLK(CLK), .Q(mx_reg[4]) );
  DFFX1_HVT R_0 ( .D(mx1[3]), .CLK(CLK), .Q(mx_reg[3]) );
  DFFX1_HVT R_125 ( .D(mx1[2]), .CLK(CLK), .Q(mx_reg[2]) );
  DFFX1_HVT R_20 ( .D(mx1[0]), .CLK(CLK), .Q(mx_reg[0]) );
  DFFX1_HVT R_2 ( .D(my1[7]), .CLK(CLK), .Q(my_reg[7]) );
  DFFX1_HVT R_28 ( .D(my1[6]), .CLK(CLK), .Q(my_reg[6]) );
  DFFX1_HVT \my_reg_reg[5]  ( .D(my1[5]), .CLK(CLK), .Q(my_reg[5]) );
  DFFX1_HVT R_93 ( .D(my1[4]), .CLK(CLK), .Q(my_reg[4]) );
  DFFX1_HVT R_117 ( .D(my1[3]), .CLK(CLK), .Q(my_reg[3]) );
  DFFX1_HVT R_198 ( .D(my1[2]), .CLK(CLK), .Q(my_reg[2]) );
  DFFX1_HVT \sum1_reg[15]  ( .D(sum[15]), .CLK(CLK), .Q(sum1[15]) );
  DFFX1_HVT \sum1_reg[14]  ( .D(sum[14]), .CLK(CLK), .Q(sum1[14]) );
  DFFX1_HVT \sum1_reg[2]  ( .D(sum[2]), .CLK(CLK), .Q(sum1[2]) );
  DFFX1_HVT \sum1_reg[1]  ( .D(sum[1]), .CLK(CLK), .Q(sum1[1]) );
  DFFX1_HVT \sum1_reg[0]  ( .D(sum[0]), .CLK(CLK), .Q(sum1[0]) );
  DFFX1_HVT \carry1_reg[15]  ( .D(carry[15]), .CLK(CLK), .Q(carry1[15]) );
  DFFX1_HVT \carry1_reg[1]  ( .D(carry[1]), .CLK(CLK), .Q(carry1[1]) );
  DFFX1_HVT R_5 ( .D(mx1[5]), .CLK(CLK), .Q(mx_reg[5]) );
  DFFX1_HVT R_13 ( .D(mx1[6]), .CLK(CLK), .Q(mx_reg[6]) );
  DFFX1_HVT R_26 ( .D(mx1[1]), .CLK(CLK), .Q(mx_reg[1]) );
  DFFX1_HVT \my_reg_reg[0]  ( .D(my1[0]), .CLK(CLK), .Q(my_reg[0]), .QN(n4) );
  DFFX1_HVT \my_reg_reg[1]  ( .D(my1[1]), .CLK(CLK), .Q(my_reg[1]), .QN(n3) );
  INVX1_HVT U3 ( .A(n3), .Y(n6) );
  INVX1_HVT U4 ( .A(n4), .Y(n5) );
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
  DFFX1_HVT \my2_reg[7]  ( .D(my_reg[7]), .CLK(CLK), .Q(my2[7]) );
  DFFX1_HVT \my2_reg[6]  ( .D(my_reg[6]), .CLK(CLK), .Q(my2[6]) );
  DFFX1_HVT \my2_reg[5]  ( .D(my_reg[5]), .CLK(CLK), .Q(my2[5]) );
  DFFX1_HVT \my2_reg[4]  ( .D(my_reg[4]), .CLK(CLK), .Q(my2[4]) );
  DFFX1_HVT \my2_reg[3]  ( .D(my_reg[3]), .CLK(CLK), .Q(my2[3]) );
  DFFX1_HVT \my2_reg[2]  ( .D(my_reg[2]), .CLK(CLK), .Q(my2[2]) );
  DFFX1_HVT \my2_reg[1]  ( .D(my_reg[1]), .CLK(CLK), .Q(my2[1]) );
  DFFX1_HVT \my2_reg[0]  ( .D(my_reg[0]), .CLK(CLK), .Q(my2[0]) );
endmodule

