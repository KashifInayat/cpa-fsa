module PE_64 #(parameter WIDTH=8)( // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165467.2]
  input         CLK, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165468.4]
  input 		RST,
  input  [7:0]  io_in_a, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input  [18:0] io_in_b, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input  [37:0] io_in_d, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  
  output [7:0]  io_out_a, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output [18:0] io_out_b,//s,d,n,pze,nze[19:0]-- 20 bit 
  output [37:0] io_out_c,//sum, carry [19:0], [19:0] -- 38 bit 
  input         io_in_control_propagate, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input  [4:0]  io_in_control_shift, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output        io_out_control_propagate, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output [4:0]  io_out_control_shift, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input         io_in_valid, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output        io_out_valid // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
);
  reg [31:0] c1_s; // @[PE.scala 44:15:example.TestHarness.GemminiSocTest1RocketConfig.fir@165472.4]
  reg [31:0] c1_c;
  reg [31:0] _RAND_00;
  reg [31:0] _RAND_11;
  
  reg [31:0] c2_s; // @[PE.scala 45:15:example.TestHarness.GemminiSocTest1RocketConfig.fir@165473.4]
  reg [31:0] c2_c;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_01;
  reg  last_s; // @[Reg.scala 15:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165479.4]
  reg [31:0] _RAND_2;
  wire  flip; // @[PE.scala 58:21:example.TestHarness.GemminiSocTest1RocketConfig.fir@165483.4]
  wire [4:0] shift_offset; // @[PE.scala 59:25:example.TestHarness.GemminiSocTest1RocketConfig.fir@165484.4]
  wire  _T_4; // @[Arithmetic.scala 72:32:example.TestHarness.GemminiSocTest1RocketConfig.fir@165491.8]
  wire [4:0] _T_6; // @[Arithmetic.scala 72:53:example.TestHarness.GemminiSocTest1RocketConfig.fir@165493.8]
  wire  _T_10; // @[Arithmetic.scala 73:27:example.TestHarness.GemminiSocTest1RocketConfig.fir@165497.8]

/*********************************FOR C1_S*************/
  wire [31:0] _T_7_s; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165494.8]
  wire  _T_8_s; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165495.8]
  wire  _T_9_s; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165496.8]
  wire [31:0] _T_11_s; // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig.fir@165498.8]
  wire [31:0] _T_14_s; // @[Arithmetic.scala 73:62:example.TestHarness.GemminiSocTest1RocketConfig.fir@165501.8]
  wire [31:0] _T_16_s; // @[Arithmetic.scala 73:85:example.TestHarness.GemminiSocTest1RocketConfig.fir@165503.8]
  wire [31:0] _T_17_s; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165504.8]
  wire [31:0] _T_18_s; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165505.8]
  wire  _T_19_s; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig.fir@165506.8]
  wire [31:0] _T_20_s; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165507.8]
  wire  _T_21_s; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165508.8]
  wire  _T_22_s; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig.fir@165509.8]
  wire  _T_23_s; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165510.8]
  wire [1:0] _T_26_s; // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig.fir@165513.8]
  wire [31:0] _GEN_19_s; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165514.8]
  wire [31:0] _T_28_s; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165515.8]
  wire [31:0] _T_29_s; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165516.8]
  wire  _T_30_s; // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig.fir@165517.8]
  wire  _T_31_s; // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig.fir@165518.8]
  wire [31:0] _T_32_s; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165519.8]
  wire [31:0] _T_33_s; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165520.8]
  wire [18:0] _T_34_s; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig.fir@165521.8]
  wire [18:0] _T_35_s; // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig.fir@165522.8]

/*********************************FOR C1_C*************/
  wire [31:0] _T_7_c;
  wire  _T_8_c; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165495.8]
  wire  _T_9_c; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165496.8]
  wire [31:0] _T_11_c; // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig.fir@165498.8]
  wire [31:0] _T_14_c; // @[Arithmetic.scala 73:62:example.TestHarness.GemminiSocTest1RocketConfig.fir@165501.8]
  wire [31:0] _T_16_c; // @[Arithmetic.scala 73:85:example.TestHarness.GemminiSocTest1RocketConfig.fir@165503.8]
  wire [31:0] _T_17_c; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165504.8]
  wire [31:0] _T_18_c; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165505.8]
  wire  _T_19_c; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig.fir@165506.8]
  wire [31:0] _T_20_c; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165507.8]
  wire  _T_21_c; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165508.8]
  wire  _T_22_c; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig.fir@165509.8]
  wire  _T_23_c; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165510.8]
  wire [1:0] _T_26_c; // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig.fir@165513.8]
  wire [31:0] _GEN_19_c; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165514.8]
  wire [31:0] _T_28_c; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165515.8]
  wire [31:0] _T_29_c; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165516.8]
  wire  _T_30_c; // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig.fir@165517.8]
  wire  _T_31_c; // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig.fir@165518.8]
  wire [31:0] _T_32_c; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165519.8]
  wire [31:0] _T_33_c; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165520.8]
  wire [18:0] _T_34_c; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig.fir@165521.8]
  wire [18:0] _T_35_c; // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig.fir@165522.8]
//Next
  wire [7:0] _T_36; // @[Arithmetic.scala 81:47:example.TestHarness.GemminiSocTest1RocketConfig.fir@165525.8]
  wire [7:0] _T_37; // @[Arithmetic.scala 81:71:example.TestHarness.GemminiSocTest1RocketConfig.fir@165526.8]
  wire [15:0] _T_38_s; // @[Arithmetic.scala 65:49:example.TestHarness.GemminiSocTest1RocketConfig.fir@165527.8]
  wire [15:0] _T_38_c;
  wire [31:0] _GEN_20; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165528.8]
  wire [31:0] _T_40_s;
  wire [31:0] _T_40_c;
  // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165529.8]
  wire [31:0] _T_41_s;
  wire [31:0] _T_41_c;  // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165530.8]
  
  /*********************************FOR C2_s*************/
  wire [31:0] _T_45_s; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165538.8]
  wire  _T_46_s; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165539.8]
  wire  _T_47_s; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165540.8]
  wire [31:0] _T_49_s; // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig.fir@165542.8]
  wire [31:0] _T_55_s; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165548.8]
  wire [31:0] _T_56_s; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165549.8]
  wire  _T_57_s; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig.fir@165550.8]
  wire [31:0] _T_58_s; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165551.8]
  wire  _T_59_s; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165552.8]
  wire  _T_60_s; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig.fir@165553.8]
  wire  _T_61_s; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165554.8]
  wire [1:0] _T_64_s; // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig.fir@165557.8]
  wire [31:0] _GEN_21_s; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165558.8]
  wire [31:0] _T_66_s; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165559.8]
  wire [31:0] _T_67_s; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165560.8]
  wire  _T_68_s; // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig.fir@165561.8]
  wire  _T_69_s; // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig.fir@165562.8]
  wire [31:0] _T_70_s; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165563.8]
  wire [31:0] _T_71_s; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165564.8]
  wire [18:0] _T_72_s; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig.fir@165565.8]
  wire [18:0] _T_73_s; // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig.fir@165566.8]
  /*********************************FOR C2_C*************/
  wire [31:0] _T_45_c; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165538.8]
  wire  _T_46_c; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165539.8]
  wire  _T_47_c; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165540.8]
  wire [31:0] _T_49_c; // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig.fir@165542.8]
  wire [31:0] _T_55_c; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165548.8]
  wire [31:0] _T_56_c; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165549.8]
  wire  _T_57_c; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig.fir@165550.8]
  wire [31:0] _T_58_c; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165551.8]
  wire  _T_59_c; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165552.8]
  wire  _T_60_c; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig.fir@165553.8]
  wire  _T_61_c; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165554.8]
  wire [1:0] _T_64_c; // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig.fir@165557.8]
  wire [31:0] _GEN_21_c; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165558.8]
  wire [31:0] _T_66_c; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165559.8]
  wire [31:0] _T_67_c; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165560.8]
  wire  _T_68_c; // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig.fir@165561.8]
  wire  _T_69_c; // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig.fir@165562.8]
  wire [31:0] _T_70_c; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165563.8]
  wire [31:0] _T_71_c; // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165564.8]
  wire [18:0] _T_72_c; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig.fir@165565.8]
  wire [18:0] _T_73_c; // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig.fir@165566.8]
  wire [31:0] _T_78_s; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165573.8]
  wire [31:0] _T_78_c;
  wire [31:0] _T_79_s; // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165574.8]
  wire [31:0] _T_79_c;
  wire [18:0] _GEN_1; // @[PE.scala 70:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165490.6]
  wire [18:0] _GEN_13; // @[PE.scala 69:95:example.TestHarness.GemminiSocTest1RocketConfig.fir@165488.4]
  wire [18:0] _GEN_2; // @[PE.scala 70:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165490.6]
  wire [18:0] _GEN_14; // @[PE.scala 69:95:example.TestHarness.GemminiSocTest1RocketConfig.fir@165488.4]
  wire  _T_99; // @[PE.scala 97:9:example.TestHarness.GemminiSocTest1RocketConfig.fir@165619.4]
  wire [18:0] _GEN_25;
  wire [18:0] _GEN_26;
  // @[PE.scala 71:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165523.8 PE.scala 76:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165567.8 PE.scala 83:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165586.10 PE.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165597.10]
  assign flip = last_s != io_in_control_propagate; // @[PE.scala 58:21:example.TestHarness.GemminiSocTest1RocketConfig.fir@165483.4]
  assign shift_offset = flip ? io_in_control_shift : 5'h0; // @[PE.scala 59:25:example.TestHarness.GemminiSocTest1RocketConfig.fir@165484.4]
  assign _T_4 = shift_offset == 5'h0; // @[Arithmetic.scala 72:32:example.TestHarness.GemminiSocTest1RocketConfig.fir@165491.8]
  assign _T_6 = shift_offset - 5'h1; // @[Arithmetic.scala 72:53:example.TestHarness.GemminiSocTest1RocketConfig.fir@165493.8]
  assign _T_10 = shift_offset <= 5'h1; // @[Arithmetic.scala 73:27:example.TestHarness.GemminiSocTest1RocketConfig.fir@165497.8]
  
/********************FOR C1_S*******************/
  assign _T_7_s = $signed(c1_s) >>> _T_6; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165494.8]
  assign _T_8_s = _T_7_s[0]; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165495.8]
  assign _T_9_s = _T_4 ? 1'h0 : _T_8_s; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165496.8]
  assign _T_11_s = $unsigned(c1_s); // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig.fir@165498.8]
  assign _T_14_s = 32'h1 << _T_6; // @[Arithmetic.scala 73:62:example.TestHarness.GemminiSocTest1RocketConfig.fir@165501.8]
  assign _T_16_s = _T_14_s - 32'h1; // @[Arithmetic.scala 73:85:example.TestHarness.GemminiSocTest1RocketConfig.fir@165503.8]
  assign _T_17_s = _T_11_s & _T_16_s; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165504.8]
  assign _T_18_s = _T_10 ? 32'h0 : _T_17_s; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165505.8]
  assign _T_19_s = _T_18_s != 32'h0; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig.fir@165506.8]
  assign _T_20_s = $signed(c1_s) >>> shift_offset; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165507.8]
  assign _T_21_s = _T_20_s[0]; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165508.8]
  assign _T_22_s = _T_19_s | _T_21_s; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig.fir@165509.8]
  assign _T_23_s = _T_9_s & _T_22_s; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165510.8]
  assign _T_26_s = _T_23_s ? $signed(2'sh1) : $signed(2'sh0); // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig.fir@165513.8]
  assign _GEN_19_s = {{30{_T_26_s[1]}},_T_26_s}; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165514.8]
  assign _T_28_s = $signed(_T_20_s) + $signed(_GEN_19_s); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165515.8]
  assign _T_29_s = $signed(_T_28_s); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165516.8]
  assign _T_30_s = $signed(_T_29_s) > $signed(32'sh3ffff); // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig.fir@165517.8]
  assign _T_31_s = $signed(_T_29_s) < $signed(-32'sh40000); // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig.fir@165518.8]
  assign _T_32_s = _T_31_s ? $signed(-32'sh40000) : $signed(_T_29_s); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165519.8]
  assign _T_33_s = _T_30_s ? $signed(32'sh3ffff) : $signed(_T_32_s); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165520.8]
  assign _T_34_s = _T_33_s[18:0]; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig.fir@165521.8]
  assign _T_35_s = $signed(_T_34_s); // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig.fir@165522.8]
 
 /********************FOR C1_C*******************/
  assign _T_7_c = $signed(c1_c) >>> _T_6; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165494.8]
  assign _T_8_c = _T_7_c[0]; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165495.8]
  assign _T_9_c = _T_4 ? 1'h0 : _T_8_c; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165496.8]
  assign _T_11_c = $unsigned(c1_c); // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig.fir@165498.8]
  assign _T_14_c = 32'h1 << _T_6; // @[Arithmetic.scala 73:62:example.TestHarness.GemminiSocTest1RocketConfig.fir@165501.8]
  assign _T_16_c = _T_14_c - 32'h1; // @[Arithmetic.scala 73:85:example.TestHarness.GemminiSocTest1RocketConfig.fir@165503.8]
  assign _T_17_c = _T_11_c & _T_16_c; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165504.8]
  assign _T_18_c = _T_10 ? 32'h0 : _T_17_c; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165505.8]
  assign _T_19_c = _T_18_c != 32'h0; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig.fir@165506.8]
  assign _T_20_c = $signed(c1_c) >>> shift_offset; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165507.8]
  assign _T_21_c = _T_20_c[0]; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165508.8]
  assign _T_22_c = _T_19_c | _T_21_c; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig.fir@165509.8]
  assign _T_23_c = _T_9_c & _T_22_c; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165510.8]
  assign _T_26_c = _T_23_c ? $signed(2'sh1) : $signed(2'sh0); // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig.fir@165513.8]
  assign _GEN_19_c = {{30{_T_26_c[1]}},_T_26_c}; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165514.8]
  assign _T_28_c = $signed(_T_20_c) + $signed(_GEN_19_c); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165515.8]
  assign _T_29_c = $signed(_T_28_c); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165516.8]
  assign _T_30_c = $signed(_T_29_c) > $signed(32'sh3ffff); // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig.fir@165517.8]
  assign _T_31_c = $signed(_T_29_c) < $signed(-32'sh40000); // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig.fir@165518.8]
  assign _T_32_c = _T_31_c ? $signed(-32'sh40000) : $signed(_T_29_c); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165519.8]
  assign _T_33_c = _T_30_c ? $signed(32'sh3ffff) : $signed(_T_32_c); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165520.8]
  assign _T_34_c = _T_33_c[18:0]; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig.fir@165521.8]
  assign _T_35_c = $signed(_T_34_c); // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig.fir@165522.8] 
 
 assign _T_36 = io_in_b [7:0]; // @[Arithmetic.scala 81:47:example.TestHarness.GemminiSocTest1RocketConfig.fir@165525.8]

  assign _T_37 = $signed(_T_36); // @[Arithmetic.scala 81:71:example.TestHarness.GemminiSocTest1RocketConfig.fir@165526.8]
 // assign _T_38 = $signed() * $signed(); // @[Arithmetic.scala 65:49:example.TestHarness.GemminiSocTest1RocketConfig.fir@165527.8]  
  
    /********************MULTIPLIER**********************************/
  

  r4_mb8 MULTuut(.mx($signed(io_in_a)),.my($signed(_T_37)),.CLK(CLK),.RST(), .sum(_T_38_s), .carry(_T_38_c)); 
  
  //wire [15:0] product;
  //assign product=_T_38_s+{_T_38_c, 3'd0};
  
  wire [31:0]sum_csa00;
  wire [31:0]carry_csa00;
  wire [31:0]sum_csa01;
  wire [31:0]carry_csa01;
  wire[31:0] _T_38_s1,_T_38_c1;
  assign _T_38_s1 = {{16{_T_38_s[15]}},_T_38_s};
  assign _T_38_c1 = {{16{_T_38_c[15]}},_T_38_c};
  // wire [31:0] Prod_T38;
 // assign Prod_T38=$signed(_T_38_s1)+$signed(_T_38_c1);
  /******************CSA 3:2 (For C2)****************************************/
   wire[31:0] _sum_csa00,_carry_csa00;
  
   compressor_3_2_group  ADD00($signed(c2_s), $signed(c2_c),$signed(_T_38_s1) , sum_csa00,carry_csa00);
  
   assign _sum_csa00=sum_csa00;
   assign _carry_csa00 = carry_csa00<<1;
   
   compressor_3_2_group ADD01($signed(_sum_csa00),$signed(_carry_csa00),$signed( _T_38_c1),_T_40_s,_T_40_c);
    
   //assign _N_40=_T_40_s[31]| _T_40_c[31];
   assign _T_41_s = _T_40_s;
   assign _T_41_c = _T_40_c<<1; 
  
  
  // assign _T_41_s = $signed(_T_40_s);
  //   assign _T_41_c = $signed(_T_40_c);
   
   //wire [31:0] Product_41;
   //assign Product_41=$signed(_T_40_s)+$signed(_T_40_c);
   
   //assign _GEN_20 = {{16{_T_38[15]}},_T_38}; 
   // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165528.8]
  //assign _T_40 = $signed(_GEN_20) + $signed(c2); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165529.8]
  //assign _T_41 = $signed(_T_40); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165530.8]
  
  
   /********************FOR C2_S*******************/
   assign _T_45_s = $signed(c2_s) >>> _T_6; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165538.8]
   assign _T_46_s = _T_45_s[0]; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165539.8]
   assign _T_47_s = _T_4 ? 1'h0 : _T_46_s; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165540.8]
   assign _T_49_s = $unsigned(c2_s); // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig.fir@165542.8]
   assign _T_55_s = _T_49_s & _T_16_s; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165548.8]
   assign _T_56_s = _T_10 ? 32'h0 : _T_55_s; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165549.8]
   assign _T_57_s = _T_56_s != 32'h0; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig.fir@165550.8]
   assign _T_58_s = $signed(c2_s) >>> shift_offset; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165551.8]
   assign _T_59_s = _T_58_s[0]; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165552.8]
   assign _T_60_s = _T_57_s | _T_59_s; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig.fir@165553.8]
   assign _T_61_s = _T_47_s & _T_60_s; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165554.8]
   assign _T_64_s = _T_61_s ? $signed(2'sh1) : $signed(2'sh0); // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig.fir@165557.8]
   assign _GEN_21_s = {{30{_T_64_s[1]}},_T_64_s}; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165558.8]
   assign _T_66_s = $signed(_T_58_s) + $signed(_GEN_21_s); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165559.8]
   assign _T_67_s = $signed(_T_66_s); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165560.8]
   assign _T_68_s = $signed(_T_67_s) > $signed(32'sh3ffff); // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig.fir@165561.8]
   assign _T_69_s = $signed(_T_67_s) < $signed(-32'sh40000); // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig.fir@165562.8]
   assign _T_70_s = _T_69_s ? $signed(-32'sh40000) : $signed(_T_67_s); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165563.8]
   assign _T_71_s = _T_68_s ? $signed(32'sh3ffff) : $signed(_T_70_s); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165564.8]
   assign _T_72_s = _T_71_s[18:0]; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig.fir@165565.8]
   assign _T_73_s = $signed(_T_72_s); // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig.fir@165566.8]
   
   /********************FOR C2_C*******************/
   assign _T_45_c = $signed(c2_c) >>> _T_6; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165538.8]
   assign _T_46_c = _T_45_c[0]; // @[Arithmetic.scala 72:50:example.TestHarness.GemminiSocTest1RocketConfig.fir@165539.8]
   assign _T_47_c = _T_4 ? 1'h0 : _T_46_c; // @[Arithmetic.scala 72:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165540.8]
   assign _T_49_c = $unsigned(c2_c); // @[Arithmetic.scala 73:51:example.TestHarness.GemminiSocTest1RocketConfig.fir@165542.8]
   assign _T_55_c = _T_49_c & _T_16_c; // @[Arithmetic.scala 73:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165548.8]
   assign _T_56_c = _T_10 ? 32'h0 : _T_55_c; // @[Arithmetic.scala 73:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165549.8]
   assign _T_57_c = _T_56_c != 32'h0; // @[Arithmetic.scala 73:93:example.TestHarness.GemminiSocTest1RocketConfig.fir@165550.8]
   assign _T_58_c = $signed(c2_c) >>> shift_offset; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165551.8]
   assign _T_59_c = _T_58_c[0]; // @[Arithmetic.scala 74:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165552.8]
   assign _T_60_c = _T_57_c | _T_59_c; // @[Arithmetic.scala 76:38:example.TestHarness.GemminiSocTest1RocketConfig.fir@165553.8]
   assign _T_61_c = _T_47_c & _T_60_c; // @[Arithmetic.scala 76:29:example.TestHarness.GemminiSocTest1RocketConfig.fir@165554.8]
   assign _T_64_c = _T_61_c ? $signed(2'sh1) : $signed(2'sh0); // @[Arithmetic.scala 78:35:example.TestHarness.GemminiSocTest1RocketConfig.fir@165557.8]
   assign _GEN_21_c = {{30{_T_64_c[1]}},_T_64_c}; // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165558.8]
   assign _T_66_c = $signed(_T_58_c) + $signed(_GEN_21_c); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165559.8]
   assign _T_67_c = $signed(_T_66_c); // @[Arithmetic.scala 78:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165560.8]
   assign _T_68_c = $signed(_T_67_c) > $signed(32'sh3ffff); // @[Arithmetic.scala 86:33:example.TestHarness.GemminiSocTest1RocketConfig.fir@165561.8]
   assign _T_69_c = $signed(_T_67_c) < $signed(-32'sh40000); // @[Arithmetic.scala 86:60:example.TestHarness.GemminiSocTest1RocketConfig.fir@165562.8]
   assign _T_70_c = _T_69_c ? $signed(-32'sh40000) : $signed(_T_67_c); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165563.8]
   assign _T_71_c = _T_68_c ? $signed(32'sh3ffff) : $signed(_T_70_c); // @[Mux.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165564.8]
   assign _T_72_c = _T_71_c[18:0]; // @[Arithmetic.scala 86:81:example.TestHarness.GemminiSocTest1RocketConfig.fir@165565.8]
   assign _T_73_c = $signed(_T_72_c); // @[Arithmetic.scala 86:105:example.TestHarness.GemminiSocTest1RocketConfig.fir@165566.8]
  
  /****************** STAGE-1 CSA 3:2 (For C1)****************************************/

   wire[31:0] _sum_csa01,_carry_csa01;
   
   compressor_3_2_group ADD10($signed(c1_s),$signed(c1_c),$signed(_T_38_s1),sum_csa01,carry_csa01);  //[50:32]--19 bit carry, [31:0]--19 bit sum
   
  
   assign _sum_csa01=sum_csa01;
   assign _carry_csa01 = carry_csa01<<1;
   
   
   /****************** STAGE-2 CSA 3:2 (For C1)****************************************/
   compressor_3_2_group  ADD11($signed(_sum_csa01),$signed(_carry_csa01),$signed(_T_38_c1),_T_78_s, _T_78_c);
   assign _T_79_s = _T_78_s;
   assign _T_79_c = _T_78_c<<1; 
   //wire [31:0] Product_79;     
   //assign Product_79=$signed(_T_79_s)+$signed(_T_79_c);
   
  //assign _T_78 = $signed(_GEN_20) + $signed(c1); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165573.8]
  //assign _T_79 = $signed(_T_78); // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165574.8]
  assign _GEN_1 = io_in_control_propagate ? $signed(_T_35_s) : $signed(_T_73_s); // @[PE.scala 70:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165490.6]
  assign _GEN_2 = io_in_control_propagate ? $signed(_T_35_c) : $signed(_T_73_c); // @[PE.scala 70:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165490.6]
  //wire [18:0] prod;
  //assign prod = $signed(_GEN_13) + $signed(_GEN_14);
  assign _GEN_13 = {_GEN_1}; //SUM 
  assign _GEN_14 = {_GEN_2}; // Carry
   // @[PE.scala 70:30:example.TestHarness.GemminiSocTest1RocketConfig.fir@165490.6]
  // @[PE.scala 69:95:example.TestHarness.GemminiSocTest1RocketConfig.fir@165488.4]
  assign _T_99 = io_in_valid == 1'h0; // @[PE.scala 97:9:example.TestHarness.GemminiSocTest1RocketConfig.fir@165619.4]
  assign io_out_a = io_in_a; // @[PE.scala 51:12:example.TestHarness.GemminiSocTest1RocketConfig.fir@165474.4]
  assign io_out_b = io_in_b; // @[PE.scala 72:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165524.8 PE.scala 77:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165568.8 PE.scala 84:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165593.10 PE.scala 88:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165604.10]
  assign io_out_c = {$signed(_GEN_14),$signed(_GEN_13)}; // @[PE.scala 71:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165523.8 PE.scala 76:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165567.8 PE.scala 83:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165586.10 PE.scala 87:16:example.TestHarness.GemminiSocTest1RocketConfig.fir@165597.10]
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
  _RAND_00 = {1{`RANDOM}};
  _RAND_11 = {1{`RANDOM}};
  c1_s = _RAND_00[31:0];
  c1_c = _RAND_11[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_01 = {1{`RANDOM}};
  _RAND_10 = {1{`RANDOM}};

  c2_s = _RAND_01[31:0];
  c2_c = _RAND_10[31:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end
  always @(posedge CLK) begin
    if (!(_T_99)) begin
      if (io_in_control_propagate) begin
        c1_s <= {{13{io_in_d[18]}},io_in_d[18:0]};
		c1_c <= {{13{io_in_d[37]}},io_in_d[37:19]};
      end else begin
        c1_s <= _T_79_s;
        c1_c <= _T_79_c;
      end

    end
    if (!(_T_99)) begin
      if (io_in_control_propagate) begin
        c2_s <=_T_41_s;
		c2_c <= _T_41_c;
      end else begin
        c2_s <= {{13{io_in_d[18]}},io_in_d[18:0]};
        c2_c <= {{13{io_in_d[37]}},io_in_d[37:19]};

      end
    end
    if (io_in_valid) begin
     last_s <= io_in_control_propagate;
    end
  end
//wire [31:0]Prod_c1;
//wire [31:0]Prod_c2;
//assign Prod_c1=c1_s+c1_c;
//assign Prod_c2=c2_s+c2_c;

endmodule
