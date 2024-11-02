module ripple_carry_adder_32bit (
    input  logic [31:0] A, B,
    input  logic        Cin,
    output logic [31:0] Sum,
    output logic        Cout
);

    logic [32:0] carry;

    assign carry[0] = Cin;

    genvar i;
    generate
        for (i = 0; i < 32; i++) begin
            full_adder fa (
                .A(A[i]),
                .B(B[i]),
                .Cin(carry[i]),
                .Sum(Sum[i]),
                .Cout(carry[i+1])
            );
        end
    endgenerate

    assign Cout = carry[32];

endmodule

module full_adder (
    input  logic A, B, Cin,
    output logic Sum, Cout
);

    assign Sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (B & Cin) | (Cin & A);

endmodule


