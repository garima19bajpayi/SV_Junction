module tb_encoder83;

    logic [7:0] In;
    logic [2:0] Out;

    encoder83 uut (
        .In(In),
        .Out(Out)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, tb_encoder83);
        In = 8'b00000001;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 8'b00000010;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 8'b00000100;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 8'b00001000;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 8'b00010000;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 8'b00100000;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 8'b01000000;
        #10;
        $display("In = %b : Out = %b", In, Out);

        In = 8'b10000000;
        #10;
        $display("In = %b : Out = %b", In, Out);

        $finish;
    end

endmodule
