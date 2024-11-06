module Decryption(
input logic [7:0]a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3,
input logic s0,s1,s2,s3,s4,s5,s6,s7,
output logic [7:0]w0,w1,w2,w3,x0,x1,x2,x3,y0,y1,y2,y3,z0,z1,z2,z3
);
logic [7:0]l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15,l16;

ReRotate re1(a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3,s7,l1,l2,l3,l4,l5,l6,l7,l8,l9,l10,l11,l12,l13,l14,l15,l16);

logic [7:0]m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16;

ReRows rr1(a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3,s5,s6,m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16);

logic [7:0]n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16;

ReColumn rc1(m1,m2,m3,m4,m5,m6,m7,m8,m9,m10,m11,m12,m13,m14,m15,m16,s3,s4,n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12,n13,n14,n15,n16);

logic [7:0]o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16;

Rebarrel bar0(n1,s1,s2,o1);
Rebarrel bar1(n2,s1,s2,o2);
Rebarrel bar2(n3,s1,s2,o3);
Rebarrel bar3(n4,s1,s2,o4);
Rebarrel bar4(n5,s1,s2,o5);
Rebarrel bar5(n6,s1,s2,o6);
Rebarrel bar6(n7,s1,s2,o7);
Rebarrel bar7(n8,s1,s2,o8);
Rebarrel bar8(n9,s1,s2,o9);
Rebarrel bar9(n10,s1,s2,o10);
Rebarrel bar10(n11,s1,s2,o11);
Rebarrel bar11(n12,s1,s2,o12);
Rebarrel bar12(n13,s1,s2,o13);
Rebarrel bar13(n14,s1,s2,o14);
Rebarrel bar14(n15,s1,s2,o15);
Rebarrel bar15(n16,s1,s2,o16);

ReDataInv data0(o1,s0,w0);
ReDataInv data1(o2,s0,w1);
ReDataInv data2(o3,s0,w2);
ReDataInv data3(o4,s0,w3);
ReDataInv data4(o5,s0,x0);
ReDataInv data5(o6,s0,x1);
ReDataInv data6(o7,s0,x2);
ReDataInv data7(o8,s0,x3);
ReDataInv data8(o9,s0,y0);
ReDataInv data9(o10,s0,y1);
ReDataInv data10(o11,s0,y2);
ReDataInv data11(o12,s0,y3);
ReDataInv data12(o13,s0,z0);
ReDataInv data13(o14,s0,z1);
ReDataInv data14(o15,s0,z2);
ReDataInv data15(o16,s0,z3);

endmodule