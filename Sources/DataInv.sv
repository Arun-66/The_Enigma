module DataInv(
    input logic [7:0] a,
    input logic s0,
    output logic [7:0] w
);

    logic [7:0] out;
    Subtractor s1(a, out);

    always @(s0)
    begin
        if (s0 == 0)
        begin
            w <= ~a;
        end
        else if (s0 == 1)
        begin
            w <= out;
        end
    end

endmodule
