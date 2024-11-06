module mux2(input logic [7:0]in0,in1,
input logic sel, 
output logic [7:0] out);

assign out = (in0&~sel) | (in1&sel);

endmodule
