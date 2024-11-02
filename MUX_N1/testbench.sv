module tb_muxN1;

    parameter N = 8;
    parameter SEL_WIDTH = $clog2(N);

    logic [N-1:0] D;
    logic [SEL_WIDTH-1:0] Sel;
    logic Out;

    muxNto1 #(N, SEL_WIDTH) uut (
        .D(D),
        .Sel(Sel),
        .Out(Out)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0,tb_muxN1);
        D = 8'b00000001; Sel = 3'b000;
        #10;
        $display("D = %b, Sel = %b : Out = %b", D, Sel, Out);

        D = 8'b00000100; Sel = 3'b010;
        #10;
        $display("D = %b, Sel = %b : Out = %b", D, Sel, Out);

        D = 8'b00100000; Sel = 3'b101;
        #10;
        $display("D = %b, Sel = %b : Out = %b", D, Sel, Out);

        D = 8'b10000000; Sel = 3'b111;
        #10;
        $display("D = %b, Sel = %b : Out = %b", D, Sel, Out);

        $finish;
    end

endmodule
