module tb_decoder38;

    logic [2:0] In;
    logic [7:0] Out;

    decoder38 uut (
        .In(In),
        .Out(Out)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, tb_decoder38);
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

