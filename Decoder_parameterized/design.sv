module decoderNto2N #(parameter N = 3) (
    input  logic [N-1:0] In,
    output logic [2**N-1:0] Out
);

    always_comb begin
        Out = '0;
        Out[In] = 1'b1;
    end

endmodule

