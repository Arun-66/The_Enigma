module ReColumn (
input logic [7:0]w0,w1,w2,w3,x0,x1,x2,x3,y0,y1,y2,y3,z0,z1,z2,z3,
input logic s3,s4,
output logic [7:0]a0,a1,a2,a3,b0,b1,b2,b3,c0,c1,c2,c3,d0,d1,d2,d3
);

always @(s3 or s4)
begin
    if (s3 == 0)
    begin
        if (s4 == 0) 
        begin
            a0 = w2;
            a1 = w1;
            a2 = w0;
            a3 = w3;

            b0 = x2;
            b1 = x1;
            b3 = x0;
            b2 = x3;

            c0 = y2;
            c1 = y1;
            c2 = y0;
            c3 = y3;

            d0 = z2;
            d1 = z1;
            d2 = z0;
            d3 = z3;
        end
        else if (s4 == 1) 
        begin
            a0 = w1;
            a1 = w0;
            a3 = w2;
            a2 = w3;

            b0 = x1;
            b1 = x0;
            b2 = x3;
            b3 = x2;

            c0 = y1;
            c1 = y0;
            c2 = y3;
            c3 = y2;

            d0 = z1;
            d1 = z0;
            d2 = z3;
            d3 = z2;
        end
    end
    else if (s3 == 1)
    begin
        if (s4 == 0)
        begin
            a0 = w0;
            a1 = w3;
            a2 = w2;
            a3 = w1;

            b0 = x0;
            b1 = x3;
            b2 = x2;
            b3 = x1;

            c0 = y0;
            c1 = y3;
            c2 = y2;
            c3 = y1;

            d0 = z0;
            d1 = z3;
            d2 = z2;
            d3 = z1;
        end
        else if (s4 == 1) 
        begin
            a0 = w2;
            a1 = w3;
            a2 = w0;
            a3 = w1;

            b0 = x2;
            b1 = x3;
            b2 = x0;
            b3 = x1;

            c0 = y2;
            c1 = y3;
            c2 = y0;
            c3 = y1;

            d0 = z2;
            d1 = z3;
            d2 = z0;
            d3 = z1;
        end
    end
end
endmodule
