module d_flip_flop_sync_reset (
    input  logic D,
    input  logic clk,
    input  logic reset,
    output logic Q
);

    always_ff @(posedge clk) begin
        if (reset)
            Q <= 0;
        else
            Q <= D;
    end

endmodule

