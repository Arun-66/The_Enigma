module mux4(input logic in0,in1,in2,in3,
				input logic sel0,sel1,
				output logic out);

assign out = (in0&~sel0&~sel1) | 
				 (in1&sel0&~sel1)  |
				 (in2&~sel0&sel1)  |
				 (in3&sel0&sel1)   ;

endmodule