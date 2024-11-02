module decoder38 (
    input  logic [2:0] In,
    output logic [7:0] Out
);

    always_comb begin
        Out = 8'b00000000;
        case (In)
            3'b000: Out[0] = 1'b1;
            3'b001: Out[1] = 1'b1;
            3'b010: Out[2] = 1'b1;
            3'b011: Out[3] = 1'b1;
            3'b100: Out[4] = 1'b1;
            3'b101: Out[5] = 1'b1;
            3'b110: Out[6] = 1'b1;
            3'b111: Out[7] = 1'b1;
        endcase
    end

endmodule

