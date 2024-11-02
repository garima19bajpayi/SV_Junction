module tb_decoderNto2N;

    parameter N = 3;
    parameter OUT_WIDTH = 2**N;

    logic [N-1:0] In;
    logic [OUT_WIDTH-1:0] Out;

    decoderNto2N #(N) uut (
        .In(In),
        .Out(Out)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, tb_decoderNto2N);
        In = 3'b000;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 3'b001;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 3'b010;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 3'b011;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 3'b100;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 3'b101;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 3'b110;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 3'b111;
        #10;
        $display("In = %b : Out = %b", In, Out);

        $finish;
    end

endmodule

