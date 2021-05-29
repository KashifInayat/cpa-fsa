`timescale 1ns / 1ps
module test_m_booth_mult();
parameter WIDTH = 8;
parameter ht= 1; //clocktime_period_parameter (ns)
	// Inputs

	reg signed [WIDTH-1:0] mx;
	reg signed [WIDTH-1:0] my;
	reg CLK;
	reg RST;

	// Outputs 
wire [(WIDTH*2)-1:0] sum;
wire [(WIDTH*2)-1:0] carry;

wire [WIDTH-1:0] mx_load;
wire [WIDTH-1:0] my_load;


reg signed [(WIDTH*2)-1:0] p1;
reg signed [(WIDTH*2)-1:0] p2;
reg signed [(WIDTH*2)-1:0] p3;
reg signed [(WIDTH*2)-1:0] p;
    integer i,j,ce;

//reg [(WIDTH*2)-1:0] ram_a [0:9999];
reg [WIDTH-1:0] ram_a [0:9999];
reg [WIDTH-1:0] ram_b [0:9999];

mb8_top uut1 (
		.mx1(mx), 
		.my1(my), 
		.CLK(CLK), 
		.RST(RST), 
		.sum1(sum), 
		.carry1(carry), 
		.mx2(mx_load), 
		.my2(my_load)

);

// Input vectors
initial begin
$readmemh(`INPUT_FILE_NAMEX, ram_a);
$readmemh(`INPUT_FILE_NAMEY, ram_b);
end

initial begin
mx=0;
my=0;
 RST=1'b0;
#2 RST=1'b1;
#2 CLK=1'b0;

end
initial begin
ce=0;
i = 0;
while(1) //1
  begin 
            #(2*ht)//1.5
	    mx=ram_a[i][WIDTH-1:0];
            my=ram_b[i][WIDTH-1:0];
            p<=mx*my;
            if(sum+carry!=p2) begin
			$display("Error!!");
            	ce<=ce+1;
		end
	    if(i==9999)
		i = 0;
	    else
		i = i + 1;
 end
end
 
always @(CLK)
#(ht) CLK<=~CLK;
 
 always @( posedge CLK)
 begin
p1<=p;
p2<=p1;
p3<=p2;

end  
endmodule

