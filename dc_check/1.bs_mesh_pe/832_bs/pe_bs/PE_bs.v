module PE_64( // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165467.2]
  input         clock, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165468.4]
  input RST,
  input  [7:0]  io_in_a, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input  [18:0] io_in_b, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input  [18:0] io_in_d, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output [7:0]  io_out_a, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output [18:0] io_out_b, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output [18:0] io_out_c, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input         io_in_control_propagate, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input  [4:0]  io_in_control_shift, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output        io_out_control_propagate, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output [4:0]  io_out_control_shift, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input         io_in_valid, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output        io_out_valid // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
);
  reg [31:0] c1; // @[PE.scala 44:15:example.TestHarness.GemminiSocTest1RocketConfig.fir@165472.4]
  reg [31:0] _RAND_0;
  reg [31:0] c2; // @[PE.scala 45:15:example.TestHarness.GemminiSocTest1RocketConfig.fir@165473.4]
  reg [31:0] _RAND_1;
  reg  last_s; // @[Reg.scala 15:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165479.4]
  reg [31:0] _RAND_2;
  wire  flip; // @[PE.scala 58:21:example.TestHarness.GemminiSocTest1RocketConfig.fir@165483.4]
  wire [4:0] shift_offset; // @[PE.scala 59:25:example.TestHarness.GemminiSocTest1RocketConfig.fir@165484.4]
  wire  _T_4; // @[Arithmetic.scala 72:32:example.TestHarness.GemminiSocTest1RocketConfig.fir@165491.8]
  wire [4:0] _T_6; // @[Arithmetic.scala 72:53:example.TestHarness.GemminiSocTest1RocketConfig.fir@165493.8]
  wire [31:0] _T_7; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165494.8]
  wire  _T_8; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165495.8]
  wire  _T_9; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165496.8]
  wire  _T_10; // @[Arithmetic.scala 73:27:example.TestHarness.GemminiSocTest1RocketConfig.fir@165497.8]
  wire [31:0] _T_11; // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig.fir@165498.8]
  wire [31:0] _T_14; // @[Arithmetic.scala 73:62:example.TestHarness.GemminiSocTest1RocketConfig.fir@165501.8]
  wire [31:0] _T_16; // @[Arithmetic.scala 73:85:example.TestHarness.GemminiSocTest1RocketConfig.fir@165503.8]
  wire [31:0] _T_17; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165504.8]
  wire [31:0] _T_18; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165505.8]
  wire  _T_19; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig.fir@165506.8]
  wire [31:0] _T_20; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165507.8]
  wire  _T_21; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165508.8]
  wire  _T_22; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig.fir@165509.8]
  wire  _T_23; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165510.8]
  wire [1:0] _T_26; // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig.fir@165513.8]
  wire [31:0] _GEN_19; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165514.8]
  wire [31:0] _T_28; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165515.8]
  wire [31:0] _T_29; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165516.8]
  wire  _T_30; // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig.fir@165517.8]
  wire  _T_31; // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig.fir@165518.8]
  wire [31:0] _T_32; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165519.8]
  wire [31:0] _T_33; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165520.8]
  wire [18:0] _T_34; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig.fir@165521.8]
  wire [18:0] _T_35; // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig.fir@165522.8]
  wire [7:0] _T_36; // @[Arithmetic.scala 81:47:example.TestHarness.GemminiSocTest1RocketConfig.fir@165525.8]
  wire [7:0] _T_37; // @[Arithmetic.scala 81:71:example.TestHarness.GemminiSocTest1RocketConfig.fir@165526.8]
  wire [15:0] _T_38; // @[Arithmetic.scala 65:49:example.TestHarness.GemminiSocTest1RocketConfig.fir@165527.8]
  wire [31:0] _GEN_20; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165528.8]
  wire [31:0] _T_40; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165529.8]
  wire [31:0] _T_41; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165530.8]
  wire [31:0] _T_45; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165538.8]
  wire  _T_46; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165539.8]
  wire  _T_47; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165540.8]
  wire [31:0] _T_49; // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig.fir@165542.8]
  wire [31:0] _T_55; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165548.8]
  wire [31:0] _T_56; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165549.8]
  wire  _T_57; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig.fir@165550.8]
  wire [31:0] _T_58; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165551.8]
  wire  _T_59; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165552.8]
  wire  _T_60; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig.fir@165553.8]
  wire  _T_61; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165554.8]
  wire [1:0] _T_64; // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig.fir@165557.8]
  wire [31:0] _GEN_21; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165558.8]
  wire [31:0] _T_66; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165559.8]
  wire [31:0] _T_67; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165560.8]
  wire  _T_68; // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig.fir@165561.8]
  wire  _T_69; // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig.fir@165562.8]
  wire [31:0] _T_70; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165563.8]
  wire [31:0] _T_71; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165564.8]
  wire [18:0] _T_72; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig.fir@165565.8]
  wire [18:0] _T_73; // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig.fir@165566.8]
  wire [31:0] _T_78; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165573.8]
  wire [31:0] _T_79; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165574.8]
  wire [18:0] _GEN_1; // @[PE.scala 70:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165490.6]
  wire [31:0] _GEN_13; // @[PE.scala 69:95:example.TestHarness.GemminiSocTest1RocketConfig.fir@165488.4]
  wire  _T_99; // @[PE.scala 97:9:example.TestHarness.GemminiSocTest1RocketConfig.fir@165619.4]
  wire [18:0] _GEN_25; // @[PE.scala 71:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165523.8 PE.scala 76:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165567.8 PE.scala 83:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165586.10 PE.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165597.10]
  assign flip = last_s != io_in_control_propagate; // @[PE.scala 58:21:example.TestHarness.GemminiSocTest1RocketConfig.fir@165483.4]
  assign shift_offset = flip ? io_in_control_shift : 5'h0; // @[PE.scala 59:25:example.TestHarness.GemminiSocTest1RocketConfig.fir@165484.4]
  assign _T_4 = shift_offset == 5'h0; // @[Arithmetic.scala 72:32:example.TestHarness.GemminiSocTest1RocketConfig.fir@165491.8]
  assign _T_6 = shift_offset - 5'h1; // @[Arithmetic.scala 72:53:example.TestHarness.GemminiSocTest1RocketConfig.fir@165493.8]
  assign _T_7 = $signed(c1) >>> _T_6; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165494.8]
  assign _T_8 = _T_7[0]; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165495.8]
  assign _T_9 = _T_4 ? 1'h0 : _T_8; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165496.8]
  assign _T_10 = shift_offset <= 5'h1; // @[Arithmetic.scala 73:27:example.TestHarness.GemminiSocTest1RocketConfig.fir@165497.8]
  assign _T_11 = $unsigned(c1); // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig.fir@165498.8]
  assign _T_14 = 32'h1 << _T_6; // @[Arithmetic.scala 73:62:example.TestHarness.GemminiSocTest1RocketConfig.fir@165501.8]
  assign _T_16 = _T_14 - 32'h1; // @[Arithmetic.scala 73:85:example.TestHarness.GemminiSocTest1RocketConfig.fir@165503.8]
  assign _T_17 = _T_11 & _T_16; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165504.8]
  assign _T_18 = _T_10 ? 32'h0 : _T_17; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165505.8]
  assign _T_19 = _T_18 != 32'h0; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig.fir@165506.8]
  assign _T_20 = $signed(c1) >>> shift_offset; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165507.8]
  assign _T_21 = _T_20[0]; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165508.8]
  assign _T_22 = _T_19 | _T_21; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig.fir@165509.8]
  assign _T_23 = _T_9 & _T_22; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165510.8]
  assign _T_26 = _T_23 ? $signed(2'sh1) : $signed(2'sh0); // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig.fir@165513.8]
  assign _GEN_19 = {{30{_T_26[1]}},_T_26}; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165514.8]
  assign _T_28 = $signed(_T_20) + $signed(_GEN_19); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165515.8]
  assign _T_29 = $signed(_T_28); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165516.8]
  assign _T_30 = $signed(_T_29) > $signed(32'sh3ffff); // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig.fir@165517.8]
  assign _T_31 = $signed(_T_29) < $signed(-32'sh40000); // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig.fir@165518.8]
  assign _T_32 = _T_31 ? $signed(-32'sh40000) : $signed(_T_29); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165519.8]
  assign _T_33 = _T_30 ? $signed(32'sh3ffff) : $signed(_T_32); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165520.8]
  assign _T_34 = _T_33[18:0]; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig.fir@165521.8]
  assign _T_35 = $signed(_T_34); // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig.fir@165522.8]
  assign _T_36 = io_in_b[7:0]; // @[Arithmetic.scala 81:47:example.TestHarness.GemminiSocTest1RocketConfig.fir@165525.8]
  assign _T_37 = $signed(_T_36); // @[Arithmetic.scala 81:71:example.TestHarness.GemminiSocTest1RocketConfig.fir@165526.8]
  assign _T_38 = $signed(_T_37) * $signed(io_in_a); // @[Arithmetic.scala 65:49:example.TestHarness.GemminiSocTest1RocketConfig.fir@165527.8]
  assign _GEN_20 = {{16{_T_38[15]}},_T_38}; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165528.8]
  assign _T_40 = $signed(_GEN_20) + $signed(c2); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165529.8]
  assign _T_41 = $signed(_T_40); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165530.8]
  assign _T_45 = $signed(c2) >>> _T_6; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165538.8]
  assign _T_46 = _T_45[0]; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165539.8]
  assign _T_47 = _T_4 ? 1'h0 : _T_46; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165540.8]
  assign _T_49 = $unsigned(c2); // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig.fir@165542.8]
  assign _T_55 = _T_49 & _T_16; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165548.8]
  assign _T_56 = _T_10 ? 32'h0 : _T_55; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165549.8]
  assign _T_57 = _T_56 != 32'h0; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig.fir@165550.8]
  assign _T_58 = $signed(c2) >>> shift_offset; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165551.8]
  assign _T_59 = _T_58[0]; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165552.8]
  assign _T_60 = _T_57 | _T_59; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig.fir@165553.8]
  assign _T_61 = _T_47 & _T_60; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165554.8]
  assign _T_64 = _T_61 ? $signed(2'sh1) : $signed(2'sh0); // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig.fir@165557.8]
  assign _GEN_21 = {{30{_T_64[1]}},_T_64}; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165558.8]
  assign _T_66 = $signed(_T_58) + $signed(_GEN_21); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165559.8]
  assign _T_67 = $signed(_T_66); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165560.8]
  assign _T_68 = $signed(_T_67) > $signed(32'sh3ffff); // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig.fir@165561.8]
  assign _T_69 = $signed(_T_67) < $signed(-32'sh40000); // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig.fir@165562.8]
  assign _T_70 = _T_69 ? $signed(-32'sh40000) : $signed(_T_67); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165563.8]
  assign _T_71 = _T_68 ? $signed(32'sh3ffff) : $signed(_T_70); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165564.8]
  assign _T_72 = _T_71[18:0]; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig.fir@165565.8]
  assign _T_73 = $signed(_T_72); // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig.fir@165566.8]
  assign _T_78 = $signed(_GEN_20) + $signed(c1); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165573.8]
  assign _T_79 = $signed(_T_78); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165574.8]
  assign _GEN_1 = io_in_control_propagate ? $signed(_T_35) : $signed(_T_73); // @[PE.scala 70:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165490.6]
  assign _GEN_13 = {{13{_GEN_1[18]}},_GEN_1}; // @[PE.scala 69:95:example.TestHarness.GemminiSocTest1RocketConfig.fir@165488.4]
  assign _T_99 = io_in_valid == 1'h0; // @[PE.scala 97:9:example.TestHarness.GemminiSocTest1RocketConfig.fir@165619.4]
  assign io_out_a = io_in_a; // @[PE.scala 51:12:example.TestHarness.GemminiSocTest1RocketConfig.fir@165474.4]
  assign io_out_b = io_in_b; // @[PE.scala 72:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165524.8 PE.scala 77:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165568.8 PE.scala 84:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165593.10 PE.scala 88:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165604.10]
  assign _GEN_25 = _GEN_13[18:0]; // @[PE.scala 71:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165523.8 PE.scala 76:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165567.8 PE.scala 83:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165586.10 PE.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165597.10]
  assign io_out_c = $signed(_GEN_25); // @[PE.scala 71:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165523.8 PE.scala 76:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165567.8 PE.scala 83:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165586.10 PE.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165597.10]
  assign io_out_control_propagate = io_in_control_propagate; // @[PE.scala 53:28:example.TestHarness.GemminiSocTest1RocketConfig.fir@165476.4]
  assign io_out_control_shift = io_in_control_shift; // @[PE.scala 54:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165477.4]
  assign io_out_valid = io_in_valid; // @[PE.scala 55:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165478.4]
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
  c1 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  c2 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  last_s = _RAND_2[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge clock) begin
    if (!(_T_99)) begin
      if (io_in_control_propagate) begin
        c1 <= {{13{io_in_d[18]}},io_in_d};
      end else begin
        c1 <= _T_79;
      end
    end
    if (!(_T_99)) begin
      if (io_in_control_propagate) begin
        c2 <= _T_41;
      end else begin
        c2 <= {{13{io_in_d[18]}},io_in_d};
      end
    end
    if (io_in_valid) begin
      last_s <= io_in_control_propagate;
    end
  end
endmodule
