module Tile( // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165625.2]
  input         clock, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165626.4]
  input  [7:0]  io_in_a_0, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165628.4]
  input  [18:0] io_in_b_0, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165628.4]
  input  [18:0] io_in_d_0, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165628.4]
  input         io_in_control_0_propagate, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165628.4]
  input  [4:0]  io_in_control_0_shift, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165628.4]
  output [7:0]  io_out_a_0, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165628.4]
  output [18:0] io_out_c_0, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165628.4]
  output [18:0] io_out_b_0, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165628.4]
  output        io_out_control_0_propagate, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165628.4]
  output [4:0]  io_out_control_0_shift, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165628.4]
  input         io_in_valid_0, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165628.4]
  output        io_out_valid_0 // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165628.4]
);
  wire  tile_0_0_clock; // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
  wire [7:0] tile_0_0_io_in_a; // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
  wire [18:0] tile_0_0_io_in_b; // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
  wire [18:0] tile_0_0_io_in_d; // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
  wire [7:0] tile_0_0_io_out_a; // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
  wire [18:0] tile_0_0_io_out_b; // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
  wire [18:0] tile_0_0_io_out_c; // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
  wire  tile_0_0_io_in_control_propagate; // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
  wire [4:0] tile_0_0_io_in_control_shift; // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
  wire  tile_0_0_io_out_control_propagate; // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
  wire [4:0] tile_0_0_io_out_control_shift; // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
  wire  tile_0_0_io_in_valid; // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
  wire  tile_0_0_io_out_valid; // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
  PE_64 tile_0_0 ( // @[Tile.scala 30:44:example.TestHarness.GemminiSocTest1RocketConfig.fir@165630.4]
    .clock(tile_0_0_clock),
    .io_in_a(tile_0_0_io_in_a),
    .io_in_b(tile_0_0_io_in_b),
    .io_in_d(tile_0_0_io_in_d),
    .io_out_a(tile_0_0_io_out_a),
    .io_out_b(tile_0_0_io_out_b),
    .io_out_c(tile_0_0_io_out_c),
    .io_in_control_propagate(tile_0_0_io_in_control_propagate),
    .io_in_control_shift(tile_0_0_io_in_control_shift),
    .io_out_control_propagate(tile_0_0_io_out_control_propagate),
    .io_out_control_shift(tile_0_0_io_out_control_shift),
    .io_in_valid(tile_0_0_io_in_valid),
    .io_out_valid(tile_0_0_io_out_valid)
  );
  assign io_out_a_0 = tile_0_0_io_out_a; // @[Tile.scala 89:17:example.TestHarness.GemminiSocTest1RocketConfig.fir@165646.4]
  assign io_out_c_0 = tile_0_0_io_out_c; // @[Tile.scala 81:17:example.TestHarness.GemminiSocTest1RocketConfig.fir@165640.4]
  assign io_out_b_0 = tile_0_0_io_out_b; // @[Tile.scala 82:17:example.TestHarness.GemminiSocTest1RocketConfig.fir@165641.4]
  assign io_out_control_0_propagate = tile_0_0_io_out_control_propagate; // @[Tile.scala 83:23:example.TestHarness.GemminiSocTest1RocketConfig.fir@165643.4]
  assign io_out_control_0_shift = tile_0_0_io_out_control_shift; // @[Tile.scala 83:23:example.TestHarness.GemminiSocTest1RocketConfig.fir@165642.4]
  assign io_out_valid_0 = tile_0_0_io_out_valid; // @[Tile.scala 84:21:example.TestHarness.GemminiSocTest1RocketConfig.fir@165645.4]
  assign tile_0_0_clock = clock; // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165631.4]
  assign tile_0_0_io_in_a = io_in_a_0; // @[Tile.scala 38:20:example.TestHarness.GemminiSocTest1RocketConfig.fir@165633.4]
  assign tile_0_0_io_in_b = io_in_b_0; // @[Tile.scala 47:20:example.TestHarness.GemminiSocTest1RocketConfig.fir@165634.4]
  assign tile_0_0_io_in_d = io_in_d_0; // @[Tile.scala 56:20:example.TestHarness.GemminiSocTest1RocketConfig.fir@165635.4]
  assign tile_0_0_io_in_control_propagate = io_in_control_0_propagate; // @[Tile.scala 65:26:example.TestHarness.GemminiSocTest1RocketConfig.fir@165637.4]
  assign tile_0_0_io_in_control_shift = io_in_control_0_shift; // @[Tile.scala 65:26:example.TestHarness.GemminiSocTest1RocketConfig.fir@165636.4]
  assign tile_0_0_io_in_valid = io_in_valid_0; // @[Tile.scala 74:24:example.TestHarness.GemminiSocTest1RocketConfig.fir@165639.4]
endmodule