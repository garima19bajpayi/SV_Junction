module tb_d_flip_flop_sync_reset;

    logic D;
    logic clk;
    logic reset;
    logic Q;

    d_flip_flop_sync_reset uut (
        .D(D),
        .clk(clk),
        .reset(reset),
        .Q(Q)
    );

    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, tb_d_flip_flop_sync_reset);
        
        reset = 1;
        D = 0;
        #10;
        
        reset = 0;
        D = 1;
        #10;
        $display("D = %b, reset = %b, Q = %b", D, reset, Q);
        
        D = 0;
        #10;
        $display("D = %b, reset = %b, Q = %b", D, reset, Q);

        reset = 1;
        #10;
        $display("D = %b, reset = %b, Q = %b", D, reset, Q);

        reset = 0;
        D = 1;
        #10;
        $display("D = %b, reset = %b, Q = %b", D, reset, Q);

        $finish;
    end

endmodule

