module tb_encoder42;

    logic [3:0] In;
    logic [1:0] Out;

    encoder42 uut (
        .In(In),
        .Out(Out)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, tb_encoder42);
        In = 4'b0001;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 4'b0010;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 4'b0100;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 4'b1000;
        #10;
        $display("In = %b : Out = %b", In, Out);

        $finish;
    end

endmodule

