module Enigma(input logic [7:0]a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3,
input logic s0,s1,s2,s3,s4,s5,s6,s7,
output logic [7:0]w0,w1,w2,w3,x0,x1,x2,x3,y0,y1,y2,y3,z0,z1,z2,z3,
input logic mode
);
logic [7:0]n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15;
logic [7:0]m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15;

Encryption En1(a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3,s0,s1,s2,s3,s4,s5,s6,s7,n0,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15);

Decryption De1(a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3,s0,s1,s2,s3,s4,s5,s6,s7,m0,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15);

always @(mode)
begin
if (mode ==0)
	begin
	w0 = n0;w1 = n1;w2 = n2;w3 = n3;
	x0 = n4;x1 = n5;x2 = n6;x3 = n7;
	y0 = n8;y1 = n9;y2 = n10;y3 = n11;
	z0 = n12;z1 = n13;z2 = n14;z3 = n15;
	end
else if(mode ==1)
	begin
	w0 = m0;w1 = m1;w2 = m2;w3 = m3;
	x0 = m4;x1 = m5;x2 = m6;x3 = m7;
	y0 = m8;y1 = m9;y2 = m10;y3 = m11;
	z0 = m12;z1 = m13;z2 = m14;z3 = m15;	
	end
end
endmodule