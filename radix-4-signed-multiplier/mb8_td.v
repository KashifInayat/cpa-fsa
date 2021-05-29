`timescale 1ns / 1ps
module mb8_td (mx1, my1, CLK, RST, sum1,carry1, mx_reg, my_reg);
parameter WIDTH=8;   
input wire [WIDTH-1:0] mx1;
input wire [WIDTH-1:0] my1;
input wire CLK;
input wire RST;
output reg [(2*WIDTH)-1:0] sum1;
output reg [(2*WIDTH)-1:0] carry1;
output reg [WIDTH-1:0] mx_reg;
output reg [WIDTH-1:0] my_reg;


//wire [(2*WIDTH)-1:0] product;
wire [(2*WIDTH)-1:0] sum;
wire [(2*WIDTH)-1:0] carry;

always@ (posedge CLK)
begin
mx_reg<=mx1;
my_reg<=my1;
sum1<=sum;
carry1<=carry;
//product1<=product;
end
r4_mb8 uut0 (
		.mx(mx_reg), 
		.my(my_reg),
		.CLK(CLK), 
		.RST(RST), 
		.sum(sum),
		.carry(carry)
	);


endmodule
