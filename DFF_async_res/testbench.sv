module tb_d_flip_flop_async_reset;

    logic D;
    logic clk;
    logic reset_n;
    logic Q;

    d_flip_flop_async_reset uut (
        .D(D),
        .clk(clk),
        .reset_n(reset_n),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
      $dumpfile("dump.vcd");
      $dumpvars(0, tb_d_flip_flop_async_reset);
        reset_n = 0;
        D = 0;
        #10;
        
        reset_n = 1;
        D = 1;
        #10;
        $display("D = %b, reset_n = %b, Q = %b", D, reset_n, Q);
        
        D = 0;
        #10;
        $display("D = %b, reset_n = %b, Q = %b", D, reset_n, Q);

        reset_n = 0;
        #10;
        $display("D = %b, reset_n = %b, Q = %b", D, reset_n, Q);

        reset_n = 1;
        D = 1;
        #10;
        $display("D = %b, reset_n = %b, Q = %b", D, reset_n, Q);

        $finish;
    end

endmodule
