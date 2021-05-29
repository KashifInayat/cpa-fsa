
module r4_mb8 #(parameter WIDTH = 8)(
input signed [WIDTH-1:0] mx,
input signed [WIDTH-1:0] my,
input CLK,
input RST,
output signed [15:0] sum,
output signed [15:0] carry
//output signed [15:0] product
);
 
//parameter group_cnt=(WIDTH>>1)+1; 
parameter group_cnt=(WIDTH>>1); 
//wire signed [15:0] product;

wire [group_cnt - 1:0] s;
wire [group_cnt - 1:0] d;
wire [group_cnt - 1:0] n;
wire [group_cnt - 1:0] nze;
wire [group_cnt - 1:0] pze;
wire [group_cnt - 1:0] e;

wire [WIDTH:0] epp2d[0:group_cnt - 1];
wire [9:0] fpp0;
wire [9:0] fpp1;
wire [9:0] fpp2;
wire [9:0] fpp3;
//wire [7:0] fpp4;


/******************** Booth encoding ********************/
/*
			booth_encoder b_e0(.x({mx[1], mx[0], 1'b0}), .single(s[0]), .double(d[0]), .neg(n[0]));
			booth_encoder b_e1(.x({mx[3], mx[2], mx[1]}), .single(s[1]), .double(d[1]), .neg(n[1]));
			booth_encoder b_e2(.x({mx[5], mx[4], mx[3]}), .single(s[2]), .double(d[2]), .neg(n[2]));
	                booth_encoder b_e3(.x({mx[7], mx[6], mx[5]}), .single(s[3]), .double(d[3]), .neg(n[3]));
*/
			booth_encoder b_e0(.x({mx[1], mx[0], 1'b0}), .single(s[0]), .double(d[0]),  .neg(n[0]), .pzero(pze[0]), .nzero(nze[0]));
			booth_encoder b_e1(.x({mx[3], mx[2], mx[1]}), .single(s[1]), .double(d[1]), .neg(n[1]), .pzero(pze[1]), .nzero(nze[1]));
			booth_encoder b_e2(.x({mx[5], mx[4], mx[3]}), .single(s[2]), .double(d[2]), .neg(n[2]), .pzero(pze[2]), .nzero(nze[2]));
	                booth_encoder b_e3(.x({mx[7], mx[6], mx[5]}), .single(s[3]), .double(d[3]), .neg(n[3]), .pzero(pze[3]), .nzero(nze[3]));
			//booth_encoder b_e4(.x({1'b0, 1'b0, mx[WIDTH - 1]}), .single(s[4]), .double(d[4]), .neg(n[4]));
			

/******************** Booth Selector-----Partial Product Generation ********************/
genvar i, j;

generate
    for (j = 0; j < group_cnt; j = j + 1) begin: b_selector 
			booth_selector bs(.double(d[j]), .shifted(1'b0), .single(s[j]), .y(my[0]), .neg(n[j]), .p(epp2d[j][0]));
			booth_selector bs0(.double(d[j]), .shifted(my[0]), .single(s[j]), .y(my[1]), .neg(n[j]), .p(epp2d[j][1]));
			booth_selector bs1(.double(d[j]), .shifted(my[1]), .single(s[j]), .y(my[2]), .neg(n[j]), .p(epp2d[j][2]));
			booth_selector bs2(.double(d[j]), .shifted(my[2]), .single(s[j]), .y(my[3]), .neg(n[j]), .p(epp2d[j][3]));
			booth_selector bs3(.double(d[j]), .shifted(my[3]), .single(s[j]), .y(my[4]), .neg(n[j]), .p(epp2d[j][4]));
			booth_selector bs4(.double(d[j]), .shifted(my[4]), .single(s[j]), .y(my[5]), .neg(n[j]), .p(epp2d[j][5]));
			booth_selector bs5(.double(d[j]), .shifted(my[5]), .single(s[j]), .y(my[6]), .neg(n[j]), .p(epp2d[j][6]));
			booth_selector bs6(.double(d[j]), .shifted(my[6]), .single(s[j]), .y(my[7]), .neg(n[j]), .p(epp2d[j][7]));
			booth_selector bs7(.double(d[j]), .shifted(my[7]), .single(s[j]), .y(my[7]), .neg(n[j]), .p(epp2d[j][8]));
			
end
endgenerate

//extend signals
assign e[0] = nze[0] ? 1'b0:(~(my[WIDTH-1] ^ n[0]) | pze[0]);
assign e[1] = nze[1] ? 1'b0:(~(my[WIDTH-1] ^ n[1]) | pze[1]);
assign e[2] = nze[2] ? 1'b0:(~(my[WIDTH-1] ^ n[2]) | pze[2]);
assign e[3] = nze[3] ? 1'b0:(~(my[WIDTH-1] ^ n[3]) | pze[3]);
 
// assign e[0] = ~(my[WIDTH-1]^n[0]);
// assign e[1] = ~(my[WIDTH-1]^n[1]);
// assign e[2] = ~(my[WIDTH-1]^n[2]);
// assign e[3] = ~(my[WIDTH-1]^n[3]);

//Partial Products
assign fpp0 = {~e[0] , epp2d[0]};
assign fpp1 = {e[1] , epp2d[1]};
assign fpp2 = {e[2] , epp2d[2]};
assign fpp3 = {e[3] , epp2d[3]};
//assign fpp4 = {epp2d[4][7:0]};

//Correction vector
//wire [15:0]cv= {7'b0101011,1'b0,1'b0,n[3],1'b0,n[2],1'b0,n[1],1'b0,n[0]};
//wire [15:0]cv= {4'b0101,e[0],~e[0],3'b000,n[3],1'b0,n[2],1'b0,n[1],1'b0,n[0]};


wire [15:0] SUM;
wire [14:0] CARRY; 
wire INT_SUM[29:0];
wire INT_CARRY[28:0];
HALF_ADDER HA0(.a(fpp0[0]), .b(n[0]) , .sum(INT_SUM[0]), .cout(INT_CARRY[0]));
assign SUM[0]=INT_SUM[0];
assign CARRY[0]=INT_CARRY[0];

assign INT_SUM[1]=fpp0[1];
assign SUM[1]=INT_SUM[1];
assign CARRY[1]=1'b0;

FULL_ADDER FA0(.a(fpp0[2]), .b(fpp1[0]), .cin(n[1]), .sum(INT_SUM[2]), .cout(INT_CARRY[1]));
assign SUM[2]=INT_SUM[2];
assign CARRY[2]=INT_CARRY[1];

HALF_ADDER HA1(.a(fpp0[3]), .b(fpp1[1]) , .sum(INT_SUM[3]), .cout(INT_CARRY[2]));
assign SUM[3]=INT_SUM[3];
assign CARRY[3]=INT_CARRY[2];

FULL_ADDER FA1(.a(fpp0[4]), .b(fpp1[2]), .cin(fpp2[0]), .sum(INT_SUM[4]), .cout(INT_CARRY[4]));
HALF_ADDER HA2(.a(INT_SUM[4]), .b(n[2]) , .sum(INT_SUM[5]), .cout(INT_CARRY[3]));
assign SUM[4]=INT_SUM[5];
assign CARRY[4]=INT_CARRY[3];


FULL_ADDER FA2(.a(fpp0[5]), .b(fpp1[3]), .cin(fpp2[1]), .sum(INT_SUM[6]), .cout(INT_CARRY[6]));
HALF_ADDER HA3(.a(INT_SUM[6]), .b(INT_CARRY[4]) , .sum(INT_SUM[7]), .cout(INT_CARRY[5]));
assign SUM[5]=INT_SUM[7];
assign CARRY[5]=INT_CARRY[5];


FULL_ADDER FA3(.a(fpp0[6]), .b(fpp1[4]), .cin(fpp2[2]), .sum(INT_SUM[8]), .cout(INT_CARRY[9]));
HALF_ADDER HA4(.a(fpp3[0]), .b(n[3]) , .sum(INT_SUM[9]), .cout(INT_CARRY[8]));
FULL_ADDER FA4(.a(INT_SUM[8]), .b(INT_SUM[9]), .cin(INT_CARRY[6]), .sum(INT_SUM[10]), .cout(INT_CARRY[7]));
assign SUM[6]=INT_SUM[10];
assign CARRY[6]=INT_CARRY[7];

FULL_ADDER FA5(.a(fpp0[7]), .b(fpp1[5]), .cin(fpp2[3]), .sum(INT_SUM[11]), .cout(INT_CARRY[12]));
HALF_ADDER HA5(.a(fpp3[1]), .b(INT_CARRY[8]) , .sum(INT_SUM[12]), .cout(INT_CARRY[11]));
FULL_ADDER FA6(.a(INT_SUM[11]), .b(INT_SUM[12]), .cin(INT_CARRY[9]), .sum(INT_SUM[13]), .cout(INT_CARRY[10]));
assign SUM[7]=INT_SUM[13];
assign CARRY[7]=INT_CARRY[10];


FULL_ADDER FA7(.a(fpp0[8]), .b(fpp1[6]), .cin(fpp2[4]), .sum(INT_SUM[14]), .cout(INT_CARRY[15]));
HALF_ADDER HA6(.a(fpp3[2]), .b(INT_CARRY[11]) , .sum(INT_SUM[15]), .cout(INT_CARRY[14]));
FULL_ADDER FA8(.a(INT_SUM[14]), .b(INT_SUM[15]), .cin(INT_CARRY[12]), .sum(INT_SUM[16]), .cout(INT_CARRY[13]));
assign SUM[8]=INT_SUM[16];
assign CARRY[8]=INT_CARRY[13];

FULL_ADDER FA9(.a(fpp0[9]), .b(fpp1[7]), .cin(fpp2[5]), .sum(INT_SUM[17]), .cout(INT_CARRY[18]));
HALF_ADDER HA7(.a(fpp3[3]), .b(INT_CARRY[14]) , .sum(INT_SUM[18]), .cout(INT_CARRY[17]));
FULL_ADDER FA10(.a(INT_SUM[17]), .b(INT_SUM[18]), .cin(INT_CARRY[15]), .sum(INT_SUM[19]), .cout(INT_CARRY[16]));
assign SUM[9]=INT_SUM[19];
assign CARRY[9]=INT_CARRY[16];

FULL_ADDER FA11(.a(~e[0]), .b(fpp1[8]), .cin(fpp2[6]), .sum(INT_SUM[20]), .cout(INT_CARRY[21]));
HALF_ADDER HA8(.a(fpp3[4]), .b(INT_CARRY[17]) , .sum(INT_SUM[21]), .cout(INT_CARRY[20]));
FULL_ADDER FA12(.a(INT_SUM[20]), .b(INT_SUM[21]), .cin(INT_CARRY[18]), .sum(INT_SUM[22]), .cout(INT_CARRY[19]));
assign SUM[10]=INT_SUM[22];
assign CARRY[10]=INT_CARRY[19];


FULL_ADDER FA13(.a(e[0]), .b(fpp1[9]), .cin(fpp2[7]), .sum(INT_SUM[23]), .cout(INT_CARRY[24]));
HALF_ADDER HA9(.a(fpp3[5]), .b(INT_CARRY[20]) , .sum(INT_SUM[24]), .cout(INT_CARRY[23]));
FULL_ADDER FA14(.a(INT_SUM[23]), .b(INT_SUM[24]), .cin(INT_CARRY[21]), .sum(INT_SUM[25]), .cout(INT_CARRY[22]));
assign SUM[11]=INT_SUM[25];
assign CARRY[11]=INT_CARRY[22];


FULL_ADDER FA15(.a(1'b1), .b(fpp2[8]), .cin(fpp3[6]), .sum(INT_SUM[26]), .cout(INT_CARRY[26]));
FULL_ADDER FA16(.a(INT_SUM[26]), .b(INT_CARRY[23]), .cin(INT_CARRY[24]), .sum(INT_SUM[27]), .cout(INT_CARRY[25]));
assign SUM[12]=INT_SUM[27];
assign CARRY[12]=INT_CARRY[25];

FULL_ADDER FA17(.a(fpp2[9]), .b(fpp3[7]), .cin(INT_CARRY[26]), .sum(INT_SUM[28]), .cout(INT_CARRY[27]));
assign SUM[13]=INT_SUM[28];
assign CARRY[13]=INT_CARRY[27];

HALF_ADDER HA10(.a(1'b1), .b(fpp3[8]), .sum(INT_SUM[29]), .cout(INT_CARRY[28]));
assign SUM[14]  =INT_SUM[29];
assign CARRY[14]=INT_CARRY[28];

assign SUM[15]=fpp3[9];
assign carry={CARRY,1'b0};
assign sum=SUM;
//assign sum =st20; // [15:0] -- 16 bit
//assign carry=st21; // [13:0] -- 14bit
//assign product=sum+carry;
endmodule


/******************** Booth Encoder ********************/
module booth_encoder (x, single, double, neg, pzero,nzero);

input [2:0]x;

output single;

output  double;

output neg;
output pzero;
output nzero;

wire w0;

wire w1;

assign single = x[0] ^ x[1];

assign neg = x[2];

assign  w0 = ~(x[1] ^ x[2]);

assign  w1 = (x[0] ^ x[1]);

assign pzero = ~x[0] & ~x[1] & ~x[2];
assign nzero = x[0] & x[1] & x[2];
assign double =~(w0|w1);

endmodule

/******************** Booth Selector ********************/
module booth_selector (double, shifted, single, y, neg, p);

input double;

input shifted;

input single;

input y;

input neg;

output p;

assign  p = (neg ^ ((y & single) | (shifted & double)));

endmodule

/******************** 1bit Full Adder ********************/

module FULL_ADDER ( a, b, cin, sum, cout );

input  a;

input  b;

input  cin;

output sum;

output cout;

   wire TMP;

   assign TMP = a ^ b;

   assign sum = TMP ^ cin;

   assign cout =  ~ (( ~ (TMP & cin)) & ( ~ (a & b)));

endmodule
 
module HALF_ADDER ( a, b, sum, cout );

input  a;

input  b;

output sum;

output cout;

   assign sum = a ^ b;

   assign cout = a & b;

endmodule
