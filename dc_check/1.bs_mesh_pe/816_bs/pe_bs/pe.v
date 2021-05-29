module PE_64( // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165083.2]
  input         clock, // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165084.4]
  input RST,
  input  [7:0]  io_in_a, // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165086.4]
  input  [18:0] io_in_b, // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165086.4]
  input  [18:0] io_in_d, // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165086.4]
  output [7:0]  io_out_a, // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165086.4]
  output [18:0] io_out_b, // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165086.4]
  output [18:0] io_out_c, // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165086.4]
  input         io_in_control_propagate, // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165086.4]
  input  [3:0]  io_in_control_shift, // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165086.4]
  output        io_out_control_propagate, // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165086.4]
  output [3:0]  io_out_control_shift, // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165086.4]
  input         io_in_valid, // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165086.4]
  output        io_out_valid // @[:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165086.4]
);
  reg [15:0] c1; // @[PE.scala 44:15:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165088.4]
  reg [31:0] _RAND_0;
  reg [15:0] c2; // @[PE.scala 45:15:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165089.4]
  reg [31:0] _RAND_1;
  reg  last_s; // @[Reg.scala 15:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165095.4]
  reg [31:0] _RAND_2;
  wire  flip; // @[PE.scala 58:21:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165099.4]
  wire [3:0] shift_offset; // @[PE.scala 59:25:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165100.4]
  wire  _T_4; // @[Arithmetic.scala 72:32:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165107.8]
  wire [3:0] _T_6; // @[Arithmetic.scala 72:53:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165109.8]
  wire [15:0] _T_7; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165110.8]
  wire  _T_8; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165111.8]
  wire  _T_9; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165112.8]
  wire  _T_10; // @[Arithmetic.scala 73:27:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165113.8]
  wire [15:0] _T_11; // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165114.8]
  wire [15:0] _T_14; // @[Arithmetic.scala 73:62:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165117.8]
  wire [15:0] _T_16; // @[Arithmetic.scala 73:85:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165119.8]
  wire [15:0] _T_17; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165120.8]
  wire [15:0] _T_18; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165121.8]
  wire  _T_19; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165122.8]
  wire [15:0] _T_20; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165123.8]
  wire  _T_21; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165124.8]
  wire  _T_22; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165125.8]
  wire  _T_23; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165126.8]
  wire [1:0] _T_26; // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165129.8]
  wire [15:0] _GEN_19; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165130.8]
  wire [15:0] _T_28; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165131.8]
  wire [15:0] _T_29; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165132.8]
  wire [18:0] _T_32; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165135.8]
  wire [18:0] _T_34; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165137.8]
  wire [18:0] _T_35; // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165138.8]
  wire [7:0] _T_36; // @[Arithmetic.scala 81:47:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165141.8]
  wire [7:0] _T_37; // @[Arithmetic.scala 81:71:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165142.8]
  wire [15:0] _T_38; // @[Arithmetic.scala 65:49:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165143.8]
  wire [15:0] _T_40; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165145.8]
  wire [15:0] _T_41; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165146.8]
  wire [15:0] _T_45; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165154.8]
  wire  _T_46; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165155.8]
  wire  _T_47; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165156.8]
  wire [15:0] _T_49; // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165158.8]
  wire [15:0] _T_55; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165164.8]
  wire [15:0] _T_56; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165165.8]
  wire  _T_57; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165166.8]
  wire [15:0] _T_58; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165167.8]
  wire  _T_59; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165168.8]
  wire  _T_60; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165169.8]
  wire  _T_61; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165170.8]
  wire [1:0] _T_64; // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165173.8]
  wire [15:0] _GEN_20; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165174.8]
  wire [15:0] _T_66; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165175.8]
  wire [15:0] _T_67; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165176.8]
  wire [18:0] _T_70; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165179.8]
  wire [18:0] _T_72; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165181.8]
  wire [18:0] _T_73; // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165182.8]
  wire [15:0] _T_78; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165189.8]
  wire [15:0] _T_79; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165190.8]
  wire [18:0] _GEN_3; // @[PE.scala 70:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165106.6]
  wire [18:0] _GEN_4; // @[PE.scala 70:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165106.6]
  wire  _T_99; // @[PE.scala 97:9:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165235.4]
  wire [18:0] _GEN_17; // @[PE.scala 97:17:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165236.4]
  wire [18:0] _GEN_18; // @[PE.scala 97:17:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165236.4]
  wire [15:0] _GEN_23; // @[PE.scala 74:10:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165148.8 PE.scala 78:10:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165191.8 PE.scala 85:10:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165210.10 PE.scala 98:8:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165237.6]
  wire [15:0] _GEN_24; // @[PE.scala 73:10:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165147.8 PE.scala 79:10:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165192.8 PE.scala 89:10:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165221.10 PE.scala 99:8:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165238.6]
  assign flip = last_s != io_in_control_propagate; // @[PE.scala 58:21:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165099.4]
  assign shift_offset = flip ? io_in_control_shift : 4'h0; // @[PE.scala 59:25:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165100.4]
  assign _T_4 = shift_offset == 4'h0; // @[Arithmetic.scala 72:32:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165107.8]
  assign _T_6 = shift_offset - 4'h1; // @[Arithmetic.scala 72:53:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165109.8]
  assign _T_7 = $signed(c1) >>> _T_6; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165110.8]
  assign _T_8 = _T_7[0]; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165111.8]
  assign _T_9 = _T_4 ? 1'h0 : _T_8; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165112.8]
  assign _T_10 = shift_offset <= 4'h1; // @[Arithmetic.scala 73:27:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165113.8]
  assign _T_11 = $unsigned(c1); // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165114.8]
  assign _T_14 = 16'h1 << _T_6; // @[Arithmetic.scala 73:62:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165117.8]
  assign _T_16 = _T_14 - 16'h1; // @[Arithmetic.scala 73:85:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165119.8]
  assign _T_17 = _T_11 & _T_16; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165120.8]
  assign _T_18 = _T_10 ? 16'h0 : _T_17; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165121.8]
  assign _T_19 = _T_18 != 16'h0; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165122.8]
  assign _T_20 = $signed(c1) >>> shift_offset; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165123.8]
  assign _T_21 = _T_20[0]; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165124.8]
  assign _T_22 = _T_19 | _T_21; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165125.8]
  assign _T_23 = _T_9 & _T_22; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165126.8]
  assign _T_26 = _T_23 ? $signed(2'sh1) : $signed(2'sh0); // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165129.8]
  assign _GEN_19 = {{14{_T_26[1]}},_T_26}; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165130.8]
  assign _T_28 = $signed(_T_20) + $signed(_GEN_19); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165131.8]
  assign _T_29 = $signed(_T_28); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165132.8]
  assign _T_32 = {{3{_T_29[15]}},_T_29}; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165135.8]
  assign _T_34 = $unsigned(_T_32); // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165137.8]
  assign _T_35 = $signed(_T_34); // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165138.8]
  assign _T_36 = io_in_b[7:0]; // @[Arithmetic.scala 81:47:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165141.8]
  assign _T_37 = $signed(_T_36); // @[Arithmetic.scala 81:71:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165142.8]
  assign _T_38 = $signed(io_in_a) * $signed(_T_37); // @[Arithmetic.scala 65:49:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165143.8]
  assign _T_40 = $signed(_T_38) + $signed(c2); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165145.8]
  assign _T_41 = $signed(_T_40); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165146.8]
  assign _T_45 = $signed(c2) >>> _T_6; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165154.8]
  assign _T_46 = _T_45[0]; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165155.8]
  assign _T_47 = _T_4 ? 1'h0 : _T_46; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165156.8]
  assign _T_49 = $unsigned(c2); // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165158.8]
  assign _T_55 = _T_49 & _T_16; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165164.8]
  assign _T_56 = _T_10 ? 16'h0 : _T_55; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165165.8]
  assign _T_57 = _T_56 != 16'h0; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165166.8]
  assign _T_58 = $signed(c2) >>> shift_offset; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165167.8]
  assign _T_59 = _T_58[0]; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165168.8]
  assign _T_60 = _T_57 | _T_59; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165169.8]
  assign _T_61 = _T_47 & _T_60; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165170.8]
  assign _T_64 = _T_61 ? $signed(2'sh1) : $signed(2'sh0); // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165173.8]
  assign _GEN_20 = {{14{_T_64[1]}},_T_64}; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165174.8]
  assign _T_66 = $signed(_T_58) + $signed(_GEN_20); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165175.8]
  assign _T_67 = $signed(_T_66); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165176.8]
  assign _T_70 = {{3{_T_67[15]}},_T_67}; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165179.8]
  assign _T_72 = $unsigned(_T_70); // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165181.8]
  assign _T_73 = $signed(_T_72); // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165182.8]
  assign _T_78 = $signed(_T_38) + $signed(c1); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165189.8]
  assign _T_79 = $signed(_T_78); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165190.8]
  assign _GEN_3 = io_in_control_propagate ? $signed({{3{_T_41[15]}},_T_41}) : $signed(io_in_d); // @[PE.scala 70:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165106.6]
  assign _GEN_4 = io_in_control_propagate ? $signed(io_in_d) : $signed({{3{_T_79[15]}},_T_79}); // @[PE.scala 70:30:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165106.6]
  assign _T_99 = io_in_valid == 1'h0; // @[PE.scala 97:9:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165235.4]
  assign _GEN_17 = _T_99 ? $signed({{3{c1[15]}},c1}) : $signed(_GEN_4); // @[PE.scala 97:17:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165236.4]
  assign _GEN_18 = _T_99 ? $signed({{3{c2[15]}},c2}) : $signed(_GEN_3); // @[PE.scala 97:17:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165236.4]
  assign io_out_a = io_in_a; // @[PE.scala 51:12:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165090.4]
  assign io_out_b = io_in_b; // @[PE.scala 72:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165140.8 PE.scala 77:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165184.8 PE.scala 84:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165209.10 PE.scala 88:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165220.10]
  assign io_out_c = io_in_control_propagate ? $signed(_T_35) : $signed(_T_73); // @[PE.scala 71:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165139.8 PE.scala 76:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165183.8 PE.scala 83:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165202.10 PE.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165213.10]
  assign io_out_control_propagate = io_in_control_propagate; // @[PE.scala 53:28:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165092.4]
  assign io_out_control_shift = io_in_control_shift; // @[PE.scala 54:24:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165093.4]
  assign io_out_valid = io_in_valid; // @[PE.scala 55:16:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165094.4]
  assign _GEN_23 = _GEN_17[15:0]; // @[PE.scala 74:10:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165148.8 PE.scala 78:10:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165191.8 PE.scala 85:10:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165210.10 PE.scala 98:8:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165237.6]
  assign _GEN_24 = _GEN_18[15:0]; // @[PE.scala 73:10:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165147.8 PE.scala 79:10:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165192.8 PE.scala 89:10:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165221.10 PE.scala 99:8:example.TestHarness.GemminiSocTest1RocketConfig8x8.fir@165238.6]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  c1 = _RAND_0[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  c2 = _RAND_1[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  last_s = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    c1 <= $signed(_GEN_23);
    c2 <= $signed(_GEN_24);
    if (io_in_valid) begin
      last_s <= io_in_control_propagate;
    end
  end
endmodule
