module Rebarrel(
  input logic [0:7] a,
  input logic s1, s2,
  output logic [0:7] d
);

  mux4(a[2], a[6], a[2], a[4], s1, s2, d[0]);
  mux4(a[3], a[7], a[3], a[5], s1, s2, d[1]);
  mux4(a[4], a[0], a[0], a[6], s1, s2, d[2]);
  mux4(a[5], a[1], a[1], a[7], s1, s2, d[3]);
  mux4(a[6], a[2], a[6], a[0], s1, s2, d[4]);
  mux4(a[7], a[3], a[7], a[1], s1, s2, d[5]);
  mux4(a[0], a[4], a[4], a[2], s1, s2, d[6]);
  mux4(a[1], a[5], a[5], a[3], s1, s2, d[7]);

endmodule
