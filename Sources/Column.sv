module Column(
input logic [7:0] a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3,
input logic s3,s4,
output logic [7:0]w0,w1,w2,w3,x0,x1,x2,x3,y0,y1,y2,y3,z0,z1,z2,z3
);

always @(s3 or s4)
	begin
	if(s3 == 0)
		begin
		if(s4 == 0) 
			begin
			w0 = a2;
			w1 = a1;
			w2 = a0;
			w3 = a3;
			
			x0 = b2;
			x1 = b1;
			x3 = b0;
			x2 = b3;
			
			y0 = c2;
			y1 = c1;
			y2 = c0;
			y3 = c3;
			
			z0 = d2;
			z1 = d1;
			z2 = d0;
			z3 = d3;
			end
		else if(s4 == 1) 
			begin
			w0 = a1;
			w1 = a0;
			w2 = a3;
			w3 = a2;
				
			x0 = b1;
			x1 = b0;
			x2 = b3;
			x3 = b2;
					
			y0 = c1;
			y1 = c0;
			y2 = c3;
			y3 = c2;
					
			z0 = d1;
			z1 = d0;
			z2 = d3;
			z3 = d2;
			end
		end
	else if (s3 == 1)
		begin
		if(s4 == 0)
			begin
			w0 = a0;
			w1 = a3;
			w2 = a2;
			w3 = a1;
				
			x0 = b0;
			x1 = b3;
			x2 = b2;
			x3 = b1;
				
			y0 = c0;
			y1 = c3;
			y2 = c2;
			y3 = c1;
					
			z0 = d0;
			z1 = d3;
			z2 = d2;
			z3 = d1;
			end
		else if(s4 == 1) 
			begin
			w0 = a2;
			w1 = a3;
			w2 = a0;
			w3 = a1;
				
			x0 = b2;
			x1 = b3;
			x2 = b0;
			x3 = b1;
				
			y0 = c2;
			y1 = c3;
			y2 = c0;
			y3 = c1;
				
			z0 = d2;
			z1 = d3;
			z2 = d0;
			z3 = d1;
			end
	end
end		
endmodule