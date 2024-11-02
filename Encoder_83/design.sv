module encoder83 (
    input  logic [7:0] In,
    output logic [2:0] Out
);

    always_comb begin
        case (In)
            8'b00000001: Out = 3'b000;
            8'b00000010: Out = 3'b001;
            8'b00000100: Out = 3'b010;
            8'b00001000: Out = 3'b011;
            8'b00010000: Out = 3'b100;
            8'b00100000: Out = 3'b101;
            8'b01000000: Out = 3'b110;
            8'b10000000: Out = 3'b111;
            default:     Out = 3'b000;
        endcase
    end

endmodule

