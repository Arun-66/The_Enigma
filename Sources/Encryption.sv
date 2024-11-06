module Encryption(
input logic [7:0]a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3,
input logic s0,s1,s2,s3,s4,s5,s6,s7,
output logic [7:0]w0,w1,w2,w3,x0,x1,x2,x3,y0,y1,y2,y3,z0,z1,z2,z3
);
logic [7:0]l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15,l16;

DataInv data0(a0,s0,l1);
DataInv data1(a1,s0,l2);
DataInv data2(a2,s0,l3);
DataInv data3(a3,s0,l4);
DataInv data4(b0,s0,l5);
DataInv data5(b1,s0,l6);
DataInv data6(b2,s0,l7);
DataInv data7(b3,s0,l8);
DataInv data8(c0,s0,l9);
DataInv data9(c1,s0,l10);
DataInv data10(c2,s0,l11);
DataInv data11(c3,s0,l12);
DataInv data12(d0,s0,l13);
DataInv data13(d1,s0,l14);
DataInv data14(d2,s0,l15);
DataInv data15(d3,s0,l16);

logic [7:0]m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16;

barrel bar0(l1,s1,s2,m1);
barrel bar1(l2,s1,s2,m2);
barrel bar2(l3,s1,s2,m3);
barrel bar3(l4,s1,s2,m4);
barrel bar4(l5,s1,s2,m5);
barrel bar5(l6,s1,s2,m6);
barrel bar6(l7,s1,s2,m7);
barrel bar7(l8,s1,s2,m8);
barrel bar8(l9,s1,s2,m9);
barrel bar9(l10,s1,s2,m10);
barrel bar10(l11,s1,s2,m11);
barrel bar11(l12,s1,s2,m12);
barrel bar12(l13,s1,s2,m13);
barrel bar13(l14,s1,s2,m14);
barrel bar14(l15,s1,s2,m15);
barrel bar15(l16,s1,s2,m16);

logic [7:0]n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16;

Column col1(m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,s3,s4,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16);

logic [7:0]o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16;

Rows r1(n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16,s5,s6,o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16);

Rotate rr1(o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,s7,w0,w1,w2,w3,x0,x1,x2,x3,y0,y1,y2,y3,z0,z1,z2,z3);

endmodule