module mux41 (
    input  logic [3:0] D,
    input  logic [1:0] Sel,
    output logic       Out
);

    assign Out = D[Sel];

endmodule

