module ASCIItobin(
  output logic [7:0] w
);

  wire [7:0] string0;

  initial begin
    string0 = "B";
    w = string0;
    $display("Binary representation of %c: %b", string0[0], w);
  end
  
  endmodule