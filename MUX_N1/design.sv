module muxN1 #(parameter N = 8, parameter SEL_WIDTH = $clog2(N)) (
    input  logic [N-1:0] D,
    input  logic [SEL_WIDTH-1:0] Sel,
    output logic Out
);

    assign Out = D[Sel];

endmodule


