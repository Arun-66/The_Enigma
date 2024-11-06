module ReRows(
input logic [7:0] w0,w1,w2,w3,x0,x1,x2,x3,y0,y1,y2,y3,z0,z1,z2,z3,
input logic s3,s4,
output logic [7:0] a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3
);

always @(s3 or s4)
	begin
	if(s3 == 0)
		begin
		if(s4 == 0) 
			begin
			d0 = z0;
			b0 = x0;
			a0 = y0;
			c0 = w0;
			
			d1 = z1;
			b1 = x1;
			a1 = y1;
			c1 = w1;
			
			d2 = z2;
			b2 = x2;
			a2 = y2;
			c2 = w2;
			
			d3 = z3;
			b3 = x3;
			a3 = y3;
			c3 = w3;
			end
		else if(s4 == 1) 
			begin
			a0 = w0;
			d0 = x0;
			c0 = y0;
			b0 = z0;
			
			a1 = w1;
			d1 = x1;
			c1 = y1;
			b1 = z1;
			
			a2 = w2;
			d2 = x2;
			c2 = y2;
			b2 = z2;
			
			a3 = w3;
			d3 = x3;
			c3 = y3;
			b3 = z3;
			end
		end
	else if (s3 == 1)
		begin
		if(s4 == 0)
			begin
			a0 = x0;
			b0 = w0;
			c0 = z0;
			d0 = y0;
			
			a1 = x1;
			b1 = w1;
			c1 = z1;
			d1 = y1;
			
			a2 = x2;
			b2 = w2;
			c2 = z2;
			d2 = y2;
			
			a3 = x3;
			b3 = w3;
			c3 = z3;
			d3 = y3;
			end
		else if(s4 == 1) 
			begin
			a0 = z0;
			b0 = y0;
			c0 = x0;
			d0 = w0;
			
			a1 = z1;
			b1 = y1;
			c1 = x1;
			d1 = w1;
			
			a2 = z2;
			b2 = y2;
			c2 = x2;
			d2 = w2;
			
			a3 = z3;
			b3 = y3;
			c3 = x3;
			d3 = w3;
			end
	end
end
endmodule