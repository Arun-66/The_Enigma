module Subtractor(
input [7:0]a,
output [7:0]w
); 

reg [7:0] n0;
reg[8:0] n1;
reg [7:0] cout;

assign n0 = ~a;
HalfAdder ha1(1,n0[0],n1[0],cout[0]);
HalfAdder ha2(cout[0],n0[1],n1[1],cout[1]);
HalfAdder ha3(cout[1],n0[2],n1[2],cout[2]);
HalfAdder ha4(cout[2],n0[3],n1[3],cout[3]);
HalfAdder ha5(cout[3],n0[4],n1[4],cout[4]);
HalfAdder ha6(cout[4],n0[5],n1[5],cout[5]);
HalfAdder ha7(cout[5],n0[6],n1[6],cout[6]);
HalfAdder ha8(cout[6],n0[7],n1[7],cout[7]);
assign w = ~n1;

endmodule