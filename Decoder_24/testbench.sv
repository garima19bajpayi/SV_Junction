module tb_decoder24;

    logic [1:0] In;
    logic [3:0] Out;

    decoder24 uut (
        .In(In),
        .Out(Out)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, tb_decoder24);
        In = 2'b00;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 2'b01;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 2'b10;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 2'b11;
        #10;
        $display("In = %b : Out = %b", In, Out);

        $finish;
    end

endmodule

