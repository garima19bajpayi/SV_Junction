module decoder24 (
    input  logic [1:0] In,
    output logic [3:0] Out
);

    always_comb begin
        Out = 4'b0000;
        case (In)
            2'b00: Out[0] = 1'b1;
            2'b01: Out[1] = 1'b1;
            2'b10: Out[2] = 1'b1;
            2'b11: Out[3] = 1'b1;
        endcase
    end

endmodule

