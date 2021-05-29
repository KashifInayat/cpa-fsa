`timescale 1ns / 1ps
module mb8_top (mx1, my1, CLK, RST, sum1,carry1, mx2, my2);

parameter WIDTH=8;   
input wire [WIDTH-1:0] mx1;
input wire [WIDTH-1:0] my1;
input wire CLK;
input wire RST;
output wire[(2*WIDTH)-1:0] sum1;
output wire[(2*WIDTH)-1:0] carry1;
output reg [WIDTH-1:0] mx2;
output reg [WIDTH-1:0] my2;

wire [WIDTH-1:0] mx_reg;
wire [WIDTH-1:0] my_reg;

always@ (posedge CLK) // or negedge RST)
begin
mx2<=mx_reg;
my2<=my_reg;
end

	 mb8_td uut (
		.mx1(mx1), 
		.my1(my1),
		.CLK(CLK), 
		.RST(RST),     
		.sum1(sum1),
		.carry1(carry1),
		.mx_reg(mx_reg),
		.my_reg(my_reg)
	);


endmodule
