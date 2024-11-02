module d_flip_flop_async_reset (
    input  logic D,
    input  logic clk,
    input  logic reset_n,
    output logic Q
);

    always_ff @(posedge clk or negedge reset_n) begin
        if (!reset_n)
            Q <= 0;
        else
            Q <= D;
    end

endmodule
