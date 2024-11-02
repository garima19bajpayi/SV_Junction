module sr_latch (
    input  logic S,
    input  logic R,
    output logic Q,
    output logic Qn
);

    always_comb begin
        if (S == 1 && R == 0) begin
            Q = 1;
            Qn = 0;
        end else if (S == 0 && R == 1) begin
            Q = 0;
            Qn = 1;
        end else if (S == 0 && R == 0) begin
            // No change
        end else begin
            Q = 1'bx;
            Qn = 1'bx;
        end
    end

endmodule

