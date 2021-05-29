module PE_64( // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166234.2]
  input         clock, // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166235.4]
  input 		RST,
  input  [7:0]  io_in_a, // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166237.4]
  input  [18:0] io_in_b, // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166237.4]
  input  [18:0] io_in_d, // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166237.4]
  output [7:0]  io_out_a, // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166237.4]
  output [18:0] io_out_b, // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166237.4]
  output [18:0] io_out_c, // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166237.4]
  input         io_in_control_propagate, // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166237.4]
  input  [5:0]  io_in_control_shift, // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166237.4]
  output        io_out_control_propagate, // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166237.4]
  output [5:0]  io_out_control_shift, // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166237.4]
  input         io_in_valid, // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166237.4]
  output        io_out_valid // @[:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166237.4]
);
  reg [63:0] c1; // @[PE.scala 44:15:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166239.4]
  reg [63:0] _RAND_0;
  reg [63:0] c2; // @[PE.scala 45:15:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166240.4]
  reg [63:0] _RAND_1;
  reg  last_s; // @[Reg.scala 15:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166246.4]
  reg [31:0] _RAND_2;
  wire  flip; // @[PE.scala 58:21:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166250.4]
  wire [5:0] shift_offset; // @[PE.scala 59:25:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166251.4]
  wire  _T_4; // @[Arithmetic.scala 72:32:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166258.8]
  wire [5:0] _T_6; // @[Arithmetic.scala 72:53:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166260.8]
  wire [63:0] _T_7; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166261.8]
  wire  _T_8; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166262.8]
  wire  _T_9; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166263.8]
  wire  _T_10; // @[Arithmetic.scala 73:27:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166264.8]
  wire [63:0] _T_11; // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166265.8]
  wire [63:0] _T_14; // @[Arithmetic.scala 73:62:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166268.8]
  wire [63:0] _T_16; // @[Arithmetic.scala 73:85:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166270.8]
  wire [63:0] _T_17; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166271.8]
  wire [63:0] _T_18; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166272.8]
  wire  _T_19; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166273.8]
  wire [63:0] _T_20; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166274.8]
  wire  _T_21; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166275.8]
  wire  _T_22; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166276.8]
  wire  _T_23; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166277.8]
  wire [1:0] _T_26; // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166280.8]
  wire [63:0] _GEN_19; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166281.8]
  wire [63:0] _T_28; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166282.8]
  wire [63:0] _T_29; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166283.8]
  wire  _T_30; // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166284.8]
  wire  _T_31; // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166285.8]
  wire [63:0] _T_32; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166286.8]
  wire [63:0] _T_33; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166287.8]
  wire [18:0] _T_34; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166288.8]
  wire [18:0] _T_35; // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166289.8]
  wire [7:0] _T_36; // @[Arithmetic.scala 81:47:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166292.8]
  wire [7:0] _T_37; // @[Arithmetic.scala 81:71:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166293.8]
  wire [15:0] _T_38; // @[Arithmetic.scala 65:49:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166294.8]
  wire [63:0] _GEN_20; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166295.8]
  wire [63:0] _T_40; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166296.8]
  wire [63:0] _T_41; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166297.8]
  wire [63:0] _T_45; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166305.8]
  wire  _T_46; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166306.8]
  wire  _T_47; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166307.8]
  wire [63:0] _T_49; // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166309.8]
  wire [63:0] _T_55; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166315.8]
  wire [63:0] _T_56; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166316.8]
  wire  _T_57; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166317.8]
  wire [63:0] _T_58; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166318.8]
  wire  _T_59; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166319.8]
  wire  _T_60; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166320.8]
  wire  _T_61; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166321.8]
  wire [1:0] _T_64; // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166324.8]
  wire [63:0] _GEN_21; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166325.8]
  wire [63:0] _T_66; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166326.8]
  wire [63:0] _T_67; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166327.8]
  wire  _T_68; // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166328.8]
  wire  _T_69; // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166329.8]
  wire [63:0] _T_70; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166330.8]
  wire [63:0] _T_71; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166331.8]
  wire [18:0] _T_72; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166332.8]
  wire [18:0] _T_73; // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166333.8]
  wire [63:0] _T_78; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166340.8]
  wire [63:0] _T_79; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166341.8]
  wire [18:0] _GEN_1; // @[PE.scala 70:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166257.6]
  wire [63:0] _GEN_13; // @[PE.scala 69:95:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166255.4]
  wire  _T_99; // @[PE.scala 97:9:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166386.4]
  wire [18:0] _GEN_25; // @[PE.scala 71:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166290.8 PE.scala 76:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166334.8 PE.scala 83:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166353.10 PE.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166364.10]
  assign flip = last_s != io_in_control_propagate; // @[PE.scala 58:21:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166250.4]
  assign shift_offset = flip ? io_in_control_shift : 6'h0; // @[PE.scala 59:25:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166251.4]
  assign _T_4 = shift_offset == 6'h0; // @[Arithmetic.scala 72:32:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166258.8]
  assign _T_6 = shift_offset - 6'h1; // @[Arithmetic.scala 72:53:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166260.8]
  assign _T_7 = $signed(c1) >>> _T_6; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166261.8]
  assign _T_8 = _T_7[0]; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166262.8]
  assign _T_9 = _T_4 ? 1'h0 : _T_8; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166263.8]
  assign _T_10 = shift_offset <= 6'h1; // @[Arithmetic.scala 73:27:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166264.8]
  assign _T_11 = $unsigned(c1); // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166265.8]
  assign _T_14 = 64'h1 << _T_6; // @[Arithmetic.scala 73:62:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166268.8]
  assign _T_16 = _T_14 - 64'h1; // @[Arithmetic.scala 73:85:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166270.8]
  assign _T_17 = _T_11 & _T_16; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166271.8]
  assign _T_18 = _T_10 ? 64'h0 : _T_17; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166272.8]
  assign _T_19 = _T_18 != 64'h0; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166273.8]
  assign _T_20 = $signed(c1) >>> shift_offset; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166274.8]
  assign _T_21 = _T_20[0]; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166275.8]
  assign _T_22 = _T_19 | _T_21; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166276.8]
  assign _T_23 = _T_9 & _T_22; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166277.8]
  assign _T_26 = _T_23 ? $signed(2'sh1) : $signed(2'sh0); // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166280.8]
  assign _GEN_19 = {{62{_T_26[1]}},_T_26}; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166281.8]
  assign _T_28 = $signed(_T_20) + $signed(_GEN_19); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166282.8]
  assign _T_29 = $signed(_T_28); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166283.8]
  assign _T_30 = $signed(_T_29) > $signed(64'sh3ffff); // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166284.8]
  assign _T_31 = $signed(_T_29) < $signed(-64'sh40000); // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166285.8]
  assign _T_32 = _T_31 ? $signed(-64'sh40000) : $signed(_T_29); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166286.8]
  assign _T_33 = _T_30 ? $signed(64'sh3ffff) : $signed(_T_32); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166287.8]
  assign _T_34 = _T_33[18:0]; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166288.8]
  assign _T_35 = $signed(_T_34); // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166289.8]
  assign _T_36 = io_in_b[7:0]; // @[Arithmetic.scala 81:47:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166292.8]
  assign _T_37 = $signed(_T_36); // @[Arithmetic.scala 81:71:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166293.8]
  assign _T_38 = $signed(io_in_a) * $signed(_T_37); // @[Arithmetic.scala 65:49:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166294.8]
  assign _GEN_20 = {{48{_T_38[15]}},_T_38}; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166295.8]
  assign _T_40 = $signed(_GEN_20) + $signed(c2); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166296.8]
  assign _T_41 = $signed(_T_40); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166297.8]
  assign _T_45 = $signed(c2) >>> _T_6; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166305.8]
  assign _T_46 = _T_45[0]; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166306.8]
  assign _T_47 = _T_4 ? 1'h0 : _T_46; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166307.8]
  assign _T_49 = $unsigned(c2); // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166309.8]
  assign _T_55 = _T_49 & _T_16; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166315.8]
  assign _T_56 = _T_10 ? 64'h0 : _T_55; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166316.8]
  assign _T_57 = _T_56 != 64'h0; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166317.8]
  assign _T_58 = $signed(c2) >>> shift_offset; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166318.8]
  assign _T_59 = _T_58[0]; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166319.8]
  assign _T_60 = _T_57 | _T_59; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166320.8]
  assign _T_61 = _T_47 & _T_60; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166321.8]
  assign _T_64 = _T_61 ? $signed(2'sh1) : $signed(2'sh0); // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166324.8]
  assign _GEN_21 = {{62{_T_64[1]}},_T_64}; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166325.8]
  assign _T_66 = $signed(_T_58) + $signed(_GEN_21); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166326.8]
  assign _T_67 = $signed(_T_66); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166327.8]
  assign _T_68 = $signed(_T_67) > $signed(64'sh3ffff); // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166328.8]
  assign _T_69 = $signed(_T_67) < $signed(-64'sh40000); // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166329.8]
  assign _T_70 = _T_69 ? $signed(-64'sh40000) : $signed(_T_67); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166330.8]
  assign _T_71 = _T_68 ? $signed(64'sh3ffff) : $signed(_T_70); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166331.8]
  assign _T_72 = _T_71[18:0]; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166332.8]
  assign _T_73 = $signed(_T_72); // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166333.8]
  assign _T_78 = $signed(_GEN_20) + $signed(c1); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166340.8]
  assign _T_79 = $signed(_T_78); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166341.8]
  assign _GEN_1 = io_in_control_propagate ? $signed(_T_35) : $signed(_T_73); // @[PE.scala 70:30:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166257.6]
  assign _GEN_13 = {{45{_GEN_1[18]}},_GEN_1}; // @[PE.scala 69:95:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166255.4]
  assign _T_99 = io_in_valid == 1'h0; // @[PE.scala 97:9:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166386.4]
  assign io_out_a = io_in_a; // @[PE.scala 51:12:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166241.4]
  assign io_out_b = io_in_b; // @[PE.scala 72:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166291.8 PE.scala 77:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166335.8 PE.scala 84:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166360.10 PE.scala 88:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166371.10]
  assign _GEN_25 = _GEN_13[18:0]; // @[PE.scala 71:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166290.8 PE.scala 76:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166334.8 PE.scala 83:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166353.10 PE.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166364.10]
  assign io_out_c = $signed(_GEN_25); // @[PE.scala 71:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166290.8 PE.scala 76:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166334.8 PE.scala 83:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166353.10 PE.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166364.10]
  assign io_out_control_propagate = io_in_control_propagate; // @[PE.scala 53:28:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166243.4]
  assign io_out_control_shift = io_in_control_shift; // @[PE.scala 54:24:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166244.4]
  assign io_out_valid = io_in_valid; // @[PE.scala 55:16:example.TestHarness.GemminiSocTest1RocketConfig864.fir@166245.4]
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
  _RAND_0 = {2{`RANDOM}};
  c1 = _RAND_0[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  c2 = _RAND_1[63:0];
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
        c1 <= {{45{io_in_d[18]}},io_in_d};
      end else begin
        c1 <= _T_79;
      end
    end
    if (!(_T_99)) begin
      if (io_in_control_propagate) begin
        c2 <= _T_41;
      end else begin
        c2 <= {{45{io_in_d[18]}},io_in_d};
      end
    end
    if (io_in_valid) begin
      last_s <= io_in_control_propagate;
    end
  end
endmodule
