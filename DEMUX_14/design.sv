module demux14 (
    input  logic In,
    input  logic [1:0] Sel,
    output logic [3:0] Out
);

    always_comb begin
        Out = 4'b0000;
        case (Sel)
            2'b00: Out[0] = In;
            2'b01: Out[1] = In;
            2'b10: Out[2] = In;
            2'b11: Out[3] = In;
        endcase
    end

endmodule

