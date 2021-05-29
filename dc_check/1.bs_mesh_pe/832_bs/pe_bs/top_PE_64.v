module top_PE_64 ( 
  input         CLK,   
  input 		RST,
  input  [7:0]  io_in_a1, 
  input  [18:0] io_in_b1, 
  input  [18:0] io_in_d1, 
  input         io_in_valid1, 
  input  [4:0]  io_in_control_shift1, 
  input         io_in_control_propagate1, 
  output reg [7:0]  io_out_a1,
  output reg [18:0] io_out_b1,
  output reg [18:0] io_out_c1,
  output reg        io_out_control_propagate1,
  output reg [4:0]  io_out_control_shift1, 
  output reg        io_out_valid1 
);

  //Inputs
  reg  [7:0]  io_in_a; 
  reg  [18:0] io_in_b; 
  reg  [18:0] io_in_d; 
  reg         io_in_valid; 
  reg  [4:0]  io_in_control_shift; 
  reg         io_in_control_propagate; 
  
  //Outputs
  wire [7:0]  io_out_a;
  wire [18:0] io_out_b;
  wire [18:0] io_out_c;
  wire        io_out_control_propagate;
  wire [4:0]  io_out_control_shift; 
  wire        io_out_valid; 
  
  
  always@(posedge CLK)
  begin
  io_in_a <= io_in_a1; 
  io_in_b <= io_in_b1; 
  io_in_d <= io_in_d1; 
  io_in_valid <=io_in_valid1; 
  io_in_control_shift <= io_in_control_shift1; 
  io_in_control_propagate <= io_in_control_propagate1; 
  io_out_a1 <= io_out_a;
  io_out_b1 <= io_out_b;
  io_out_c1 <= io_out_c;
  io_out_control_propagate1 <= io_out_control_propagate;
  io_out_control_shift1 <= io_out_control_shift; 
  io_out_valid1 <= io_out_valid;
  end
  
  
  PE_64 uut( // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165467.2]
  .clock(CLK), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165468.4]
  .RST(RST),
  .io_in_a(io_in_a), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  .io_in_b(io_in_b), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  .io_in_d(io_in_d), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  .io_out_a(io_out_a), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  .io_out_b(io_out_b),//s,d,n,pze,nze[19:0]-- 20 bit 
  .io_out_c(io_out_c),//sum, carry [19:0], [19:0] -- 38 bit 
  .io_in_control_propagate (io_in_control_propagate), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  .io_in_control_shift(io_in_control_shift), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  .io_out_control_propagate(io_out_control_propagate), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  .io_out_control_shift(io_out_control_shift), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  .io_in_valid(io_in_valid), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  .io_out_valid(io_out_valid) // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
);

endmodule