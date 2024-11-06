module Incrementor(
input [7:0]a,
output [7:0]w
); 

reg[8:0] n1;
reg [7:0] cout;

HalfAdder ha1(1,a[0],n1[0],cout[0]);
HalfAdder ha2(cout[0],a[1],n1[1],cout[1]);
HalfAdder ha3(cout[1],a[2],n1[2],cout[2]);
HalfAdder ha4(cout[2],a[3],n1[3],cout[3]);
HalfAdder ha5(cout[3],a[4],n1[4],cout[4]);
HalfAdder ha6(cout[4],a[5],n1[5],cout[5]);
HalfAdder ha7(cout[5],a[6],n1[6],cout[6]);
HalfAdder ha8(cout[6],a[7],n1[7],cout[7]);

assign w =n1;
endmodule