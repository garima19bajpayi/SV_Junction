module half_subtractor (
    input  logic A, B,
    output logic Difference, Borrow
);

    assign Difference = A ^ B;
    assign Borrow = ~A & B;

endmodule

