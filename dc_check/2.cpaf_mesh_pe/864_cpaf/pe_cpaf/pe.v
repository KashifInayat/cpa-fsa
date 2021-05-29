module PE_64( // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165467.2]
  input         clock, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165468.4]
  input 		RST,
  input  [7:0]  io_in_a, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input  [18:0] io_in_b, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input  [135:0] io_in_d, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]19+19+8=46  
  output [7:0]  io_out_a, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output [18:0] io_out_b,//s,d,n,pze,nze[19:0]-- 20 bit 
  output [135:0] io_out_c,//round_reg,sum, carry [19:0], [19:0] -- 38 bit 
  input         io_in_control_propagate, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input  [5:0]  io_in_control_shift, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output        io_out_control_propagate, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output [5:0]  io_out_control_shift, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  input         io_in_valid, // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
  output        io_out_valid // @[:example.TestHarness.GemminiSocTest1RocketConfig.fir@165470.4]
);
  reg [63:0] c1_s; // @[PE.scala 44:15:example.TestHarness.GemminiSocTest1RocketConfig.fir@165472.4]
  reg [71:0] c1_c;
  reg [71:0] _RAND_00;
  reg [71:0] _RAND_11;  
  reg [63:0] c2_s; // @[PE.scala 45:15:example.TestHarness.GemminiSocTest1RocketConfig.fir@165473.4]
  reg [71:0] c2_c;
  reg [71:0] _RAND_10;
  reg [71:0] _RAND_01;
  wire [7:0] _T_36; // @[Arithmetic.scala 81:47:example.TestHarness.GemminiSocTest1RocketConfig.fir@165525.8]
  wire [7:0] _T_37; // @[Arithmetic.scala 81:71:example.TestHarness.GemminiSocTest1RocketConfig.fir@165526.8]
  //Multiplier Output
  wire [15:0] _T_38_s; // @[Arithmetic.scala 65:49:example.TestHarness.GemminiSocTest1RocketConfig.fir@165527.8]
  wire [15:0] _T_38_c;
  
  //Acc 
  wire [63:0] _T_40_s;
  wire [63:0] _T_40_c;  
  wire [63:0] _T_41_s;
  wire [63:0] _T_41_c;  // @[Arithmetic.scala 65:54:example.TestHarness.GemminiSocTest1RocketConfig.fir@165530.8]
  
  
  wire [63:0] _GEN_13; // @[PE.scala 69:95:example.TestHarness.GemminiSocTest1RocketConfig.fir@165488.4]
  wire [71:0] _GEN_14; // @[PE.scala 69:95:example.TestHarness.GemminiSocTest1RocketConfig.fir@165488.4]
  wire  _T_99; // @[PE.scala 97:9:example.TestHarness.GemminiSocTest1RocketConfig.fir@165619.4]
  assign _T_36 = io_in_b [7:0]; // @[Arithmetic.scala 81:47:example.TestHarness.GemminiSocTest1RocketConfig.fir@165525.8]
  assign _T_37 = $signed(_T_36); // @[Arithmetic.scala 81:71:example.TestHarness.GemminiSocTest1RocketConfig.fir@165526.8]
  /********************MULTIPLIER**********************************/
  

  r4_mb8 MULTuut(.mx($signed(io_in_a)),.my($signed(_T_37)),.CLK(clock),.RST(), .sum(_T_38_s), .carry(_T_38_c)); 
  

  
//feedback
wire [63:0] c_fb_s;
wire [63:0] c_fb_c;//output



wire [63:0] c_out_s;
wire [71:0] c_out_c;

  wire [63:0]sum_csa00;
  wire [63:0]carry_csa00;
  wire[63:0] _T_38_s1,_T_38_c1;
  assign _T_38_s1 = {{48{_T_38_s[15]}},_T_38_s};
  assign _T_38_c1 = {{48{_T_38_c[15]}},_T_38_c};
 
  /******************CSA 3:2****************************************/
   wire[63:0] _sum_csa00,_carry_csa00;
  
   compressor_3_2_group  ADD00($signed(c_fb_s), $signed(c_fb_c),$signed(_T_38_s1) , sum_csa00,carry_csa00);
  
   assign _sum_csa00=sum_csa00;
   assign _carry_csa00 = carry_csa00<<1;
   
   compressor_3_2_group ADD01($signed(_sum_csa00),$signed(_carry_csa00),$signed(_T_38_c1),_T_40_s,_T_40_c);
    
   //assign _N_40=_T_40_s[31]| _T_40_c[31];
   assign _T_41_s = _T_40_s;
   assign _T_41_c = _T_40_c<<1; 
   assign _GEN_13 = $signed(c_out_s); //SUM 
   assign _GEN_14 = $signed(c_out_c); // Carry
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
  c1_s = _RAND_00[63:0];
  c1_c = _RAND_11[71:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_01 = {1{`RANDOM}};
  _RAND_10 = {1{`RANDOM}};

  c2_s = _RAND_01[63:0];
  c2_c = _RAND_10[71:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end



wire [7:0] round_bits;//1+1+6=8
assign round_bits={io_in_valid,io_in_control_propagate,io_in_control_shift};

always @(posedge clock) 
begin
    if (!(_T_99)) 
	begin
      if (io_in_control_propagate)
	  begin
        c1_s <= io_in_d[63:0];
		c1_c <= io_in_d[135:64];
      end 
	  else 
	  begin
        c1_s <= _T_41_s;
        c1_c <= {round_bits,_T_41_c};//8+64=72 bit
      end

    end
	
    if (!(_T_99)) 
	begin
      if (!io_in_control_propagate) 
	  begin
        c2_s <= io_in_d[63:0];
		c2_c <= io_in_d[135:64];
      end 
	  else 
	  begin
        c2_s <= _T_41_s;
        c2_c <={round_bits,_T_41_c};
	  end
	end
	
end
	
	
	
	assign c_fb_s=io_in_control_propagate?c2_s:c1_s;
	assign c_fb_c=io_in_control_propagate?c2_c[63:0]:c1_c[63:0];
	assign c_out_s=!io_in_control_propagate? c2_s:c1_s;
	assign c_out_c=!io_in_control_propagate? c2_c:c1_c;		
	

endmodule
module compressor_3_2_group(in1, in2, in3, s, c);
  parameter GRP_WIDTH=64;
    
  input [GRP_WIDTH-1:0] in1, in2, in3;
  output [GRP_WIDTH-1:0] s, c;
  
  compressor_3_2 compress[GRP_WIDTH-1:0](in1, in2,in3, s, c);

endmodule

module compressor_3_2(in1, in2, in3, s, c);
  input in1, in2, in3;
  output s,c;
  
  assign c = (in1 & in2) | (in2 & in3) | (in3 & in1); 
  assign s = (in1 & in2 & in3) | (in1 & ~in2 & ~in3) |
                                 (~in1 & in2 & ~in3) |
                                 (~in1 & ~in2 & in3);
  
  
  
endmodule