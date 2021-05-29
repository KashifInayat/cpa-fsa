module rounding(
input         clock,
input [15:0] c1,
input  [3:0]  io_in_control_shift,
input io_in_control_propagate,
input         io_in_valid,
output [18:0] _T_35
 );
  //wires
  wire  last_s; 
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
  
  //logic  
  assign last_s = io_in_control_propagate;
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
  
endmodule