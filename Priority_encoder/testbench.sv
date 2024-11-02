module tb_priority_encoder;

    logic [7:0] In;
    logic [2:0] Out;
    logic       Valid;

    priority_encoder uut (
        .In(In),
        .Out(Out),
        .Valid(Valid)
    );

    initial begin
        $dumpfile("dump.vcd");
      $dumpvars(0, tb_priority_encoder);
        In = 8'b00000001;
        #10;
        $display("In = %b : Out = %b : Valid = %b", In, Out, Valid);

        In = 8'b00000100;
        #10;
        $display("In = %b : Out = %b : Valid = %b", In, Out, Valid);

        In = 8'b00100000;
        #10;
        $display("In = %b : Out = %b : Valid = %b", In, Out, Valid);

        In = 8'b01000000;
        #10;
        $display("In = %b : Out = %b : Valid = %b", In, Out, Valid);

        In = 8'b10000000;
        #10;
        $display("In = %b : Out = %b : Valid = %b", In, Out, Valid);

        In = 8'b00000000;
        #10;
        $display("In = %b : Out = %b : Valid = %b", In, Out, Valid);

        $finish;
    end

endmodule

