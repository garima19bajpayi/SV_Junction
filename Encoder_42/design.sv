module encoder42 (
    input  logic [3:0] In,
    output logic [1:0] Out
);

    always_comb begin
        case (In)
            4'b0001: Out = 2'b00;
            4'b0010: Out = 2'b01;
            4'b0100: Out = 2'b10;
            4'b1000: Out = 2'b11;
            default: Out = 2'b00;
        endcase
    end

endmodule

