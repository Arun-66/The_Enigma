module mux(output y,input d0,d1,s);
assign y= (d0 & ~s)|(d1 & s);
endmodule

module barrelorg(a0,a1,a2,a3,k1,p0,p1,p2,p3);
input a0,a1,a2,a3,k1;
output p0,p1,p2,p3;

mux m0(p0,a0,a1,k1);
mux m1(p1,a1,a3,k1);
mux m2(p2,a2,a0,k1);
mux m3(p3,a3,a1,k1);


endmodule