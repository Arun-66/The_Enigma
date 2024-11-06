module crisscross(
input logic [7:0]a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3,
input logic s7,
output logic [7:0]w0,w1,w2,w3,x0,x1,x2,x3,y0,y1,y2,y3,z0,z1,z2,z3
);


always @(s7)
	begin
	if(s7 == 0)
		begin//rotate right
		w0 = d0;
		w1 = c0;
		w2 = b0;
		w3 = a0;
		
		x0 = d1;
		x1 = b1;
		x2 = b2;
		x3 = a1;
		
		y0 = d2;
		y1 = c1;
		y2 = c2;
		y3 = a2;
				
		z0 = d3;
		z1 = c3;
		z2 = b3;
		z3 = a3;
		end
	else if (s7 == 1)
		begin 
		w0 = a3;
		w1 = b3;
		w2 = c3;
		w3 = d3;
		
		x0 = a2;
		x1 = b1;
		x2 = b2;
		x3 = d1;
		
		y0 = a1;
		y1 = c1;
		y2 = c2;
		y3 = d1;
				
		z0 = a0;
		z1 = b0;
		z2 = c0;
		z3 = d0;
		end
end

endmodule