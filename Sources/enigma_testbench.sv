module enigma_testbench;


reg [7:0]A0,A1,A2,A3,A4,A5,A6,A7,A8,A9,A10,A11,A12,A13,A14,A15;
reg mode,S0,S1,S2,S3,S4,S5,S6,S7;
wire [7:0]D0,D1,D2,D3,D4,D5,D6,D7,D8,D9,D10,D11,D12,D13,D14,D15;


Enigma tb1(
.a0(A0),.a1(A1),.a2(A2),.a3(A3),
.b0(A4),.b1(A5),.b2(A6),.b3(A7),
.c0(A8),.c1(A9),.c2(A10),.c3(A11),
.d0(A12),.d1(A13),.d2(A14),.d3(A15),
.w0(D0),.w1(D1),.w2(D2),.w3(D3),
.x0(D4),.x1(D5),.x2(D6),.x3(D7),
.y0(D8),.y1(D9),.y2(D10),.y3(D11),
.z0(D12),.z1(D13),.z2(D14),.z3(D15),
.mode(mode),.s0(S0),.s1(S1),.s2(S2),.s3(S3),.s4(S4),.s5(S5),.s6(S6),.s7(S7)
);
initial 
begin
		//CRYPTOGRAPHICSYS
		A0  = 01000011;
		A1  = 01010010;
		A2  = 01011001;
		A3  = 01010000;
		A4  = 01010100;
		A5  = 01001111;
		A6  = 01000111;
		A7  = 01010010;
		A8  = 01000001;
		A9  = 01010000;
		A10 = 01001000;
		A11 = 01001001;
		A12 = 01000011;
		A13 = 01010011;
		A14 = 01011001;
		A15 = 01010011;
		mode = 0;
		S0 =  1;
		S1 =	1;
		S2 =	1;
		S3 =	1;
		S4 =	0;
		S5 =	0;
		S6 =	0;
		S7 =	0;
end
endmodule