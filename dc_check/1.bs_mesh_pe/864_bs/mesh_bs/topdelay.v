module top_sa_2D (
  input         CLK,
  input RST,
  input  [7:0]  io_in_a_0_0_1, 
  input  [7:0]  io_in_a_1_0_1, 
  input  [7:0]  io_in_a_2_0_1, 
  input  [7:0]  io_in_a_3_0_1, 
  input  [7:0]  io_in_a_4_0_1, 
  input  [7:0]  io_in_a_5_0_1, 
  input  [7:0]  io_in_a_6_0_1, 
  input  [7:0]  io_in_a_7_0_1, 
  input  [7:0]  io_in_d_0_0_1, 
  input  [7:0]  io_in_d_1_0_1, 
  input  [7:0]  io_in_d_2_0_1, 
  input  [7:0]  io_in_d_3_0_1, 
  input  [7:0]  io_in_d_4_0_1, 
  input  [7:0]  io_in_d_5_0_1, 
  input  [7:0]  io_in_d_6_0_1, 
  input  [7:0]  io_in_d_7_0_1, 
  input  [7:0]  io_in_b_0_0_1, 
  input  [7:0]  io_in_b_1_0_1, 
  input  [7:0]  io_in_b_2_0_1, 
  input  [7:0]  io_in_b_3_0_1, 
  input  [7:0]  io_in_b_4_0_1, 
  input  [7:0]  io_in_b_5_0_1, 
  input  [7:0]  io_in_b_6_0_1, 
  input  [7:0]  io_in_b_7_0_1, 
  input         io_in_control_0_0_propagate_1,  
  input         io_in_control_1_0_propagate_1,
  input         io_in_control_2_0_propagate_1, 
  input         io_in_control_3_0_propagate_1,
  input         io_in_control_4_0_propagate_1,
  input         io_in_control_5_0_propagate_1,
  input         io_in_control_6_0_propagate_1,
  input         io_in_control_7_0_propagate_1,  
  input  [5:0]  io_in_control_0_0_shift_1,     
  input  [5:0]  io_in_control_1_0_shift_1,
  input  [5:0]  io_in_control_2_0_shift_1, 	
  input  [5:0]  io_in_control_3_0_shift_1,  
  input  [5:0]  io_in_control_4_0_shift_1,
  input  [5:0]  io_in_control_5_0_shift_1,
  input  [5:0]  io_in_control_6_0_shift_1,   
  input  [5:0]  io_in_control_7_0_shift_1,   
  output reg [18:0] io_out_c_0_0_1,
  output reg [18:0] io_out_c_1_0_1,
  output reg [18:0] io_out_c_2_0_1,
  output reg [18:0] io_out_c_3_0_1,
  output reg [18:0] io_out_c_4_0_1,
  output reg [18:0] io_out_c_5_0_1,
  output reg [18:0] io_out_c_6_0_1,
  output reg [18:0] io_out_c_7_0_1,
  output reg [18:0] io_out_b_0_0_1,
  output reg [18:0] io_out_b_1_0_1,
  output reg [18:0] io_out_b_2_0_1,
  output reg [18:0] io_out_b_3_0_1,
  output reg [18:0] io_out_b_4_0_1,
  output reg [18:0] io_out_b_5_0_1,
  output reg [18:0] io_out_b_6_0_1,
  output reg [18:0] io_out_b_7_0_1,
  input         io_in_valid_0_0_1, 
  input         io_in_valid_1_0_1, 
  input         io_in_valid_2_0_1, 
  input         io_in_valid_3_0_1, 
  input         io_in_valid_4_0_1, 
  input         io_in_valid_5_0_1, 
  input         io_in_valid_6_0_1, 
  input         io_in_valid_7_0_1, 
  output reg       io_out_valid_0_0_1
);  

/////////////i/o registers////
reg  [7:0]  io_in_a_0_0; 
reg  [7:0]  io_in_a_1_0; 
reg  [7:0]  io_in_a_2_0; 
reg  [7:0]  io_in_a_3_0; 
reg  [7:0]  io_in_a_4_0; 
reg  [7:0]  io_in_a_5_0; 
reg  [7:0]  io_in_a_6_0; 
reg  [7:0]  io_in_a_7_0; 
reg  [7:0]  io_in_d_0_0; 
reg  [7:0]  io_in_d_1_0; 
reg  [7:0]  io_in_d_2_0; 
reg  [7:0]  io_in_d_3_0; 
reg  [7:0]  io_in_d_4_0; 
reg  [7:0]  io_in_d_5_0; 
reg  [7:0]  io_in_d_6_0; 
reg  [7:0]  io_in_d_7_0; 
reg  [7:0]  io_in_b_0_0; 
reg  [7:0]  io_in_b_1_0; 
reg  [7:0]  io_in_b_2_0; 
reg  [7:0]  io_in_b_3_0; 
reg  [7:0]  io_in_b_4_0; 
reg  [7:0]  io_in_b_5_0; 
reg  [7:0]  io_in_b_6_0; 
reg  [7:0]  io_in_b_7_0; 
reg         io_in_control_0_0_propagate; 
reg         io_in_control_1_0_propagate;
reg         io_in_control_2_0_propagate; 
reg         io_in_control_3_0_propagate;
reg         io_in_control_4_0_propagate;
reg         io_in_control_5_0_propagate;
reg         io_in_control_6_0_propagate;
reg         io_in_control_7_0_propagate; 
reg  [5:0]  io_in_control_0_0_shift;     
reg  [5:0]  io_in_control_1_0_shift;
reg  [5:0]  io_in_control_2_0_shift; 	
reg  [5:0]  io_in_control_3_0_shift;  
reg  [5:0]  io_in_control_4_0_shift;
reg  [5:0]  io_in_control_5_0_shift;
reg  [5:0]  io_in_control_6_0_shift;   
reg  [5:0]  io_in_control_7_0_shift; 
reg         io_in_valid_0_0; 
reg         io_in_valid_1_0; 
reg         io_in_valid_2_0; 
reg         io_in_valid_3_0; 
reg         io_in_valid_4_0; 
reg         io_in_valid_5_0; 
reg         io_in_valid_6_0; 
reg         io_in_valid_7_0; 




//Outputs Wires
wire [18:0] io_out_c_0_0;
wire [18:0] io_out_c_1_0;
wire [18:0] io_out_c_2_0;
wire [18:0] io_out_c_3_0;
wire [18:0] io_out_c_4_0;
wire [18:0] io_out_c_5_0;
wire [18:0] io_out_c_6_0;
wire [18:0] io_out_c_7_0;
wire [18:0] io_out_b_0_0;
wire [18:0] io_out_b_1_0;
wire [18:0] io_out_b_2_0;
wire [18:0] io_out_b_3_0;
wire [18:0] io_out_b_4_0;
wire [18:0] io_out_b_5_0;
wire [18:0] io_out_b_6_0;
wire [18:0] io_out_b_7_0;
wire       io_out_valid_0_0;

always@(posedge CLK)
begin
io_in_a_0_0 <= io_in_a_0_0_1;
io_in_a_1_0 <= io_in_a_1_0_1;
io_in_a_2_0 <= io_in_a_2_0_1;
io_in_a_3_0 <= io_in_a_3_0_1;
io_in_a_4_0 <= io_in_a_4_0_1;
io_in_a_5_0 <= io_in_a_5_0_1;
io_in_a_6_0 <= io_in_a_6_0_1;
io_in_a_7_0 <= io_in_a_7_0_1;
io_in_d_0_0 <= io_in_d_0_0_1;
io_in_d_1_0 <= io_in_d_1_0_1;
io_in_d_2_0 <= io_in_d_2_0_1;
io_in_d_3_0 <= io_in_d_3_0_1;
io_in_d_4_0 <= io_in_d_4_0_1;
io_in_d_5_0 <= io_in_d_5_0_1;
io_in_d_6_0 <= io_in_d_6_0_1;
io_in_d_7_0 <= io_in_d_7_0_1;
io_in_b_0_0 <= io_in_b_0_0_1;
io_in_b_1_0 <= io_in_b_1_0_1;
io_in_b_2_0 <= io_in_b_2_0_1;
io_in_b_3_0 <= io_in_b_3_0_1;
io_in_b_4_0 <= io_in_b_4_0_1;
io_in_b_5_0 <= io_in_b_5_0_1;
io_in_b_6_0 <= io_in_b_6_0_1;
io_in_b_7_0 <= io_in_b_7_0_1;
io_in_control_0_0_propagate <= io_in_control_0_0_propagate_1;
io_in_control_1_0_propagate <= io_in_control_1_0_propagate_1;
io_in_control_2_0_propagate <= io_in_control_2_0_propagate_1;
io_in_control_3_0_propagate <= io_in_control_3_0_propagate_1;
io_in_control_4_0_propagate <= io_in_control_4_0_propagate_1;
io_in_control_5_0_propagate <= io_in_control_5_0_propagate_1;
io_in_control_6_0_propagate <= io_in_control_6_0_propagate_1;
io_in_control_7_0_propagate <= io_in_control_7_0_propagate_1;
io_in_control_0_0_shift <=  io_in_control_0_0_shift_1;    
io_in_control_1_0_shift <=	io_in_control_1_0_shift_1;
io_in_control_2_0_shift <= 	io_in_control_2_0_shift_1;	
io_in_control_3_0_shift <=	io_in_control_3_0_shift_1; 
io_in_control_4_0_shift <=	io_in_control_4_0_shift_1;
io_in_control_5_0_shift <=	io_in_control_5_0_shift_1;
io_in_control_6_0_shift <= 	io_in_control_6_0_shift_1;  
io_in_control_7_0_shift <= 	io_in_control_7_0_shift_1;
io_in_valid_0_0 <= io_in_valid_0_0_1; 
io_in_valid_1_0 <= io_in_valid_1_0_1; 
io_in_valid_2_0 <= io_in_valid_2_0_1; 
io_in_valid_3_0 <= io_in_valid_3_0_1; 
io_in_valid_4_0 <= io_in_valid_4_0_1; 
io_in_valid_5_0 <= io_in_valid_5_0_1; 
io_in_valid_6_0 <= io_in_valid_6_0_1; 
io_in_valid_7_0 <= io_in_valid_7_0_1; 

io_out_c_0_0_1 <= io_out_c_0_0;
io_out_c_1_0_1 <= io_out_c_1_0;
io_out_c_2_0_1 <= io_out_c_2_0;
io_out_c_3_0_1 <= io_out_c_3_0;
io_out_c_4_0_1 <= io_out_c_4_0;
io_out_c_5_0_1 <= io_out_c_5_0;
io_out_c_6_0_1 <= io_out_c_6_0;
io_out_c_7_0_1 <= io_out_c_7_0;
io_out_b_0_0_1 <= io_out_b_0_0;
io_out_b_1_0_1 <= io_out_b_1_0;
io_out_b_2_0_1 <= io_out_b_2_0;
io_out_b_3_0_1 <= io_out_b_3_0;
io_out_b_4_0_1 <= io_out_b_4_0;
io_out_b_5_0_1 <= io_out_b_5_0;
io_out_b_6_0_1 <= io_out_b_6_0;
io_out_b_7_0_1 <= io_out_b_7_0;
io_out_valid_0_0_1 <= io_out_valid_0_0;
end 

 Mesh core ( // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177051.2]
  .clock(CLK), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177052.4]
  .io_in_a_0_0(io_in_a_0_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_a_1_0(io_in_a_1_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_a_2_0(io_in_a_2_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_a_3_0(io_in_a_3_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_a_4_0(io_in_a_4_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_a_5_0(io_in_a_5_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_a_6_0(io_in_a_6_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_a_7_0(io_in_a_7_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_d_0_0(io_in_d_0_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_d_1_0(io_in_d_1_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_d_2_0(io_in_d_2_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_d_3_0(io_in_d_3_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_d_4_0(io_in_d_4_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_d_5_0(io_in_d_5_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_d_6_0(io_in_d_6_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_d_7_0(io_in_d_7_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_b_0_0(io_in_b_0_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_b_1_0(io_in_b_1_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_b_2_0(io_in_b_2_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_b_3_0(io_in_b_3_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_b_4_0(io_in_b_4_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_b_5_0(io_in_b_5_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_b_6_0(io_in_b_6_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_b_7_0(io_in_b_7_0), // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@177054.4]
  .io_in_control_0_0_propagate(io_in_control_0_0_propagate),
  .io_in_control_1_0_propagate(io_in_control_1_0_propagate),
  .io_in_control_2_0_propagate(io_in_control_2_0_propagate),
  .io_in_control_3_0_propagate(io_in_control_3_0_propagate),
  .io_in_control_4_0_propagate(io_in_control_4_0_propagate),
  .io_in_control_5_0_propagate(io_in_control_5_0_propagate),
  .io_in_control_6_0_propagate(io_in_control_6_0_propagate),
  .io_in_control_7_0_propagate(io_in_control_7_0_propagate),
  .io_in_control_0_0_shift(io_in_control_0_0_shift), 
  .io_in_control_1_0_shift(io_in_control_1_0_shift),	
  .io_in_control_2_0_shift(io_in_control_2_0_shift), 
  .io_in_control_3_0_shift(io_in_control_3_0_shift),	
  .io_in_control_4_0_shift(io_in_control_4_0_shift),	
  .io_in_control_5_0_shift(io_in_control_5_0_shift),	
  .io_in_control_6_0_shift(io_in_control_6_0_shift), 
  .io_in_control_7_0_shift(io_in_control_7_0_shift), 
  .io_in_valid_0_0 (io_in_valid_0_0),
  .io_in_valid_1_0 (io_in_valid_1_0),
  .io_in_valid_2_0 (io_in_valid_2_0),
  .io_in_valid_3_0 (io_in_valid_3_0),
  .io_in_valid_4_0 (io_in_valid_4_0),
  .io_in_valid_5_0 (io_in_valid_5_0),
  .io_in_valid_6_0 (io_in_valid_6_0),
  .io_in_valid_7_0 (io_in_valid_7_0),
  .io_out_c_0_0(io_out_c_0_0), 
  .io_out_c_1_0(io_out_c_1_0), 
  .io_out_c_2_0(io_out_c_2_0), 
  .io_out_c_3_0(io_out_c_3_0), 
  .io_out_c_4_0(io_out_c_4_0), 
  .io_out_c_5_0(io_out_c_5_0), 
  .io_out_c_6_0(io_out_c_6_0), 
  .io_out_c_7_0(io_out_c_7_0), 
  .io_out_b_0_0(io_out_b_0_0), 
  .io_out_b_1_0(io_out_b_1_0), 
  .io_out_b_2_0(io_out_b_2_0), 
  .io_out_b_3_0(io_out_b_3_0), 
  .io_out_b_4_0(io_out_b_4_0), 
  .io_out_b_5_0(io_out_b_5_0), 
  .io_out_b_6_0(io_out_b_6_0), 
  .io_out_b_7_0(io_out_b_7_0), 
  .io_out_valid_0_0(io_out_valid_0_0)
  );


endmodule
